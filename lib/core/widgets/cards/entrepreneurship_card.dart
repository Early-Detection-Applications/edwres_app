import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/models/entrepreneurship/entrepreneurship_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EntrepreneurshipCard extends StatelessWidget {
  final EntrepreneurshipModel item;

  const EntrepreneurshipCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final imageUrl = item.image == null || item.image!.trim().isEmpty
        ? null
        : '${dotenv.get('IMAGE_URL')}/sliders/${item.image}';

    return SizedBox(
      height: 340,
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: AppColor.primaryBold,
                child: imageUrl != null
                    ? Image.network(
                        imageUrl,
                        width: double.infinity,
                        fit: BoxFit.cover,

                        // Membantu mengurangi penggunaan memory
                        // ketika gambar dari server berukuran besar.
                        cacheWidth:
                            (MediaQuery.sizeOf(context).width *
                                    MediaQuery.devicePixelRatioOf(context))
                                .round(),

                        gaplessPlayback: true,

                        loadingBuilder: (context, child, progress) {
                          if (progress == null) {
                            return child;
                          }

                          return const Center(
                            child: CircularProgressIndicator(
                              color: AppColor.secondary,
                              strokeWidth: 2.5,
                            ),
                          );
                        },

                        errorBuilder: (_, __, ___) {
                          return const Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              color: AppColor.gray,
                              size: 32,
                            ),
                          );
                        },
                      )
                    : const Center(
                        child: Icon(
                          Icons.image_not_supported_outlined,
                          color: AppColor.gray,
                          size: 32,
                        ),
                      ),
              ),
            ),

            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                color: AppColor.primary400,
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title ?? '-',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.titleMd,
                    ),

                    const SizedBox(height: 8),

                    InkWell(
                      onTap: item.link == null || item.link!.isEmpty
                          ? null
                          : () => OpenNews.openUrl(context, item.link),
                      child: Text(
                        'Baca Selengkapnya',
                        style: TextStyle(
                          color: item.link == null || item.link!.isEmpty
                              ? AppColor.gray
                              : AppColor.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
