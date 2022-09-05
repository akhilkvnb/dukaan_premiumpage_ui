import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class screen_dukaan_premium extends StatelessWidget {
  const screen_dukaan_premium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.arrow_back),
        title: const Center(
          child: Text('Dukaan Premium'),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 70,
                width: double.infinity,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue),
                                  child: const Icon(
                                    Icons.shopping_bag,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: const [
                                  Text(
                                    'dukaan',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 30,
                                    ),
                                    child: Text(
                                      'PREMIUM',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: const [
                              Text(
                                'Get Dukaan Premium for just',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                '₹ 4,999/Year',
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: const [
                              Text(
                                'All the advanced features for scaling your',
                                style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                'business',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Row(
              children: const [
                Text(
                  'Features',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    child: Icon(icon[index], color: Colors.blue, size: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  title: Text(
                    text[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(subtitle[index]),
                );
              },
              separatorBuilder: (BuildContext, int index) => Divider(),
              itemCount: 4),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                Text(
                  'What is Dukaan Premium?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Image.asset('asset/imgs.png'),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Frequently asked questions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            title: Text('What Type of businesses use Dukaan\n Premium'),
            subtitle: Text(
                ' dukaan corters to a wide varity of sellers. Be it a smallgrocery store orbig legacy band-anyone Who wants to sell their products/services online-Dukaan is the perfect platform for you.'),
            trailing: Icon(Icons.remove),
          ),
          ListView.separated(
            shrinkWrap: true,
            primary: false,
            itemCount: 5,
            separatorBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Text(texts[index]),
                trailing: const Icon(Icons.add),
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Need helps ? Get in touch',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                height: 70,
                width: 150,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.chat_bubble_outline_outlined),
                      Text('Live chat')
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                height: 70,
                width: 150,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.phone_outlined),
                      Text('Phone call')
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Select Domain',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Get Premium'))
            ],
          )
        ],
      ),
    );
  }
}

List<IconData> icon = <IconData>[
  Icons.language_rounded,
  Icons.verified_outlined,
  Icons.laptop_chromebook_outlined,
  Icons.headphones_outlined
];
List<String> text = <String>[
  'Custom domain name',
  'Verified seller badge',
  'Dukaan for PC',
  'Priority support',
];
List<String> subtitle = <String>[
  'Get your own custom domain and build your brand on the internet',
  'Get green verified badge under your store name and build trust',
  'Access all the exclusive premium features on Dukaan for PC',
  'Get your questions resolved with our prority customer support'
];
List<String> texts = <String>[
  'What is your refund policy ?',
  'Will there be an automatic charge after the \n paid trail?',
  'what payment method do you offer?',
  'what happen when my free trail ends?',
  'what are the terms for the customer domain ?'
];
