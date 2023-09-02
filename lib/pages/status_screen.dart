import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_models.dart';

// ignore: camel_case_types
class statusScreen extends StatelessWidget {
  const statusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(
                          "https://avatars.githubusercontent.com/u/84658520?v=4",
                          height: 50.0,
                          width: 50.0,
                        ),
                      ),
                      Positioned(
                        right: -12,
                        bottom: -12,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff075E54),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "My Status",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Tap to add status update",
                          style: TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
              child: Text(
                "Recent updates",
                style: TextStyle(color: Color(0xFF616161), fontSize: 15.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
              child: Text(
                "Viewed updates",
                style: TextStyle(color: Color(0xFF616161), fontSize: 15.0),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: dummyStatusData.length,
                itemBuilder: (context, i) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(dummyStatusData[i].avatarUrl),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[Text(dummyStatusData[i].name)],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[Text(dummyStatusData[i].time)],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 25,
          bottom: 25,
          child: FloatingActionButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              backgroundColor: const Color(0xff075E54),
              child: const Icon(
                Icons.photo_camera,
              ),
              onPressed: () {}),
        ),
        Positioned(
          right: 35,
          bottom: 100,
          height: 35,
          width: 35,
          child: FloatingActionButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              backgroundColor: const Color(0xFFdaf2e3),
              child: const Icon(
                Icons.edit,
                color: Color(0xff075E54),
              ),
              onPressed: () {}),
        ),
      ],
    );
  }
}
