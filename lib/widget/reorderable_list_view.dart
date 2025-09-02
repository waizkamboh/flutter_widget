import 'package:cached_network_image/cached_network_image.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF075E54),
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
              ListTile(
                // leading: CircleAvatar(
                //   radius: 25,
                //   backgroundImage: NetworkImage(user.image),
                // ),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: null,
                  child: CachedNetworkImage(
                    imageUrl: user.image,
                    imageBuilder: (context, imageProvider) => CircleAvatar(
                      radius: 25,
                      backgroundImage: imageProvider,
                    ),
                    placeholder: (context, url) =>
                    const CircularProgressIndicator(strokeWidth: 2),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
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


              ),
              const Divider(
                height: 0,
                indent: 80, 
              ),
            ],
          );
        },
      ),
    );
  }
}
