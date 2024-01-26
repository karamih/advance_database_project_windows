import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddOrderPage extends StatelessWidget {
  const AddOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: const Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                SizedBox(
                  width: 230,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Customer name '),
                        SizedBox(
                          width: 300,
                          // height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Customer name',
                                border: OutlineInputBorder()),
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 40,),

                    SizedBox(
                      width: 900,
                      child: Divider(
                        thickness: 2,
                        height: 2,
                        color: Colors.blueAccent,
                      ),
                    ),

                    SizedBox(height: 40,),

                    Row(
                      children: [
                        Text('Item name '),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Item name',
                                border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text('Total price '),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            enabled: false,
                            decoration:
                                InputDecoration(border: OutlineInputBorder(),hintText: '60.00 \$'),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
