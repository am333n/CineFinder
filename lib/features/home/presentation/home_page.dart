import 'package:auto_route/auto_route.dart';
import 'package:cinefinder/core/common/constants/style_constants.dart';
import 'package:cinefinder/core/common/image_url.dart';
import 'package:cinefinder/core/theme/app_theme.dart';
import 'package:cinefinder/core/widgets/text/txt.dart';
import 'package:cinefinder/features/home/application/bloc/home_bloc.dart';
import 'package:cinefinder/features/home/domain/movie_model.dart';
import 'package:cinefinder/features/home/presentation/components/custom_search_bar.dart';
import 'package:cinefinder/features/home/presentation/components/movie_gruid_builder.dart';
import 'package:cinefinder/features/home/presentation/components/page_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(title: Txt('CineFinder', style: TxtStyle.headerMBold)),
          SliverToBoxAdapter(
            child: Padding(
              padding: Spacing.all,
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return CustomSearchBar(
                    query: state.movieQuery,
                    onChanged: (query) {
                      context.read<HomeBloc>().add(
                        HomeEvent.searchMovie(query: query),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          _buildMoviesSection(),
        ],
      ),
    );
  }

  BlocBuilder<HomeBloc, HomeState> _buildMoviesSection() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.moviesStatus.when(
          initial:
              () => _sliverPlaceholderText(
                'Looking for something to watch?\nSearch a movie name!',
              ),
          loading:
              () => const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              ),
          loaded: (data) {
            if (data.movies?.isEmpty ?? true) {
              return _sliverPlaceholderText('Oops! No matching movies found');
            }
            return SliverToBoxAdapter(
              child: Column(
                children: [
                  PageSelector(data: data),
                  MoviesGridBuilder(data: data),
                ],
              ),
            );
          },
          error:
              (message) => SliverFillRemaining(
                child: Placeholders.errorText(
                  message,
                  onRetry:
                      () => context.read<HomeBloc>().add(HomeEvent.retry()),
                ),
              ),
        );
      },
    );
  }

  SliverFillRemaining _sliverPlaceholderText(String text) {
    return SliverFillRemaining(
      child: Center(
        child: Txt(
          text,
          maxLines: 3,
          style: TxtStyle.headerMRegular,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
