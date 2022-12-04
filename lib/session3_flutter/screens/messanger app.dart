import 'package:flutter/material.dart';

class MessengerApp extends StatelessWidget {
  const MessengerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/Ahmed.jpg',
                  ),
                  radius: 22.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 9.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 7.0,
                    child: Text(
                      '5',
                      style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 15.0,
            ),
            (const Text(
              'Chats',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
            ))
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 20.0,
            ),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(
                  width: 15.0,
                ),
                CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.grey.shade800,
                ),
                child: Row(children: [
                  IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      onPressed: () {}),
                  const Text('Search',
                      style: TextStyle(color: Colors.grey, fontSize: 15.0))
                ]),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildHorChatItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10.0,
                        ),
                    itemCount: 10),
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 15.0,
                      ),
                  itemCount: 15),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget buildChatItem() =>
    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage('assets/images/Ahmed.jpg')),
      const SizedBox(
        width: 10.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Messenger User',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const [
                Text(
                  'How are you ....',
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 15.0, end: 5.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 2.0,
                  ),
                ),
                Text('02:00 AM',
                    style: TextStyle(
                      color: Colors.white,
                    ))
              ],
            ),
          ],
        ),
      )
    ]);

Widget buildHorChatItem() => SizedBox(
      width: 60.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('assets/images/Ahmed.jpg')),
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Messenger User',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
