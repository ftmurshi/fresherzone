import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:fresherzone/farmerfresh.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FarmerBotNav(),
  ));
}

class FarmerBotNav extends StatefulWidget {
  const FarmerBotNav({super.key});

  @override
  State<FarmerBotNav> createState() => _FarmerBotNavState();
}

class _FarmerBotNavState extends State<FarmerBotNav> {
  // var index=0;
  // var screens=[ farmers(),Text("cart"),Text("account")];
  var Name = [
    "VEGITABLES",
    'FRUITS',
    'EXOTIC',
    'FRESH CUT',
    'NUTRITION CHARGES',
    'PACKED FLAVORS'
  ];
  var image = [
    "assets/images/davies-designs-studio-jxnKcNXxVXA-unsplash.jpg",
    "assets/images/edgar-castrejon-1CsaVdwfIew-unsplash.jpg",
    "assets/images/randy-fath-5aJVJvJ9rG8-unsplash.jpg",
    "assets/images/edgar-castrejon-1CsaVdwfIew-unsplash.jpg",
    "assets/images/veggiefiber.png",
    "assets/images/download (1).jpeg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapIndex) {
            setState(() {
              // index=tapIndex;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          // currentIndex: index,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "CART"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "ACCOUNT"),
          ]),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            title: Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            actions: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text("Kochi"),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              )
            ],
            stretch: true,
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Search for vegitables,Fruits..',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 30,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade200),
                          color: Colors.teal.shade50,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 10),
                            child: Text(
                              Name[index],
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              CarouselSlider(
                  items: List.generate(
                      6,
                      (index) => Container(
                        child: Image(image: AssetImage("assets/images/images (1).jpeg"),fit: BoxFit.fill,),
                            color: Colors
                                .primaries[index % Colors.primaries.length],
                          )),
                  options: CarouselOptions(
                    viewportFraction: 1,
                    initialPage: 1,
                    autoPlay: false,
                    enableInfiniteScroll: false,
                  ))
            ])),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Container(
                height: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black38)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "30 MIN POLICY",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "TRACEBILITY",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "LOCAL SOURCING",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              )
            ])),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Container(
                child: Text(
                  "Shop By Category",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ])),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    childCount: 6,
                    (context, index) => Container(
                          height: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      image: DecorationImage(
                                          image: AssetImage(image[index]),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  Name[index],
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                )
                              ]),
                        )),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6)),
          )
        ],
      ),
    );
  }
}
