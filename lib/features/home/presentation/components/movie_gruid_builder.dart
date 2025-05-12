import 'package:cinefinder/core/common/constants/style_constants.dart';
import 'package:cinefinder/features/home/domain/movie_model.dart';
import 'package:cinefinder/features/home/presentation/components/movie_tile.dart';
import 'package:flutter/widgets.dart';

class MoviesGridBuilder extends StatelessWidget {
  const MoviesGridBuilder({super.key, required this.data});
  final SearchResponse data;

  @override
  Widget build(BuildContext context) {
    final movies = data.movies ?? [];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.medium),
      child: GridView.builder(
        shrinkWrap: true,
        physics:
            const NeverScrollableScrollPhysics(), // Use if inside scrollable parent
        itemCount: movies.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 180 / 300,
          crossAxisSpacing: Spacing.medium,
          mainAxisSpacing: Spacing.medium,
        ),
        itemBuilder: (context, index) {
          return MovieGridItem(movie: movies[index]);
        },
      ),
    );
  }
}
