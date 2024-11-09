import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/Modelitems.dart';


class Explorepage extends StatefulWidget {
  const Explorepage({super.key});
  @override
  State<Explorepage> createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {
  List<Location> locationdetails = [];
  List<Itemsrentallapp> rec = [];
  List<Itemsrentallapp> mviewed = [];
  ScrollController _scrollController = ScrollController();


  @override
  void initState() {
    super.initState();
    locationdetails.addAll([
      Location("https://alotusinthemud.com/wp-content/uploads/2024/02/lead-pic-temple-and-snow-mountains.jpg", "India"),
      Location("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgYGvrRpK64Jp76ce2h-A2Dof48lxgLW3QA&s", "Moscow"),
      Location("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqOPqo2OhaziCcQjOWdwDtVxqcjDxsZZsxEw&s", "USA"),
      Location("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7nGQUmjw_43tjtZ8BLMfJTrUU8iZBQ_ypQw&s", "Franch"),
      Location("https://alotusinthemud.com/wp-content/uploads/2024/02/lead-pic-temple-and-snow-mountains.jpg", "India"),
      Location("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgYGvrRpK64Jp76ce2h-A2Dof48lxgLW3QA&s", "Moscow"),
      Location("https://alotusinthemud.com/wp-content/uploads/2024/02/lead-pic-temple-and-snow-mountains.jpg", "India"),
      Location("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgYGvrRpK64Jp76ce2h-A2Dof48lxgLW3QA&s", "Moscow"),
      Location("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqOPqo2OhaziCcQjOWdwDtVxqcjDxsZZsxEw&s", "USA"),
      Location("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7nGQUmjw_43tjtZ8BLMfJTrUU8iZBQ_ypQw&s", "Franch"),
      Location("https://alotusinthemud.com/wp-content/uploads/2024/02/lead-pic-temple-and-snow-mountains.jpg", "India"),
      Location("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgYGvrRpK64Jp76ce2h-A2Dof48lxgLW3QA&s", "Moscow"),
    ]);

    rec.addAll([
      Itemsrentallapp("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGS-nS14Fm9zhEQegRDRIkYUlhivdaJDNUeg&s", "\$120", "/ Night", "Carinthia Lake see Breakfast", "4", "Private Room/", "4beds",),
      Itemsrentallapp("https://cdn.prod.website-files.com/5c6d6c45eaa55f57c6367749/65d7ed44d1fd234978f801dc_lobbypix-022224-4.webp",  "\$400", "/ Night", "Carinthia Lake see Breakfast", "5", "Hotel Room/", "3beds"),
      Itemsrentallapp("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr09piP6jki0WLDGQnRLC2rmn5XHPtBZJ6Mg&s",  "\$500", "/ Day", "Bright elegant Guest house in Italy", "5", "Hotel Room/", "3beds"),
      Itemsrentallapp("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGS-nS14Fm9zhEQegRDRIkYUlhivdaJDNUeg&s",  "\$120", "/ Night", "Carinthia Lake see Breakfast ", "4", "Private Room/", "4beds"),
      Itemsrentallapp("https://cdn.prod.website-files.com/5c6d6c45eaa55f57c6367749/65d7ed44d1fd234978f801dc_lobbypix-022224-4.webp",  "\$400", "/ Night", "Carinthia Lake see Breakfast", "5", "Hotel Room/", "3beds"),
      Itemsrentallapp("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr09piP6jki0WLDGQnRLC2rmn5XHPtBZJ6Mg&s",  "\$500", "/ Day", "Bright elegant Guest house in Italy", "5", "Hotel Room/", "3beds"),

    ]);

    mviewed.addAll([
      Itemsrentallapp("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnoT2Tq8Ouzh7kf2_bX09PtIcjdMs-FnXv0g&s", "\$120", "/ Night", "Carinthia Lake see Breakfast", "4", "Private Room/", "4beds"),
      Itemsrentallapp("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXgB2DDUWk6-ZaxiW8Ghmj90LPxH3W5iDxnw&s",  "\$240", "/ Night", "Cainthia Lake see Breakfast lorem", "5", "Hotel Room/", "2beds"),
      Itemsrentallapp("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnoT2Tq8Ouzh7kf2_bX09PtIcjdMs-FnXv0g&s", "\$120", "/ Night", "Carinthia Lake see Breakfast", "4", "Private Room/", "4beds"),

    ]);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            final screenHeight = constraints.maxHeight;
            final isLandscape = screenWidth > screenHeight;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  decoration: const BoxDecoration(
                    color: Color(0xffefeffb),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore the world! By Travelling",
                        style: TextStyle(
                          fontSize: isLandscape ? 28 : 33,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Image.asset("assets/images/searchi.png"),
                                hintText: "Where do you want to go?",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 50,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Image.asset("assets/images/menus.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sectionTitle("Popular Locations"),
                        buildHorizontalList(locationdetails, (item) {
                          return buildLocationCard(item);
                        }, height: 175),
                        sectionTitle("Recommended"),
                        buildResponsiveList(rec, (item) {
                          return buildRecommendedCard(item, screenWidth,);
                        }, screenWidth),
                        buildHostingSection(isLandscape,screenWidth),
                        sectionTitle("Most Viewed"),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: mviewed.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                              child: buildMostViewedCard(mviewed[index], screenWidth),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        title,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
  Widget buildHorizontalList<T>(
      List<T> items, Widget Function(T) builder, {required double height}) {
    double width = MediaQuery.of(context).size.width;
    bool isDesktop = width >= 800;
    return Stack(
      children: [
        Container(
          height: height,
          child: ListView.builder(
            controller: _scrollController, // Add this line
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 10),
              child: builder(items[index]),
            ),
          ),
        ),
        if (isDesktop && items.isNotEmpty)
          Positioned(
            left: 0,
            top: height / 2 - 20,
            child: IconButton(
              icon: Icon(Icons.arrow_left, size: 40),
              onPressed: () {
                _scrollController.animateTo(
                  _scrollController.position.pixels - 100, // Adjust as needed
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        if (isDesktop && items.isNotEmpty)
          Positioned(
            right: 0,
            top: height / 2 - 20,
            child: IconButton(
              icon: Icon(Icons.arrow_right, size: 40),
              onPressed: () {
                _scrollController.animateTo(
                  _scrollController.position.pixels + 100,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
      ],
    );
  }

  Widget buildLocationCard(Location location,) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(location.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            location.name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget buildRecommendedCard(Itemsrentallapp rec, double width, ) {
    return Container(
      width: width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:15,left: 12,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            buildImage(rec.image, 180, ),
            const SizedBox(height: 8),
            buildDetailsRow(rec.cost, rec.time, rec.rating),
            const SizedBox(height: 5),
            buildText(rec.description,),
            buildText("${rec.roomType} ${rec.beds}", color: Colors.grey),
          ],
        ),
      ),
    );
  }


  Widget buildHostingSection(bool isLandscape,double width) {
    return Container(
      margin: const EdgeInsets.all(18),
      width: double.infinity,
      height: isLandscape ? 400: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: const DecorationImage(
          image: AssetImage("assets/images/cafe.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hosting Fee for \n as low as 1%",
              style: TextStyle(fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: 170,height: 45,
              child: Card(
                color: Color(0xffFF5A5F),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Align(alignment: Alignment.center,
                    child: Text("Become a Host",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2),)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildMostViewedCard(Itemsrentallapp view, double width) {
    return Container(
      width: width,
      height: 310,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildImage(view.image, 200, ),
          const SizedBox(height: 8),
          buildDetailsRow(view.cost, view.time, view.rating),
          const SizedBox(height: 8),
          buildText(view.description),
          buildText("${view.roomType} ${view.beds}", color: Colors.grey),
        ],
      ),
    );
  }
  Widget buildImage(String imagePath, double height,) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: NetworkImage(imagePath), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topRight,
          child: Image.asset("assets/images/fav.png", scale: 3),
        ),
      ),
    );
  }
  Widget buildResponsiveList<T>(
      List<T> items, Widget Function(T) builder, double screenWidth) {
    if (screenWidth < 600) {
      return SizedBox(
        height: 300,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.map((item) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: builder(item),
              );
            }).toList(),
          ),
        ),
      );
    } else {
      double screenWidth = MediaQuery.of(context).size.width;
      double childAspectRatio;

      if (screenWidth < 600) {
        childAspectRatio = 4 / 5;
      } else if (screenWidth >= 600 && screenWidth < 1200) {
        childAspectRatio = 11/ 16;
      } else {
        childAspectRatio = 14/ 9;
      }
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: childAspectRatio,
        ),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return builder(items[index]);
        },
      );
    }
  }


  Widget buildDetailsRow(String cost, String time, String rating) {
    return Row(
      children: [
        const SizedBox(width: 13),
        Text(cost, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(width: 5),
        Text(time),
        Image.asset("assets/images/power.png", scale: 3,),
        const Spacer(),
        Image.asset("assets/images/starx.png", scale: 3),
        Text(rating),
      ],
    );
  }

  Widget buildText(String text, {Color color = Colors.black}) {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: color,fontWeight: FontWeight.bold,),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
