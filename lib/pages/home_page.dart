import "package:flutter/material.dart";
import "package:flutter_catalog/models/catalog.dart";
import "package:flutter_catalog/widgets/drawer.dart";
import "package:flutter_catalog/widgets/item_widget.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModels.items[0]);
    int days = 30;
    String name = "moksh";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Connect App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidgets(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
