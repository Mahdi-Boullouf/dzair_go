import 'package:flutter/material.dart';

class HomeVeiw extends StatefulWidget {
  const HomeVeiw({super.key});
  State<HomeVeiw> createState() => MyAppstate();
}

class MyAppstate extends State<HomeVeiw> {
  int sel = -1;

  GlobalKey<ScaffoldState> scrafoldkey = GlobalKey();
  List tickets = [
    {
      'Image': "image/téléchargement (3).jpg",
      'from': "purson",
      'to': "land",
      'pri': "10000DA",
      'reserv': false,
    },
  ];
  List hotel = [
    {
      'Image': "image/images (5).jpg",
      'name': "hotel",
      'rait': "5,0",
      'place': "africa",
      'price': "500",
      'reserv': false,
    },
  ];
  List restorant = [
    {
      'Image': "image/téléchargement (4).jpg",
      'name': "fatah",
      'rait': "5,0",
      'place': "africa",
      'reserv': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Card(
                margin: EdgeInsets.only(top: 10),
                elevation: 0,
                child: ListTile(
                  title: Text(
                    "Hi,Daivd",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    "welcome to Algeria",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 164, 149, 149),
                    ),
                  ),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "image/photo_2026-02-15_21-39-48.jpg",
                      height: 60,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Card(
                elevation: 0,
                child: ListTile(
                  title: Text(
                    "Tickets",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                height: 300,
                child: ListView.separated(
                  separatorBuilder: (context, b) {
                    return SizedBox(width: 10);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: tickets.length,
                  itemBuilder: (context, b) {
                    return ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {},
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 300,
                              width: 250,
                              child: Image.asset(
                                tickets[b]['Image'],
                                fit: BoxFit.cover,
                              ),
                            ),

                            Positioned(
                              top: 3,
                              right: 5,
                              child: CircleAvatar(
                                backgroundColor: const Color.fromRGBO(
                                  105,
                                  103,
                                  103,
                                  1,
                                ).withOpacity(0.5),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (tickets[b]['reserv'] == true) {
                                        tickets[b]['reserv'] = false;
                                      } else {
                                        tickets[b]['reserv'] = true;
                                      }
                                      ;
                                    });
                                  },
                                  icon: Icon(Icons.favorite_border_outlined),
                                  color: tickets[b]['reserv'] == true
                                      ? Color.fromARGB(255, 249, 1, 1)
                                      : Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                margin: EdgeInsets.all(7),
                                padding: EdgeInsets.all(8),

                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.attach_money,
                                            color: Colors.grey,
                                          ),
                                          Text(
                                            tickets[b]['pri'],
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "from : ",
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    244,
                                                    242,
                                                    242,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                tickets[b]['from'],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "to : ",
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    244,
                                                    242,
                                                    242,
                                                  ),
                                                ),
                                              ),

                                              Text(
                                                tickets[b]['to'],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  title: Text(
                    "Hotel",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                height: 300,
                child: ListView.separated(
                  separatorBuilder: (context, b) {
                    return SizedBox(width: 10);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: hotel.length,
                  itemBuilder: (context, b) {
                    return ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {},
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 300,
                              width: 250,
                              child: Image.asset(
                                hotel[b]['Image'],
                                fit: BoxFit.cover,
                              ),
                            ),

                            Positioned(
                              top: 3,
                              right: 5,
                              child: CircleAvatar(
                                backgroundColor: const Color.fromRGBO(
                                  105,
                                  103,
                                  103,
                                  1,
                                ).withOpacity(0.5),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (hotel[b]['reserv'] == true) {
                                        hotel[b]['reserv'] = false;
                                      } else {
                                        hotel[b]['reserv'] = true;
                                      }
                                      ;
                                    });
                                  },
                                  icon: Icon(Icons.favorite_border_outlined),
                                  color: hotel[b]['reserv'] == true
                                      ? Color.fromARGB(255, 249, 1, 1)
                                      : Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                margin: EdgeInsets.all(7),
                                padding: EdgeInsets.all(8),

                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            hotel[b]['name'],
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.attach_money,
                                                color: Colors.grey,
                                              ),
                                              Text(
                                                hotel[b]['price'],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,

                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.place_outlined,
                                                color: Colors.grey,
                                              ),
                                              Text(
                                                hotel[b]['place'],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star_border,
                                                color: Colors.grey,
                                              ),
                                              Text(
                                                hotel[b]['rait'],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  title: Text(
                    "Near Restorant",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                height: 300,
                child: ListView.separated(
                  separatorBuilder: (context, b) {
                    return SizedBox(width: 10);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: restorant.length,
                  itemBuilder: (context, b) {
                    return ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: InkWell(
                        onTap: () {},
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 300,
                              width: 250,
                              child: Image.asset(
                                restorant[b]['Image'],
                                fit: BoxFit.cover,
                              ),
                            ),

                            Positioned(
                              top: 3,
                              right: 5,
                              child: CircleAvatar(
                                backgroundColor: const Color.fromRGBO(
                                  105,
                                  103,
                                  103,
                                  1,
                                ).withOpacity(0.5),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (restorant[b]['reserv'] == true) {
                                        restorant[b]['reserv'] = false;
                                      } else {
                                        restorant[b]['reserv'] = true;
                                      }
                                      ;
                                    });
                                  },
                                  icon: Icon(Icons.favorite_border_outlined),
                                  color: restorant[b]['reserv'] == true
                                      ? Color.fromARGB(255, 249, 1, 1)
                                      : Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                margin: EdgeInsets.all(7),
                                padding: EdgeInsets.all(8),

                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            restorant[b]['name'],
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,

                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.place_outlined,
                                                color: Colors.grey,
                                              ),
                                              Text(
                                                restorant[b]['place'],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star_border,
                                                color: Colors.grey,
                                              ),
                                              Text(
                                                restorant[b]['rait'],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
