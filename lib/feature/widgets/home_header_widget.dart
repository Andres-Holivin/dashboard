import 'package:dashboard/style_widget.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/badge/gf_badge.dart';
import 'package:getwidget/getwidget.dart';

import 'custom_search_bar.dart';

class HomeHeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeaderWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    List list = [
      "Flutter",
      "React",
      "Ionic",
      "Xamarin",
      "hello",
      "word",
      "test",
    ];
    return AppBar(
      toolbarHeight: 55,
      backgroundColor: Colors.grey[50],
      elevation: 0.8,
      title: Container(
        height: 400,
      ),
      centerTitle: false,
      actions: [
        Container(
          margin: EdgeInsets.only(
              right: MediaQuery.of(context).size.width / 100 + 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.28,
                  alignment: Alignment.center,
                  child: CustomSearchBar(
                    searchBoxInputDecoration: CustomDecoration.inputDecoration(
                        context,
                        hint: "Search for transaction, item, etc",
                        icon: Icons.search),
                    searchList: list,
                    searchQueryBuilder: (query, list) {
                      return list
                          .where((item) =>
                              item.toLowerCase().contains(query.toLowerCase()))
                          .toList();
                    },
                    overlaySearchListItemBuilder: (item) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text(
                              item,
                              style: const TextStyle(fontSize: 18),
                            ),
                            Text(
                              "hello",
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      );
                    },
                    onItemSelected: (item) {},
                  )),
              const SizedBox(
                width: 14,
              ),
              GFIconBadge(
                position: GFBadgePosition.topEnd(top: -8, end: -10),
                counterChild: const GFBadge(
                  shape: GFBadgeShape.circle,
                  size: GFSize.SMALL,
                  text: "12",
                ),
                child: GFIconButton(
                  shape: GFIconButtonShape.pills,
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.grey,
                    size: GFSize.SMALL,
                  ),
                  color: Colors.transparent,
                  padding: EdgeInsets.zero,
                  size: GFSize.MEDIUM,
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              InkWell(
                  onTap: () {},
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 16,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
