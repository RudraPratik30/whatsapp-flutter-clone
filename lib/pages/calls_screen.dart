import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:whatsapp_clone/models/calls_models.dart';

class callsScreen extends StatelessWidget {
  const callsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color(0xff075E54), //<-- SEE HERE
                    child: Transform.rotate(
                      angle: 135 * math.pi / 180,
                      child: IconButton(
                        icon: const Icon(
                          Icons.link,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Create call link",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Share a link for your WhatsApp call",
                          style: TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
              child: Text(
                "Recent",
                style: TextStyle(color: Color(0xFF616161), fontSize: 15.0),
              ),
            ),
            Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: dummyCallModel.length,
                  itemBuilder: (context, i) => Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          foregroundColor: Theme.of(context).primaryColor,
                          backgroundColor: Colors.grey,
                          backgroundImage:
                              NetworkImage(dummyCallModel[i].avatarUrl),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              dummyCallModel[i].name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Icon(Icons.call)
                          ],
                        ),
                        subtitle: Container(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            dummyCallModel[i].time,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 15.0),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
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
                Icons.add_call,
              ),
              onPressed: () {}),
        ),
      ],
    );
  }
}
