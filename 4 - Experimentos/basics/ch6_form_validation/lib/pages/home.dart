import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  Order _order = Order();

  String? validateItemRequired(String value) {
    return (value.isEmpty) ? 'item required' : null;
  }

  String? _validadeItemCount(String value) {
    int? valueAsInteger = value.isEmpty ? 0 : int.tryParse(value);
    return valueAsInteger == 0 ? 'At least one Item is Required' : null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      print('Order item: ${_order.item}');
      print('Order Quantity: ${_order.quantity}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Form(
              key: _formStateKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.people_alt),
                      hintText: 'Espresso',
                      labelText: 'Item',
                    ),
                    validator: (value) => validateItemRequired(value!),
                    onSaved: (newValue) => _order.item = newValue!,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.people_alt),
                      hintText: 'Quantity',
                      labelText: 'Quantity',
                    ),
                    validator: (value) => _validadeItemCount(value!),
                    onSaved: (newValue) =>
                        _order.quantity = int.tryParse(newValue!)!,
                  ),
                  Divider(
                    height: 32.0,
                  ),
                  ElevatedButton(
                    child: Text('Save'),
                    onPressed: () => _submitOrder(),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Order {
  String item = "";
  int quantity = 0;
}

class InputDecoratorWidget extends StatelessWidget {
  const InputDecoratorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.green,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            labelText: "Notes",
            labelStyle: TextStyle(color: Colors.purple),
            //border: UnderlineInputBorder(),
            border: OutlineInputBorder(),
          ),
        ),
        const Divider(
          color: Colors.lightGreen,
          height: 50.0,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Enter your notes'),
        ),
      ],
    );
  }
}

class BoxDecoratorWidget extends StatelessWidget {
  const BoxDecoratorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
      ),
    );
  }
}

class ImagesAndIconWidget extends StatelessWidget {
  const ImagesAndIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image(
          image: const AssetImage("assets/images/cat.jpg"),
          fit: BoxFit.cover,
          // color: Colors.deepOrange,
          width: MediaQuery.of(context).size.width / 3,
        ),
        Image.network(
          'https://www.petz.com.br/blog/wp-content/uploads/2020/08/cat-sitter.jpg',
          width: MediaQuery.of(context).size.width / 3,
        ),
        const Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
      ],
    );
  }
}
