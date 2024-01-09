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
        appBar: AppBar(
          // elevation: 0,
          backgroundColor: Colors.white,
          // automaticallyImplyLeading: false,
          // leadingWidth: 40,
          // leading: TextButton(
          //   onPressed: () {},
          //   child: const Icon(Icons.arrow_back_ios),
          // ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      blurRadius: 2,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        focusColor: Colors.amber,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Colors.green,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.green,
                    size: 32,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 20,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: popularPlantItems.length,
                separatorBuilder: (context, index) => const SizedBox(width: 24),
                itemBuilder: (context, index) {
                  final String itemName = popularPlantItems[index]['name'];
                  final itemPrice = popularPlantItems[index]['price'];
                  final String itemAsset = popularPlantItems[index]['asset'];

                  return Container(
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.green.shade50,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              itemAsset,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  itemName,
                                  style: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  softWrap: false,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text('\$$itemPrice'),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Icon(
                                Icons.add_circle_outlined,
                                color: Colors.green,
                                size: 28,
                              ),
                            ),
                          )
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
    );
  }
}
