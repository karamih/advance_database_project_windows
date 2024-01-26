import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddClientPage extends StatelessWidget {
  const AddClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 230,
                ),
                Container(
                  width: 500,
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 60,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(61, 115, 209, 1),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15))),
                        child: const Text(
                          'Add Client',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'First name',
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Last name',
                                        border: OutlineInputBorder()),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Phone number',
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Gender',
                                        border: OutlineInputBorder()),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 85,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(61, 115, 209, 1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  child: const Text(
                                    'Add',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
