import 'package:flutter/material.dart';
import 'package:testando_api/services/api_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo de solicitação HTTP',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo de solicitação HTTP'),
        ),
        body: Center(
          child: FutureBuilder<List<dynamic>>(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // Se a função retornar dados, exiba-os em uma lista
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.network(snapshot.data![index]['image']),
                      //  Text(myProducts[index]["name"]),
                    );

                    /*   ListTile(
                      title: Text(snapshot.data![index]['title']),
                      subtitle: Text(snapshot.data![index]['body']),
                    );*/
                  },
                );
              } else if (snapshot.hasError) {
                // Se a função lançar uma exceção, exiba a mensagem de erro
                return Text("${snapshot.error}");
              }

              // Por padrão, exiba uma animação de progresso
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
