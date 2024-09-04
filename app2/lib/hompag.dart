import 'package:app2/itemsdetails.dart';
import 'package:app2/model.dart';
import 'package:flutter/material.dart';

class Hompag extends StatefulWidget {
  const Hompag({super.key});

  @override
  State<Hompag> createState() => _HompagState();
}

class _HompagState extends State<Hompag> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size sizee = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(2, 3),
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 5)
                              ]),
                          child: Center(
                            child: Image.asset(
                              'images/p2.png',
                              scale: 1.8,
                            ),
                          ),
                        ),
                        Positioned(
                            right: 2,
                            top: 5,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                            ))
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(0.1)),
                      child: Image.asset(
                        'images/boy.png',
                        scale: 2,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: sizee.height * 0.04,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find and order',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        ' burger for you 🍔',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: sizee.height * 0.04,
              ),
              searchBar(),
              const SizedBox(
                height: 40,
              ),
              categorySlelection(),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Most Popular",
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Visibility(
                  visible: selectedIndex == 0 ? true : false,
                  child: SizedBox(
                    width: sizee.width,
                    height: 270,
                    child: ListView.builder(
                        itemCount: burgers.length,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final burgurs = burgers[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Itemsdetails(burger: burgurs)));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Container(
                                width: sizee.width / 2,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 7,
                                        offset: const Offset(0, 5),
                                        color: Colors.grey.withOpacity(0.2)),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          burgurs.isfavorited =
                                              !burgurs.isfavorited;
                                        });
                                      },
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          padding: const EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: burgurs.isfavorited
                                                  ? Colors.pink.shade50
                                                  : Colors.grey.shade200),
                                          child: Icon(
                                            Icons.favorite,
                                            color: burgurs.isfavorited
                                                ? Colors.red
                                                : Colors.black26,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Hero(
                                          tag: burgurs.image,
                                          child: Image.asset(
                                            burgurs.image,
                                            height: 120,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          burgurs.name,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                              size: 20,
                                            ),
                                            Text(
                                              "${burgurs.rating} |",
                                              style: TextStyle(
                                                  color: Colors.grey.shade700,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              burgurs.distance,
                                              style: TextStyle(
                                                  color: Colors.grey.shade700,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "\$",
                                              style: TextStyle(
                                                  color: Colors.orange),
                                            ),
                                            Text(
                                              "${burgurs.price}",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 22),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ))
            ],
          ),
        ),
      )),
    );
  }

  SizedBox categorySlelection() {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(categoryList[index],
                            style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.black
                                    : Colors.black45,
                                fontWeight: FontWeight.w500,
                                fontSize: 18)),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  Padding searchBar() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Findy your burger',
            hintStyle: const TextStyle(fontSize: 18, color: Colors.black38),
            prefixIcon: const Icon(
              Icons.search,
              size: 30,
            ),
            filled: true,
            fillColor: Colors.grey.shade100,
            contentPadding: const EdgeInsets.all(20),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(15)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
