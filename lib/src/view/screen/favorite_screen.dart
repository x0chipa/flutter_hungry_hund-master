import 'package:flutter/material.dart';
import 'package:hungry_hund/core/app_style.dart';
import 'package:hungry_hund/src/view/screen/home_screen.dart';
import 'package:hungry_hund/src/view/widget/empty_widget.dart';
import 'package:hungry_hund/src/view/widget/furniture_list_view.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favoritos", style: h2Style)),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            child: Column(
              mainAxisAlignment: controller.favoriteFurnitureList.isNotEmpty 
                  ? MainAxisAlignment.start 
                  : MainAxisAlignment.center,
              children: [
                controller.favoriteFurnitureList.isNotEmpty
                    ? FurnitureListView(
                        isHorizontal: false,
                        furnitureList: controller.favoriteFurnitureList,
                      )
                    : const EmptyWidget(
                        type: EmptyWidgetType.favorite,
                        title: "Aun no tienes favoritos",
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
