import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_catalog/models/catalog.dart";
import "package:flutter_catalog/widgets/drawer.dart";
import "package:flutter_catalog/widgets/item_widget.dart";
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModels.items[0]);
    int days = 30;
    String name = "moksh";
    loadData() async {
      var catalogJson = await rootBundle.loadString("assets/file/catalog.json");
      var decodeData = jsonDecode(catalogJson);
      var productsData = decodeData["products"];
      print(productsData);
    }

    void initState() {
      super.initState();
      loadData();
    }

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
