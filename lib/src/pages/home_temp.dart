import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Components Temp')),
        // body: ListView(children: _createItems()));
        body: ListView(children: _createItemsShort()));
  }

  // List<Widget> _createItems() {
  //   List<Widget> list = new List<Widget>();

  //   for (String opt in options) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );

  //     list..add(tempWidget)..add(Divider());
  //   }
  //   return list;
  // }

  List<Widget> _createItemsShort() {
    final widgets = options.map((el) {
      return Column(
        children: [
          ListTile(
            title: Text(el),
            subtitle: Text('Este es subtitle'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }
}
