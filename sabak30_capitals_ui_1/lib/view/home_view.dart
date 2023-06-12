import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabak30_capitals_ui_1/constants/app_colors.dart';
import 'package:sabak30_capitals_ui_1/view/test_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> continents = [
    'Asia',
    'Europe',
    'North America',
    'South America',
    'Africa',
    'Austalia',
  ];
  // List<String> images = [
  //   'africa.svg',
  //   'asia.svg',
  //   'australia.svg',
  //   'europe.svg',
  //   'northAmerica.svg',
  //   'southAmerica.svg',
  // ];
  Map images = {
    'Asia': 'asia.svg',
    'Europe': 'europe.svg',
    'Australia': 'australia.svg',
    'North Americ': 'northAmerica.svg',
    'South America': 'southAmerica.svg',
    'Africa': 'africa.svg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Мамлекеттер борбору'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            indent: 15,
            endIndent: 15,
            color: AppColors.dividerColor,
            height: 1,
          ),
          //GridView
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 25, right: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: continents.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TestView(),
                          ),
                        );
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Text(
                                continents[index],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset(
                                'assets/continents/${images[continents[index]]}',
                              )
                            ],
                          )),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
