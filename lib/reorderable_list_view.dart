import 'package:flutter/material.dart';
import 'package:flutter_widget/model/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background gradient
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFdbeafe), Color(0xFFf0f9ff)], // soft blue gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            // AppBar with search
            AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFF1e40af), // deep blue
              title: SizedBox(
                height: 38,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none),
                    hintStyle:
                    const TextStyle(fontSize: 14, color: Colors.white70),
                    hintText: "Search users",
                  ),
                ),
              ),
            ),

            // List of users
            Expanded(
              child: ReorderableListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final user = userData[index];
                  return Card(
                    key: ValueKey(user),
                    color: Colors.white,
                    margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    elevation: 3,
                    child: ReorderableDragStartListener(
                      index: index,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(user.image),
                        ),
                        title: Text(
                          user.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87),
                        ),
                        subtitle: Text(
                          user.userName, // ✅ match with your model
                          style: const TextStyle(color: Colors.grey),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              user.isFollowed = !user.isFollowed;
                            });
                          },
                          child: AnimatedContainer(
                            height: 32,
                            width: 90,
                            duration: const Duration(milliseconds: 300),
                            decoration: BoxDecoration(
                              color: user.isFollowed
                                  ? Colors.blue[600]
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                user.isFollowed ? "Unfollow" : "Follow",
                                style: TextStyle(
                                  color: user.isFollowed
                                      ? Colors.white
                                      : Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: userData.length,
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (newIndex > oldIndex) {
                      newIndex = newIndex - 1;
                    }
                    final element = userData.removeAt(oldIndex);
                    userData.insert(newIndex, element);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
