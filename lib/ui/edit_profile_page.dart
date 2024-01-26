import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

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
                  width: 600,
                  height: 450,
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
                          'Edit Profile',
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
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'First name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Jack',
                                            border: OutlineInputBorder()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Last name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Jones',
                                            border: OutlineInputBorder()),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Age',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: '32',
                                            border: OutlineInputBorder()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Gender',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: 'M',
                                            border: OutlineInputBorder()),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Phone number',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: '09171112233',
                                            border: OutlineInputBorder()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: '123456789',
                                            border: OutlineInputBorder()),
                                      ),
                                    ],
                                  ),
                                ),
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
                                    color:
                                        const Color.fromRGBO(61, 115, 209, 1),
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
                                    'Edit',
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
