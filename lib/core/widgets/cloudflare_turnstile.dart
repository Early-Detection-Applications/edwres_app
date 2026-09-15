import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class CloudflareTurnstile extends StatefulWidget {
  final String siteKey;
  final ValueChanged<String> onToken;
  final VoidCallback? onExpired;
  final VoidCallback? onError;

  const CloudflareTurnstile({
    super.key,
    required this.siteKey,
    required this.onToken,
    this.onExpired,
    this.onError,
  });

  @override
  State<CloudflareTurnstile> createState() => _CloudflareTurnstileState();
}

class _CloudflareTurnstileState extends State<CloudflareTurnstile> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    final baseUrl = dotenv.get('BASE_URL');
    final turnstileUrl = Uri.parse('$baseUrl/turnstile');

    debugPrint('========================================');
    debugPrint('Cloudflare Turnstile');
    debugPrint('Site Key : ${widget.siteKey}');
    debugPrint('Base URL : $baseUrl');
    debugPrint('URL      : $turnstileUrl');
    debugPrint('========================================');

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      // User-Agent jangan diubah-ubah selama session.
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            debugPrint('Turnstile WebView started: $url');
          },

          onPageFinished: (url) {
            debugPrint('Turnstile WebView finished: $url');
          },

          onWebResourceError: (error) {
            debugPrint(
              'Turnstile WebView ERROR:\n'
              '  code        = ${error.errorCode}\n'
              '  description = ${error.description}\n'
              '  type        = ${error.errorType}\n'
              '  url         = ${error.url}\n'
              '  mainFrame   = ${error.isForMainFrame}',
            );

            // Jangan langsung anggap semua resource error
            // sebagai Turnstile gagal.
            //
            // Yang paling penting adalah error pada main frame
            // atau resource Cloudflare.
            final url = error.url ?? '';

            final isCloudflareError =
                url.contains('cloudflare.com') ||
                url.contains('challenges.cloudflare.com');

            if (error.isForMainFrame == true || isCloudflareError) {
              debugPrint('Turnstile important WebView error');
            }
          },
        ),
      )
      ..setOnConsoleMessage((message) {
        debugPrint('Turnstile JS: ${message.message}');
      })
      ..addJavaScriptChannel(
        'Turnstile',
        onMessageReceived: (message) {
          debugPrint('Turnstile message: ${message.message}');

          try {
            final dynamic decoded = jsonDecode(message.message);

            if (decoded is! Map) {
              debugPrint('Turnstile message bukan object JSON');
              return;
            }

            final type = decoded['type'];

            switch (type) {
              // ======================================================
              // SUCCESS
              // ======================================================
              case 'success':
                final token = decoded['token'];

                if (token is String && token.isNotEmpty) {
                  debugPrint('Turnstile token received');

                  if (mounted) {
                    widget.onToken(token);
                  }
                } else {
                  debugPrint('Turnstile success tetapi token kosong');

                  if (mounted) {
                    widget.onError?.call();
                  }
                }

                break;

              // ======================================================
              // EXPIRED
              // ======================================================
              case 'expired':
                debugPrint('Turnstile token expired');

                if (mounted) {
                  widget.onExpired?.call();
                }

                break;

              // ======================================================
              // TIMEOUT
              // ======================================================
              case 'timeout':
                debugPrint('Turnstile challenge timeout');

                if (mounted) {
                  widget.onError?.call();
                }

                break;

              // ======================================================
              // UNSUPPORTED
              // ======================================================
              case 'unsupported':
                debugPrint('Turnstile unsupported');

                if (mounted) {
                  widget.onError?.call();
                }

                break;

              // ======================================================
              // ERROR
              // ======================================================
              case 'error':
                final errorCode = decoded['error'];

                debugPrint('Turnstile error: $errorCode');

                if (mounted) {
                  widget.onError?.call();
                }

                break;

              default:
                debugPrint('Turnstile unknown message type: $type');
            }
          } catch (e) {
            debugPrint('Turnstile message parse error: $e');

            if (mounted) {
              widget.onError?.call();
            }
          }
        },
      );

    // ================================================================
    // ANDROID WEBVIEW CONFIGURATION
    // ================================================================

    if (_controller.platform is AndroidWebViewController) {
      final androidController =
          _controller.platform as AndroidWebViewController;

      AndroidWebViewController.enableDebugging(true);

      debugPrint('Android WebView Turnstile configured');
    }

    _controller.loadRequest(turnstileUrl);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: WebViewWidget(controller: _controller),
    );
  }
}
