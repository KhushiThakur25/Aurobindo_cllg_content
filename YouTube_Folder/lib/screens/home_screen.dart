import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:youtube_app/providers/video_provider.dart';
import 'package:youtube_app/screens/profile_screen.dart';
import 'package:youtube_app/screens/search_screen.dart';
import 'package:youtube_app/widgets/video_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;

  final _scrollController = ScrollController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<VideoProvider>().fetchVideos();
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      context.read<VideoProvider>().fetchVideos();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.network(
          'https://logos-world.net/wp-content/uploads/2020/04/YouTube-Logo.png',
          height: 60,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.cast,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notification_add_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SearchScreen()));
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ProfileScreen()));
              },
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 248, 246, 246),
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(45),
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildChip("All"),
                  _buildChip("Music"),
                  _buildChip("Movie"),
                  _buildChip("Live"),
                  _buildChip("News"),
                  _buildChip("Sports"),
                  _buildChip("Learning"),
                  _buildChip("Fashion"),
                ],
              ),
            )),
      ),
      body: Consumer<VideoProvider>(builder: (context, videoProvider, child) {
        if (videoProvider.videos.isEmpty && videoProvider.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return RefreshIndicator(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: videoProvider.videos.length + 1,
              itemBuilder: (context, index) {
                if (index == videoProvider.videos.length) {
                  return videoProvider.isLoading
                      ? Container(
                          padding: const EdgeInsets.all(16.0),
                          alignment: Alignment.center,
                          child: const CircularProgressIndicator(),
                        )
                      : const SizedBox();
                }
                return VideoCard(video: videoProvider.videos[index]);
              },
            ),
            onRefresh: () => videoProvider.refreshVideos());
      }),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  _onItemTapped(0);
                },
                icon: Icon(
                  Icons.home,
                  color: _selectedIndex == 0 ? Colors.red : Colors.black,
                )),
            IconButton(
                onPressed: () {
                  _onItemTapped(1);
                },
                icon: Icon(
                  Icons.explore,
                  color: _selectedIndex == 1 ? Colors.red : Colors.black,
                )),
            IconButton(
                onPressed: () {
                  _onItemTapped(2);
                },
                icon: Icon(
                  Icons.subscriptions,
                  color: _selectedIndex == 2 ? Colors.red : Colors.black,
                )),
            IconButton(
                onPressed: () {
                  _onItemTapped(3);
                },
                icon: Icon(
                  Icons.video_library,
                  color: _selectedIndex == 3 ? Colors.red : Colors.black,
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Chip(
        label: Text(label),
        backgroundColor: Color.fromARGB(255, 233, 236, 238),
      ),
    );
  }
}
