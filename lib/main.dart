import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencias(),
          appBar: AppBar(
            title: Text('Transferencias'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      ),
    );

class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTranferencia(Transferencia(100.0, 1000)),
        ItemTranferencia(Transferencia(200.0, 1001)),
        ItemTranferencia(Transferencia(300.0, 2000)),
      ],
    );
  }
}

class ItemTranferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTranferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}