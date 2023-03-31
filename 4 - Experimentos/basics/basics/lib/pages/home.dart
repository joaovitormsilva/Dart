import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text("home"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        flexibleSpace: const SafeArea(
          child: Icon(Icons.photo_camera, size: 50.0, color: Colors.white),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(75.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.blue],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
            height: 75.0,
            width: double.infinity,
            child: const Center(
              child: Text('Bottom'),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const <Widget>[
                ContainerWithBoxDecorationWidget(),
                Divider(),
                ColumnWidget(),
                Divider(),
                RowWidget(),
                Divider(),
                ColumnAndRowNestingWidget(),
                Divider(),
                ButtonsWidget(),
                Divider(),
                ButtonBarWidget(),
                TextButtonWidget(),
                ElevatedButtonWidget(),
                IconButtonWidget(),
                PopupMenuButtonWidget(),
              ],
            ),
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightGreen.shade100,
        child: const Icon(Icons.play_arrow),
      ),

      // CRIA UM BOTÃO FEIÃO MANÉ O DE BAIXO

      //floatingActionButton: FloatingActionButton.extended(
      // onPressed: () {},
      // icon: Icon(Icons.play_arrow),
      // label: Text('play'),
      //),

      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.flight),
      iconSize: 42.0,
      color: Colors.red,
      tooltip: 'Flight',
    );
  }
}

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.lightGreen.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          Icon(Icons.pause),
          Icon(Icons.stop),
          Icon(Icons.access_time),
          Padding(
            padding: EdgeInsets.all(16.0),
          ),
        ],
      ),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(foregroundColor: Colors.red),
      child: const Text(
        'ElevatedButton',
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      /*
      style: ButtonStyle(
      backgroundColor:
        MaterialStateProperty.all<Color>(Colors.blue),
      ),

      Se usar isso é preciso utilizar o TextStyle e colocar a cor do texto
      */

      style: TextButton.styleFrom(
          foregroundColor: Colors.red, backgroundColor: Colors.blue),
      onPressed: () {},
      child: const Text(
        'TextButton',
        //astyle: TextStyle(color: Colors.white),
      ),
    );
  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 175.0,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(10.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.lightGreen.shade500],
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Center(
            child: RichText(
              text: const TextSpan(
                  text: "Flutter World",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.deepPurple,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.deepPurpleAccent,
                    decorationStyle: TextDecorationStyle.dotted,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' for',
                    ),
                    TextSpan(
                      text: ' Mobile',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: const <Widget>[
        Text('Column 1'),
        Divider(),
        Text('Column 2 '),
        Divider(),
        Text('Column 3'),
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: const <Widget>[
        Text('Row 1'),
        Padding(padding: EdgeInsets.all(16.0)),
        Text('Row 2'),
        Padding(padding: EdgeInsets.all(16.0)),
        Text('Row 3'),
      ],
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget {
  const ColumnAndRowNestingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        const Text(
          'Column and Row Nesting 1',
        ),
        const Text(
          'Column and Row Nesting 2,',
        ),
        const Text(
          'Column and Row Nesting 3',
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Text('ROw nesting 1'),
            Text('Row Nesting 2'),
            Text('Row Nesting 3'),
          ],
        ),
      ],
    );
  }
}

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(16.0)),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {},
              child: const Text(
                'Flag',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Padding(padding: EdgeInsets.all(16.0)),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: const Icon(
                Icons.flag,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(16.0)),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Save'),
            ),
            const Padding(padding: EdgeInsets.all(16.0)),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue)),
              child: const Icon(Icons.save),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(16.0)),
            IconButton(
              icon: const Icon(Icons.flight),
              onPressed: () {},
            ),
            const Padding(padding: EdgeInsets.all(16.0)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.flight),
              iconSize: 42.0,
              color: Colors.lightGreen,
              tooltip: 'Flight',
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}

class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.map),
          ),
          IconButton(
            icon: const Icon(Icons.airport_shuttle),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.brush),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<TodoMenuItem>(
      icon: const Icon(Icons.view_list),
      onSelected: ((value) {
        print('value: ${value.title}');
      }),
      itemBuilder: (BuildContext context) {
        return foodMenuList.map(
          (TodoMenuItem todoMenuItem) {
            return PopupMenuItem<TodoMenuItem>(
              child: Row(
                children: <Widget>[
                  Icon(todoMenuItem.icon.icon),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Text(todoMenuItem.title),
                ],
              ),
            );
          },
        ).toList();
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.0);
}

class TodoMenuItem {
  final String title;
  final Icon icon;
  TodoMenuItem({required this.title, required this.icon});
}

List<TodoMenuItem> foodMenuList = [
  TodoMenuItem(title: 'Fast food', icon: const Icon(Icons.fastfood)),
  TodoMenuItem(title: 'Remind me', icon: const Icon(Icons.add_alarm)),
  TodoMenuItem(title: 'flight', icon: const Icon(Icons.flight)),
  TodoMenuItem(title: 'Music', icon: const Icon(Icons.audiotrack)),
];
