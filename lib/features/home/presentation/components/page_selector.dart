import 'package:cinefinder/core/common/constants/style_constants.dart';
import 'package:cinefinder/core/theme/app_theme.dart';
import 'package:cinefinder/core/widgets/text/txt.dart';
import 'package:cinefinder/features/home/application/bloc/home_bloc.dart';
import 'package:cinefinder/features/home/domain/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageSelector extends StatelessWidget {
  const PageSelector({super.key, required this.data});
  final SearchResponse data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.medium),
      child: SizedBox(
        height: kToolbarHeight,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: data.totalPages,
          itemBuilder: (context, index) {
            final pageNumber = index + 1;
            return IconButton(
              style: IconButton.styleFrom(
                backgroundColor:
                    data.page == pageNumber
                        ? context.theme.appColors.primary
                        : Colors.grey.withOpacity(0.2),
              ),
              onPressed: () {
                context.read<HomeBloc>().add(HomeEvent.changePage(pageNumber));
              },
              icon: Txt((index + 1).toString()),
            );
          },
        ),
      ),
    );
  }
}
