import "package:video1/audioCallScreen.dart";
import "package:video1/videoCallScreen.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff739fd9),
        title: Text(
          "Calls with doctor",
          style: TextStyle(
            fontFamily: 'Script MT',
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "",
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            //////////
            "90 555 000 00 00",
            style: Theme.of(context).textTheme.headline6,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoCallScreen()));
                  },
                  icon: Icon(
                    Icons.video_call,
                    size: 44,
                  ),
                  color: Color(0xff739fd9),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AudioCallScreen()));
                  },
                  icon: Icon(
                    Icons.phone,
                    size: 35,
                  ),
                  color: Color(0xff739fd9),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
