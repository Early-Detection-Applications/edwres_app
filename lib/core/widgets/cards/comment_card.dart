// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/blocs/komentar/komentar_bloc.dart';
import 'package:edwres_app/core/config/config.dart';
import 'package:edwres_app/models/komentar/komentar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CommentCard extends StatefulWidget {
  final String? idBerita;

  const CommentCard({super.key, required this.idBerita});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  final TextEditingController _commentController = TextEditingController();

  int _currentPage = 1;

  static const int _itemsPerPage = 5;

  @override
  void initState() {
    super.initState();

    context.read<KomentarBloc>().add(
      KomentarEvent.fetch(idBerita: int.parse(widget.idBerita!)),
    );
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  // ============================================================
  // PAGINATION
  // ============================================================

  List<KomentarModel> _getPaginatedComments(List<KomentarModel> comments) {
    if (comments.isEmpty) {
      return [];
    }

    final startIndex = (_currentPage - 1) * _itemsPerPage;

    if (startIndex >= comments.length) {
      return [];
    }

    final endIndex = (startIndex + _itemsPerPage).clamp(0, comments.length);

    return comments.sublist(startIndex, endIndex);
  }

  int _getTotalPages(List<KomentarModel> comments) {
    if (comments.isEmpty) {
      return 1;
    }

    return (comments.length / _itemsPerPage).ceil();
  }

  void _changePage(int page, int totalPages) {
    if (page < 1 || page > totalPages) {
      return;
    }

    setState(() {
      _currentPage = page;
    });
  }

  // ============================================================
  // ADD COMMENT
  // ============================================================

  void _submitComment() {
    final comment = _commentController.text.trim();

    if (comment.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Komentar tidak boleh kosong')),
      );

      return;
    }

    if (SessionManager.idUser == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('User tidak ditemukan. Silahkan login kembali.'),
        ),
      );

      return;
    }

    final idUser = int.tryParse(SessionManager.idUser!);

    if (idUser == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('ID user tidak valid.')));

      return;
    }

    context.read<KomentarBloc>().add(
      KomentarEvent.add(
        idBerita: int.parse(widget.idBerita!),
        idUser: idUser,
        komentar: comment,
      ),
    );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: SessionManager.isLogin,
      builder: (context, isLogin, child) {
        return BlocListener<KomentarBloc, KomentarState>(
          listenWhen: (previous, current) =>
              previous.addStatus != current.addStatus,
          listener: (context, state) {
            if (state.addStatus == KomentarAddStatus.success) {
              _commentController.clear();

              setState(() {
                _currentPage = 1;
              });

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Komentar berhasil ditambahkan.')),
              );
            }

            if (state.addStatus == KomentarAddStatus.error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.addError.isNotEmpty
                        ? state.addError
                        : 'Gagal menambahkan komentar.',
                  ),
                ),
              );
            }
          },
          child: BlocBuilder<KomentarBloc, KomentarState>(
            builder: (context, state) {
              final comments = state.data;

              final totalPages = _getTotalPages(comments);

              if (_currentPage > totalPages) {
                _currentPage = totalPages;
              }

              final paginatedComments = _getPaginatedComments(comments);

              return Card(
                color: AppColor.primary400,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // ==================================================
                      // HEADER
                      // ==================================================
                      Row(
                        children: [
                          Icon(Icons.chat, color: AppColor.secondary, size: 20),
                          const SizedBox(width: 8.0),
                          Text('Komentar', style: AppTextStyle.titleLg),
                          const SizedBox(width: 8.0),
                          Text(
                            '(${comments.length})',
                            style: AppTextStyle.titleLg.copyWith(
                              color: AppColor.secondary,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24.0),

                      // ==================================================
                      // LOADING
                      // ==================================================
                      if (state.listStatus == KomentarListStatus.loading &&
                          comments.isEmpty)
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 32),
                          child: CircularProgressIndicator(),
                        )
                      // ==================================================
                      // ERROR
                      // ==================================================
                      else if (state.listStatus == KomentarListStatus.error &&
                          comments.isEmpty)
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.border),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            state.error.isNotEmpty
                                ? state.error
                                : 'Gagal memuat komentar.',
                            style: const TextStyle(color: Colors.redAccent),
                            textAlign: TextAlign.center,
                          ),
                        )
                      // ==================================================
                      // EMPTY
                      // ==================================================
                      else if (comments.isEmpty)
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.border),
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.primary400,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 24,
                              horizontal: 8,
                            ),
                            child: Text(
                              'Belum ada komentar. Jadilah yang pertama memberikan pendapat!',
                              style: const TextStyle(
                                color: Colors.blueGrey,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      // ==================================================
                      // COMMENTS
                      // ==================================================
                      else
                        Column(
                          children: [
                            ...paginatedComments.map(_buildCommentItem),

                            if (totalPages > 1) ...[
                              const SizedBox(height: 8),
                              _buildPagination(totalPages),
                            ],
                          ],
                        ),

                      // ==================================================
                      // FORM LOGIN
                      // ==================================================
                      if (isLogin) ...[
                        Divider(color: Colors.white.withOpacity(.1)),

                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.border),
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.primary400,
                          ),
                          child: TextField(
                            controller: _commentController,
                            minLines: 4,
                            maxLines: 6,
                            style: TextStyle(color: AppColor.white),
                            decoration: const InputDecoration(
                              hintText: 'Tulis komentar...',
                              hintStyle: TextStyle(color: Colors.blueGrey),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16),
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        BlocBuilder<KomentarBloc, KomentarState>(
                          buildWhen: (previous, current) =>
                              previous.addStatus != current.addStatus,
                          builder: (context, state) {
                            final isSubmitting =
                                state.addStatus == KomentarAddStatus.loading;

                            return Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton.icon(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    AppColor.secondary,
                                  ),
                                  shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                onPressed: isSubmitting ? null : _submitComment,
                                icon: isSubmitting
                                    ? const SizedBox(
                                        width: 18,
                                        height: 18,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          color: Colors.white,
                                        ),
                                      )
                                    : const Icon(
                                        Icons.send,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                label: Text(
                                  isSubmitting
                                      ? 'Mengirim...'
                                      : 'Kirim Komentar',
                                  style: AppTextStyle.titleSm,
                                ),
                              ),
                            );
                          },
                        ),
                      ]
                      // ==================================================
                      // BELUM LOGIN
                      // ==================================================
                      else ...[
                        const SizedBox(height: 24),

                        Divider(color: Colors.white.withOpacity(.1)),

                        const SizedBox(height: 16),

                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColor.secondary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ingin ikut berdiskusi? Silahkan login terlebih dahulu',
                                  style: TextStyle(color: AppColor.white),
                                ),

                                const SizedBox(height: 8),

                                Center(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                        AppColor.secondary,
                                      ),
                                      shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      GoRouter.of(context).go(AppRoutes.login);
                                    },
                                    child: Text(
                                      'Login Sekarang',
                                      style: AppTextStyle.titleSm,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  // ============================================================
  // COMMENT ITEM
  // ============================================================

  Widget _buildCommentItem(KomentarModel comment) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColor.primary400,
        border: Border.all(color: AppColor.border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: AppColor.secondary.withOpacity(.15),
                child: Icon(Icons.person, size: 20, color: AppColor.secondary),
              ),

              const SizedBox(width: 10),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comment.namaLengkap ?? 'Unknown',
                      style: AppTextStyle.titleSm.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    if (comment.tglKomentar != null) ...[
                      const SizedBox(height: 2),

                      Text(
                        comment.tglKomentar!,
                        style: AppTextStyle.bodySm.copyWith(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Text(
            comment.komentar ?? '',
            style: AppTextStyle.bodyMd.copyWith(color: AppColor.white),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // PAGINATION
  // ============================================================

  Widget _buildPagination(int totalPages) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: _currentPage > 1
              ? () {
                  _changePage(_currentPage - 1, totalPages);
                }
              : null,
          icon: const Icon(Icons.chevron_left),
          color: AppColor.secondary,
          disabledColor: Colors.grey,
        ),

        ...List.generate(totalPages, (index) {
          final page = index + 1;
          final isActive = page == _currentPage;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: InkWell(
              onTap: () {
                _changePage(page, totalPages);
              },
              borderRadius: BorderRadius.circular(6),
              child: Container(
                width: 34,
                height: 34,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isActive ? AppColor.secondary : Colors.transparent,
                  border: Border.all(
                    color: isActive ? AppColor.secondary : AppColor.border,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '$page',
                  style: TextStyle(
                    color: isActive ? Colors.white : AppColor.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        }),

        IconButton(
          onPressed: _currentPage < totalPages
              ? () {
                  _changePage(_currentPage + 1, totalPages);
                }
              : null,
          icon: const Icon(Icons.chevron_right),
          color: AppColor.secondary,
          disabledColor: Colors.grey,
        ),
      ],
    );
  }
}
