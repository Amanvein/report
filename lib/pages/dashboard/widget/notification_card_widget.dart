import 'package:flutter/material.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Reports",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 25),
          GridView.builder(
            itemCount: 8,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 130.0,
              crossAxisSpacing: 30.0,
              mainAxisSpacing: 20.0,
            ),
            itemBuilder: (context, i) => Card(
                child: Container(
              width: 60,
              height: 20,
              child: Column(
                children: [
                  const Text("Api Call Data"),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Column(
                      //   children: [Text("46"), Text("DATA ADT")],
                      // ),
                      // Column(
                      //   children: [Text("46"), Text("DATA ADT")],
                      // ),
                      // Column(
                      //   children: [Text("46"), Text("DATA ADT")],
                      // )
                    ],
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
