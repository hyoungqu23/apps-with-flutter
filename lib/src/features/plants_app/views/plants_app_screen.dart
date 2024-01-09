import 'package:flutter/material.dart';

List<String> navBarItems = [
  'All',
  'Outdoor',
  'Indoor',
  'Office',
  'Garden',
  'ETC',
];

List<Map<String, dynamic>> popularPlantItems = [
  {
    'name': 'Plant ABC',
    'price': 75.00,
    'asset': 'assets/images/plant_app/plant_1.avif',
  },
  {
    'name': 'Plant 123',
    'price': 5.75,
    'asset': 'assets/images/plant_app/plant_2.avif',
  },
  {
    'name': 'Plant ㄱㄴㄷ',
    'price': 37.00,
    'asset': 'assets/images/plant_app/plant_3.avif',
  },
];

class PlantAppScreen extends StatelessWidget {
  const PlantAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: navBarItems.length,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              padding: EdgeInsets.zero,
              tabAlignment: TabAlignment.start,
              labelColor: Colors.black,
              labelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              labelPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              unselectedLabelColor: Colors.grey.shade600,
              unselectedLabelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              overlayColor: const MaterialStatePropertyAll(
                Colors.transparent,
              ),
              isScrollable: true,
              dividerHeight: 0,
              indicatorColor: Colors.green,
              indicatorWeight: 2,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                for (var tabItem in navBarItems)
                  Tab(
                    text: tabItem,
                    height: 20,
                  ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  for (var tabItem in navBarItems)
                    Container(
                      width: 200,
                      padding: const EdgeInsets.all(20),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: popularPlantItems.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 24),
                        itemBuilder: (context, index) {
                          final String itemName =
                              popularPlantItems[index]['name'];
                          final itemPrice = popularPlantItems[index]['price'];
                          final String itemAsset =
                              popularPlantItems[index]['asset'];

                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                                width: 4,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green.shade50,
                              image: DecorationImage(
                                image: AssetImage(itemAsset),
                                fit: BoxFit.cover,
                              ),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment(1, 1),
                                    child: Icon(
                                      Icons.add_circle_outlined,
                                      color: Colors.green,
                                      size: 28,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$tabItem $tabItem $itemName',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                        ),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text('\$$itemPrice'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
