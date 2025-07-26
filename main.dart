import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.favorite_border,
              size: 30,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.messenger_outline_sharp,
              color: Colors.black,
              size: 30,
            ),
          ],
          leading: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1280px-Instagram_logo.svg.png",
            height: 250,
            width: 500,
          ),
        ),
        //left to right
        body: Column(
          children: [
            Container(
              height: 100,
              width: 350,
              //color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    buildContainer(
                        "https://static.vecteezy.com/system/resources/previews/020/213/738/non_2x/add-profile-picture-icon-upload-photo-of-social-media-user-vector.jpg"),
                    SizedBox(
                      width: 5,
                    ),
                    buildContainer(
                        "data:image/jpeg;base64,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"),
                    SizedBox(
                      width: 5,
                    ),
                    buildContainer(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvPdsr_CLSUy9ZLQX5nLEaMkFTIG0Sbxx_wA&s"),
                    SizedBox(
                      width: 5,
                    ),
                    buildContainer(
                        "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    SizedBox(
                      width: 5,
                    ),
                    buildContainer(
                        "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    buildContainer(
                        "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    buildContainer(
                        "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    buildContainer(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShNsxgjp3aOzkfejZMxIFBbpiKhTGDg6w7RA&s"),
                  ],
                  //post picture
                ),
              ),
            ),
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEQro75iSdoV9FfHTpJyhNhbzGmpC0I9PABkOHvjBiUW3heFrs6UlRIEbJP1mwsSBbTnI&usqp=CAU"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 55,
                  width: 360,
                  //color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 60,
                        //color: Colors.black,
                        child: Icon(
                          Icons.favorite_border,
                          size: 25,
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 60,
                        //color: Colors.black,
                        child: Icon(
                          Icons.chat_bubble_outline_outlined,
                          size: 25,
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 60,
                        //color: Colors.black,
                        child: Icon(
                          Icons.send_rounded,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(img) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
          image: NetworkImage(
            img,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
