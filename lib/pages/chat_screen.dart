import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_models.dart';

class chatScreen extends StatelessWidget {
  const chatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (context, i) => Column(
                  children: <Widget>[
                    // const Divider(
                    //   height: 1.0,
                    // ),
                    ListTile(
                      leading: CircleAvatar(
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(dummyData[i].avatarUrl),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            dummyData[i].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            dummyData[i].time,
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.0),
                          ),
                        ],
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          dummyData[i].message,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 15.0),
                        ),
                      ),
                    )
                  ],
                )),
        Positioned(
          right: 25,
          bottom: 25,
          child: FloatingActionButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              backgroundColor: const Color(0xff075E54),
              child: const Icon(
                Icons.message,
              ),
              onPressed: () {}),
        )
      ],
    );
  }
}
