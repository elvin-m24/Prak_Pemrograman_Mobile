import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.all(
          30.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Elvin',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@elvinpratama',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget Slogan() {
      return Container(
        margin: EdgeInsetsDirectional.only(
          top: 10.0,
          start: 30.0,
          end: 30.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Meet Your Other Half',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search guitar",
                      prefixIcon: Icon(Icons.search),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget Category() {
      return Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Category",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              child: Image.asset("assets/guitar-el.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              child: Image.asset("assets/bass-el.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              child: Image.asset("assets/guitar-kl.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              child: Image.asset("assets/amp.jpg"),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        Slogan(),
        Category(),
      ],
    );
  }
}
