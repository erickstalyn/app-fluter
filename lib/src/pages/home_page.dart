import 'package:components/src/provides/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';


// import 'package:components/src/pages/alert_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components')
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // print(menuProvider.options);
    
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );


    
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((el) {
      final widgetTemp = ListTile(
        title: Text( el['texto']),
        leading: getIcon(el['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, el['ruta']);
        },
      );

      options..add(widgetTemp)..add(Divider());
    });
    return options;
  }
}