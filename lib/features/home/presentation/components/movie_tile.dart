import 'package:auto_route/auto_route.dart';
import 'package:cinefinder/core/common/constants/style_constants.dart';
import 'package:cinefinder/core/common/image_url.dart';
import 'package:cinefinder/core/router/router.dart';
import 'package:cinefinder/core/theme/app_theme.dart';
import 'package:cinefinder/core/widgets/text/txt.dart';
import 'package:cinefinder/features/home/domain/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieGridItem extends StatelessWidget {
  final MovieModel? movie;

  const MovieGridItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(MovieDetailsRoute(movieID: movie?.id ?? 0));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: RoundedCorner.medium,
              child: Image.network(
                movie?.posterPath?.w500 ?? PlaceHolderImage.w100,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value:
                          progress.expectedTotalBytes != null
                              ? progress.cumulativeBytesLoaded /
                                  progress.expectedTotalBytes!
                              : null,
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Txt(
                  movie?.title ?? '-',
                  overflow: TextOverflow.ellipsis,
                  style: TxtStyle.headerXSSemiBold,
                ),
                const SizedBox(height: 4),
                Txt(
                  'Release: ${movie?.releaseDate ?? '-'}',
                  color: context.theme.appColors.fontSecondary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
