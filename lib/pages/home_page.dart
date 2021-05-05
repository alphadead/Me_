import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flip_card/flip_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            top: false,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Home'),
                backgroundColor: Colors.indigo[300],
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: const FractionalOffset(0.1, 0.8),
                      end: const FractionalOffset(0.8, 0.1),
                      colors: <Color>[
                        Colors.white70,
                        Colors.blue[400],
                      ],
                    ),
                  ),
                ),
              ),
              body: InkWell(
                child: Container(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.0,
                          ),
                          const Divider(
                            height: 1,
                            thickness: 2,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(25, 25, 20, 0.8),
                          ),
                          Center(
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Container(
                                  color: Colors.indigo[100],
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          InkWell(
                                            child: Container(
                                              child: Title(
                                                color: Colors.indigo,
                                                child: Container(
                                                  child: Text(
                                                    "About",
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Card(
                                            color: Colors.indigo[300],
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                "Who I am,\nMy educations,\nMy hobbies,\neverything about me.",
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: context.canvasColor),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors
                                                  .indigo[300], // background
                                              // foreground
                                            ),
                                            child: Text(
                                              "Know Me!",
                                              style: TextStyle(
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: context.canvasColor),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          About()));
                                            },
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => About()));
                              },
                            ),
                          ),
                          const Divider(
                            height: 1,
                            thickness: 2,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(25, 25, 20, 0.8),
                          ),
                          Center(
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Container(
                                  color: Colors.indigo[100],
                                  child: Center(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70.0,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Title(
                                                color: Colors.indigo[200],
                                                child: Text(
                                                  "Work",
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                            SizedBox(
                                              height: 6.0,
                                            ),
                                            Card(
                                              color: Colors.indigo[300],
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Text(
                                                  "What are the projects\nthat I've worked on\nincluding every stack \nI've ever used.",
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      color:
                                                          context.canvasColor),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors
                                                    .indigo[300], // background
                                                // foreground
                                              ),
                                              child: Text(
                                                "See my Work!",
                                                style: TextStyle(
                                                    fontSize: 24.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: context.canvasColor),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Work()));
                                              },
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Work()));
                              },
                            ),
                          ),
                          const Divider(
                            height: 1,
                            thickness: 2,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(25, 25, 20, 0.8),
                          ),
                          InkWell(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Container(
                                  color: Colors.indigo[100],
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Title(
                                              color: Colors.blue,
                                              child: Text(
                                                "Experience",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Card(
                                            color: Colors.indigo[300],
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Want to know about \nwhere I gained \nexperience from, \nwhere I volunteered/\nworked.",
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: context.canvasColor),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors
                                                  .indigo[300], // background
                                              // foreground
                                            ),
                                            child: Text(
                                              "Visit!",
                                              style: TextStyle(
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: context.canvasColor),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Experience()));
                                            },
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            thickness: 2,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(25, 25, 20, 0.8),
                          ),
                          InkWell(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Container(
                                  color: Colors.indigo[100],
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Title(
                                              color: Colors.blue,
                                              child: Text(
                                                "Contact me",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Card(
                                            color: Colors.indigo[300],
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Want to contact me \nor connect with\nme on different \nplatforms.",
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: context.canvasColor),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors
                                                  .indigo[300], // background
                                              // foreground
                                            ),
                                            child: Text(
                                              "Go ahead!",
                                              style: TextStyle(
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: context.canvasColor),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ContactMe()));
                                            },
                                          ),
                                          SizedBox(height: 5.0),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            thickness: 2,
                            indent: 0,
                            endIndent: 0,
                            color: Color.fromRGBO(25, 25, 20, 0.8),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              drawer: Drawer(
                child: ListView(
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      accountName: Text(
                        'Alpha Dead',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      accountEmail: Text(''),
                      currentAccountPicture: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/pic4.jpeg'),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/headdrawer.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'About',
                        style: TextStyle(fontSize: 18),
                      ),
                      leading: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => About()));
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Work',
                        style: TextStyle(fontSize: 18),
                      ),
                      leading: Icon(
                        Icons.work,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Work()));
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Experience',
                        style: TextStyle(fontSize: 18),
                      ),
                      leading: Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Experience()));
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.contact_mail_rounded,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Contact Me',
                        style: TextStyle(fontSize: 18),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactMe()));
                      },
                    )
                  ],
                ),
              ),
            )));
  }
}

