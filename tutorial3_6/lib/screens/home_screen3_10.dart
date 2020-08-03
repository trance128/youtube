// Welcome Again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

import 'package:flutter/material.dart';

const PRIMARY = "primary";
const WHITE = "white";
const SECONDARY = "secondary";
const GREY = "grey";

const Map<String, Color> myColors = {
  PRIMARY: Color.fromRGBO(226, 115, 138, 1),
  WHITE: Colors.white,
  SECONDARY: Color.fromRGBO(247, 225, 227, 1),
  GREY: Colors.grey,
};

var priceTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      backgroundColor: myColors[PRIMARY],
      body: _Body(),
    );
  }
}

Widget _myAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: AppBar(
      backgroundColor: myColors[WHITE],
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
        ),
        child: IconButton(
          icon: Icon(
            Icons.menu,
            color: myColors[PRIMARY],
            size: 30,
          ),
          onPressed: () => print("Menu pressed"),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 15),
          child: IconButton(
            onPressed: () => print("Search pressed"),
            icon: Icon(
              Icons.search,
              color: myColors[PRIMARY],
              size: 30,
            ),
          ),
        ),
      ],
    ),
  );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: myColors[WHITE],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    bottom: 20,
                  ),
                  child: Text(
                    'Cosmetics that Everyone loves!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                Expanded(
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _ImageTile(
                          height: constraints.maxHeight * .85,
                          imagePath: 'assets/images/makeup1.png',
                          addCallback: () => print("Main item added"),
                          favoriteCallback: () => print("Main item favorited"),
                          price: 15.00,
                        ),
                        Column(
                          children: [
                            _ImageTile(
                              height: constraints.maxHeight * .37,
                              imagePath: 'assets/images/makeup2.png',
                              addCallback: () => print("2nd item added"),
                              favoriteCallback: () =>
                                  print("2nd item favorited"),
                              price: 75.00,
                            ),
                            SizedBox(height: 8),
                            _ImageTile(
                              height: constraints.maxHeight * .37,
                              imagePath: 'assets/images/makeup3.png',
                              addCallback: () => print("3rd item added"),
                              favoriteCallback: () =>
                                  print("3rd item favorited"),
                              price: 55.00,
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 12, top: 12, left: 40, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(
                          color: myColors[WHITE],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () => print("Recommended pressed"),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(
                            Icons.arrow_forward,
                            color: myColors[PRIMARY],
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) => Stack(
                    children: [
                      Positioned(
                        right: 15,
                        child: Container(
                          height: constraints.maxHeight * 0.8,
                          width: constraints.maxWidth * 0.8,
                          decoration: BoxDecoration(
                            color: myColors[WHITE],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        child: Container(
                          height: constraints.maxHeight * 0.8,
                          width: constraints.maxWidth * 0.84,
                          child: Row(
                            children: [
                              Image(
                                height: constraints.maxHeight * 0.8,
                                image: AssetImage('assets/images/makeup4.png'),
                              ),
                              SizedBox(width: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: constraints.maxWidth * .40,
                                    child: Text(
                                      'Multi shades many options available',
                                      style: TextStyle(
                                        color: myColors[GREY],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Container(
                                    child: Text(
                                      '\$75.00',
                                      style: priceTextStyle,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  SizedBox(height: 10),
                                  FavoriteButton(
                                    favoriteCallback: () => print(
                                      "Recommended item favorited",
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  PlusButton(
                                    addCallback: () =>
                                        print("Recommeneded item added"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ImageTile extends StatelessWidget {
  final double height;
  final double price;
  final String imagePath;
  final Function favoriteCallback;
  final Function addCallback;

  // highlight this press cntrl + d
  const _ImageTile({
    Key key,
    @required this.height,
    @required this.price,
    @required this.imagePath,
    @required this.favoriteCallback,
    @required this.addCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: height,
              image: AssetImage(imagePath),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: FavoriteButton(favoriteCallback: favoriteCallback),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: priceTextStyle,
            ),
            SizedBox(width: 20),
            PlusButton(addCallback: addCallback),
          ],
        ),
      ],
    );
  }
}

class PlusButton extends StatelessWidget {
  const PlusButton({
    Key key,
    @required this.addCallback,
  }) : super(key: key);

  final Function addCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => addCallback,
      child: Container(
        decoration: BoxDecoration(
          color: myColors[SECONDARY],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7),
            topRight: Radius.circular(7),
            bottomLeft: Radius.circular(7),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Icon(
            Icons.add,
            color: myColors[PRIMARY],
            size: 15,
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    Key key,
    @required this.favoriteCallback,
  }) : super(key: key);

  final Function favoriteCallback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => favoriteCallback,
      icon: Icon(
        Icons.favorite_border,
        color: myColors[PRIMARY],
        size: 25,
      ),
    );
  }
}
