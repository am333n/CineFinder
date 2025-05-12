import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final List<String>? suggestionList;
  final void Function(String query) onChanged;
  final String? query;
  const CustomSearchBar({
    super.key,
    this.suggestionList,
    required this.onChanged,
    this.query,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();
  @override
  void didChangeDependencies() {
    if (widget.query != null) {
      searchController.text = widget.query ?? '';
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:
              (widget.suggestionList != null &&
                      widget.suggestionList!.isNotEmpty)
                  ? SearchAnchor(
                    builder:
                        (context, controller) => _buildSearchField(
                          controller,
                          onChanged: (query) {
                            controller.openView();
                            widget.onChanged(query);
                          },
                          onTap: () {
                            controller.openView();
                          },
                        ),
                    suggestionsBuilder: (context, controller) {
                      final query = controller.text.toLowerCase();
                      return widget.suggestionList!
                          .where((item) => item.toLowerCase().contains(query))
                          .map(
                            (suggestion) => ListTile(
                              title: Text(suggestion),
                              onTap: () {
                                searchController.text = suggestion;
                                widget.onChanged(suggestion);
                              },
                            ),
                          )
                          .toList();
                    },
                  )
                  : _buildSearchField(
                    searchController,
                    onChanged: widget.onChanged,
                  ),
        ),
      ],
    );
  }

  TextField _buildSearchField(
    TextEditingController controller, {
    void Function()? onTap,
    void Function(String)? onChanged,
  }) {
    return TextField(
      controller: controller,
      focusNode: _searchFocus,
      onTap: onTap,
      onChanged: onChanged,
      onTapOutside: (_) => _searchFocus.unfocus(),
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}
