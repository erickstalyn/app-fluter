import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show Alert'),
          color: Colors.blue,
          onPressed: () => _showAlert(context),
          textColor: Colors.white,
          shape: StadiumBorder(),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.airline_seat_flat),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la caja de la alerta'),
              FlutterLogo(size: 100.0,)
            ],
          ),
          actions: [
            FlatButton(
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}