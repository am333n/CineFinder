import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinefinder/core/common/constants/style_constants.dart';
import 'package:cinefinder/core/common/image_url.dart';
import 'package:cinefinder/features/movie%20details/application/bloc/movie_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MovieDetailsPage extends StatefulWidget {
  const MovieDetailsPage({super.key, required this.movieID});
  final int movieID;
  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  void didChangeDependencies() {
    context.read<MovieDetailsBloc>().add(
      MovieDetailsEvent.getDetails(widget.movieID),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
        builder: (context, state) {
          return state.when(
            loading: () => Center(child: CircularProgressIndicator()),
            loaded: (data) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 300,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: CachedNetworkImage(
                        imageUrl:
                            data.backdropPath?.original ??
                            PlaceHolderImage.w200,
                        fit: BoxFit.cover,
                        placeholder:
                            (context, url) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                        errorWidget:
                            (context, url, error) => const Icon(Icons.error),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title and basic info
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Poster
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      data.posterPath?.original ??
                                      PlaceHolderImage.w100,
                                  height: 180,
                                  width: 120,
                                  fit: BoxFit.cover,
                                  placeholder:
                                      (context, url) => Container(
                                        color: Colors.grey[300],
                                        height: 180,
                                        width: 120,
                                      ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              // Title and metadata
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.title ?? 'No title',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.headlineSmall,
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          data.voteAverage?.toStringAsFixed(
                                                1,
                                              ) ??
                                              'N/A',
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                        ),
                                        const SizedBox(width: 16),
                                        const Icon(
                                          Icons.calendar_today,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          data.releaseDate ?? 'N/A',
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      '${data.runtime?.toString() ?? 'N/A'} mins',
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.bodyMedium,
                                    ),
                                    const SizedBox(height: 8),
                                    Wrap(
                                      spacing: 8,
                                      children:
                                          data.genres
                                              ?.map(
                                                (genre) => Chip(
                                                  label: Text(genre.name ?? ''),
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                ),
                                              )
                                              .toList() ??
                                          [],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 24),

                          // Overview
                          Text(
                            'Overview',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            data.overview ?? 'No overview available',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),

                          const SizedBox(height: 24),

                          // Additional Info
                          Text(
                            'Additional Info',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 8),
                          _buildInfoRow('Status', data.status ?? '-'),
                          _buildInfoRow(
                            'Budget',
                            '\$${data.budget?.toString() ?? 'N/A'}',
                          ),
                          _buildInfoRow(
                            'Revenue',
                            '\$${data.revenue?.toString() ?? 'N/A'}',
                          ),
                          _buildInfoRow('Homepage', data.homepage ?? 'N/A'),

                          const SizedBox(height: 24),

                          // Production Companies
                          if (data.productionCompanies?.isNotEmpty ??
                              false) ...[
                            Text(
                              'Production Companies',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    data.productionCompanies?.length ?? 0,
                                itemBuilder: (context, index) {
                                  final company =
                                      data.productionCompanies![index];
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 16),
                                    child: Column(
                                      children: [
                                        if (company.logoPath != null)
                                          CachedNetworkImage(
                                            imageUrl:
                                                company.logoPath?.original ??
                                                PlaceHolderImage.w100,
                                            height: 60,
                                            width: 60,
                                            fit: BoxFit.contain,
                                          ),
                                        const SizedBox(height: 4),
                                        SizedBox(
                                          width: 80,
                                          child: Text(
                                            company.name ?? '',
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            error: (String errorMessage) {
              return Placeholders.errorText(
                errorMessage,
                onRetry:
                    () => context.read<MovieDetailsBloc>().add(
                      MovieDetailsEvent.getDetails(widget.movieID),
                    ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
