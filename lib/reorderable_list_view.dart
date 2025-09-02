import 'package:flutter/material.dart';
import 'package:flutter_widget/model/user.dart';

class ReOrderAbleListViewWidget extends StatefulWidget {
  const ReOrderAbleListViewWidget({super.key});

  @override
  State<ReOrderAbleListViewWidget> createState() => _ReOrderAbleListViewWidgetState();
}

class _ReOrderAbleListViewWidgetState extends State<ReOrderAbleListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // WhatsApp background
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF075E54), // WhatsApp green
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),

      body: ReorderableListView.builder(
        physics: const BouncingScrollPhysics(),
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
        itemBuilder: (context, index) {
          final user = userData[index];
          return Column(
            key: ValueKey(user),
            children: [
              ReorderableDragStartListener(
                index: index,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(user.image),
                  ),
                  title: Text(
                    user.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                  subtitle: Text(
                    user.lastMessage ?? "Hey there! I am using WhatsApp",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  trailing: Text(
                    user.lastMessageTime ?? "12:00 PM",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),

                ),
              ),
              const Divider(
                height: 0,
                indent: 80, // align divider with avatar
              ),
            ],
          );
        },
      ),
    );
  }
}