class ContactMe extends StatefulWidget {
  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://alphadead16@gmail.com';
    const String github = 'https://github.com/alphadead';
    const String linkedIn =
        'https://www.linkedin.com/in/adarsh-gupta-b776571a5/';
    const String quora = 'https://www.quora.com/profile/Adarsh-Gupta-506';
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact ME"),
          backgroundColor: Colors.indigo[300],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset('assets/images/contact.jpg'),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigo, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.indigo, width: 2.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: "Enter username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Username cannot be empty";
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.indigo, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "1234567890",
                          labelText: "Contact no.",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Contact cannot be empty";
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.indigo, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "abc@xyz.com",
                          labelText: "Email Id",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Email cannot be empty";
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.indigo, width: 2.0),
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "Message you want to convey...",
                          labelText: "Description",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Description cannot be empty";
                          }

                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          "Your message was sent",
                          style: TextStyle(fontSize: 15.0),
                        ),
                        backgroundColor: Colors.indigo[300],
                        shape: StadiumBorder(),
                        behavior: SnackBarBehavior.floating,
                        margin: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0)));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo[300],
                    elevation: 5.0,
                  ),
                  child: Text(
                    "Contact Me",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(height: 40.0),
                SignInButtonBuilder(
                    text: 'See my work on Github',
                    icon: FontAwesomeIcons.github,
                    backgroundColor: Color(0xFF444444),
                    onPressed: () => setState(() {
                          _launchInBrowser(github);
                        })),
                SignInButtonBuilder(
                    text: 'Connect me on LinkedIn',
                    icon: FontAwesomeIcons.linkedin,
                    backgroundColor: Color(0xFF007BB6),
                    onPressed: () => setState(() {
                          _launchInBrowser(linkedIn);
                        })),
                SignInButtonBuilder(
                  text: 'Mail for collaboration',
                  icon: Icons.email,
                  backgroundColor: Color(0xFF007BB6),
                  onPressed: () => setState(() {
                    _launchInBrowser(toLaunch);
                  }),
                ),
                SignInButtonBuilder(
                  text: 'See my answers',
                  icon: FontAwesomeIcons.quora,
                  onPressed: () => setState(() {
                    _launchInBrowser(quora);
                  }),
                  iconColor: Colors.white,
                  backgroundColor: Colors.red.shade800,
                ),
              ],
            ),
          ),
        ));
  }

  Future<void> _launchInBrowser(String rec) async {
    if (await canLaunch(rec)) {
      await launch(
        rec,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $rec';
    }
  }
}

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Experience"),
          backgroundColor: Colors.indigo[300],
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              CarouselSlider(
                items: [
                  FlipCard(
                    flipOnTouch: true,
                    direction: FlipDirection.HORIZONTAL,
                    front: Container(
                        height: 700,
                        width: 350,
                        color: Colors.indigo,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset('assets/images/contact.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              Image.asset('assets/images/work.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                  "This is an amazing work done by AlphaUt eirmod eos diam eirmod diam invidunt. Labore stet nonumy sadipscing eirmod, magna sit stet invidunt dolor et duo eirmod..",
                                  style: TextStyle(fontSize: 20.0)),
                            ],
                          ),
                        )),
                    back: Container(
                        height: 700,
                        width: 350,
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset('assets/images/contact.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              Image.asset('assets/images/work.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                  "This is an amazing work done by AlphaUt eirmod eos diam eirmod diam invidunt. Labore stet nonumy sadipscing eirmod, magna sit stet invidunt dolor et duo eirmod..",
                                  style: TextStyle(fontSize: 20.0)),
                            ],
                          ),
                        )),
                  ),
                  FlipCard(
                    flipOnTouch: true,
                    direction: FlipDirection.HORIZONTAL,
                    front: Container(
                        height: 700,
                        width: 350,
                        color: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset('assets/images/contact.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              Image.asset('assets/images/work.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                  "This is an amazing work done by AlphaUt eirmod eos diam eirmod diam invidunt. Labore stet nonumy sadipscing eirmod, magna sit stet invidunt dolor et duo eirmod..",
                                  style: TextStyle(fontSize: 20.0)),
                            ],
                          ),
                        )),
                    back: Container(
                        height: 700,
                        width: 350,
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset('assets/images/contact.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              Image.asset('assets/images/work.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                  "This is an amazing work done by AlphaUt eirmod eos diam eirmod diam invidunt. Labore stet nonumy sadipscing eirmod, magna sit stet invidunt dolor et duo eirmod..",
                                  style: TextStyle(fontSize: 20.0)),
                            ],
                          ),
                        )),
                  ),
                  FlipCard(
                    flipOnTouch: true,
                    direction: FlipDirection.HORIZONTAL,
                    front: Container(
                        height: 700,
                        width: 350,
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset('assets/images/contact.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              Image.asset('assets/images/work.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                  "This is an amazing work done by AlphaUt eirmod eos diam eirmod diam invidunt. Labore stet nonumy sadipscing eirmod, magna sit stet invidunt dolor et duo eirmod..",
                                  style: TextStyle(fontSize: 20.0)),
                            ],
                          ),
                        )),
                    back: Container(
                        height: 650,
                        width: 350,
                        color: Colors.yellow,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset('assets/images/contact.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              Image.asset('assets/images/work.jpg'),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(25, 25, 20, 0.8),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                  "This is an amazing work done by AlphaUt eirmod eos diam eirmod diam invidunt. Labore stet nonumy sadipscing eirmod, magna sit stet invidunt dolor et duo eirmod..",
                                  style: TextStyle(fontSize: 20.0)),
                            ],
                          ),
                        )),
                  )
                ],
                options: CarouselOptions(
                  height: 700.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.linear,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 400),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          ),
        ));
  }
}

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Work"),
        backgroundColor: Colors.indigo[300],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: context.canvasColor,
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  Column(
                    children: [
                      SizedBox(height: 40.0),
                      SlimyCard(
                          topCardHeight: 320.0,
                          color: Colors.indigo[300],
                          topCardWidget:
                              topCardWidget('assets/images/experience.jpg'),
                          bottomCardWidget: bottomCardWidget()),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 40.0),
                      SlimyCard(
                          topCardHeight: 320.0,
                          color: Colors.indigo[300],
                          topCardWidget:
                              topCardWidget('assets/images/work.jpg'),
                          bottomCardWidget: bottomCardWidget()),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 40.0),
                      SlimyCard(
                          topCardHeight: 320.0,
                          color: Colors.indigo[300],
                          topCardWidget:
                              topCardWidget('assets/images/about.jpg'),
                          bottomCardWidget: bottomCardWidget()),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 40.0),
                      SlimyCard(
                          topCardHeight: 320.0,
                          color: Colors.indigo[300],
                          topCardWidget:
                              topCardWidget('assets/images/contact.jpg'),
                          bottomCardWidget: bottomCardWidget()),
                    ],
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 700.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.linear,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 400),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About"),
          backgroundColor: Colors.indigo[300],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: context.canvasColor,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Card(
                      color: Colors.indigo[200],
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.0,
                          ),
                          Image.asset(
                            'assets/images/work.jpg',
                            height: 150.0,
                            width: 140.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Early Life",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "I am a first year student at\nChandigarh University, \npursuing my BE. in\nComputer Science.\nI have been fascinated by\nprogramming since the first\ntime I was introduced to it.\nI am a Web-Developer and \na Competitive-Programmer.\nI completed my schooling\ntill class XII from D.B.M.S.\nEnglish School. I also love\nSports and am a \nNational-Awardee.",
                                style: TextStyle(fontSize: 15.0),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Card(
                      color: Colors.indigo[200],
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.0,
                          ),
                          Image.asset(
                            'assets/images/work.jpg',
                            height: 150.0,
                            width: 140.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Early Life",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "I am a first year student at\nChandigarh University, \npursuing my BE. in\nComputer Science.\nI have been fascinated by\nprogramming since the first\ntime I was introduced to it.\nI am a Web-Developer and \na Competitive-Programmer.\nI completed my schooling\ntill class XII from D.B.M.S.\nEnglish School. I also love\nSports and am a \nNational-Awardee.",
                                style: TextStyle(fontSize: 15.0),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Card(
                      color: Colors.indigo[200],
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.0,
                          ),
                          Image.asset(
                            'assets/images/work.jpg',
                            height: 150.0,
                            width: 140.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Early Life",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "I am a first year student at\nChandigarh University, \npursuing my BE. in\nComputer Science.\nI have been fascinated by\nprogramming since the first\ntime I was introduced to it.\nI am a Web-Developer and \na Competitive-Programmer.\nI completed my schooling\ntill class XII from D.B.M.S.\nEnglish School. I also love\nSports and am a \nNational-Awardee.",
                                style: TextStyle(fontSize: 15.0),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      SlimyCard(
                        topCardHeight: 320.0,
                        color: Colors.indigo[300],
                        topCardWidget:
                            topCardWidget('assets/images/contact.jpg'),
                        bottomCardWidget: bottomCardWidget(),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget topCardWidget(String imagePath) {
  return Column(
    children: <Widget>[
      SizedBox(
        height: 10.0,
      ),
      Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(imagePath)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ],
        ),
      ),
      SizedBox(height: 20.0),
      Text(
        'Work',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 5.0),
      Center(
        child: Text(
          'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications'
          ' for mobile, web, and desktop from a single codebase.',
          style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 18,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}

Widget bottomCardWidget() {
  return Column(
    children: [
      SizedBox(height: 15.0),
      Text(
        'WeatherMate',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 15),
      Expanded(
        child: Text(
          'FlutterDevs specializes in creating cost-effective and efficient '
          'applications with our perfectly crafted,creative and leading-edge '
          'flutter app development solutions for customers all around the globe.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
