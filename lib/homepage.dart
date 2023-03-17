import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _searchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: ' Search',
        filled: true,
        fillColor: Color.fromARGB(255, 233, 220, 220),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 5,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  Widget _buildCard() {
    return Container(
      height: 200,
      width: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.pexels.com/photos/1525043/pexels-photo-1525043.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
          ),
          fit: BoxFit.fill,
        ),
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 33, 33),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.5,
        title: Text(
          'Welcome Back!!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: [
          Icon(
            Icons.person_outlined,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              _searchBar(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/podcastplayer');
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCard(),
                          SizedBox(
                            width: 10,
                          ),
                          _buildCard(),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCard(),
                          SizedBox(
                            width: 10,
                          ),
                          _buildCard(),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCard(),
                          SizedBox(
                            width: 10,
                          ),
                          _buildCard(),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCard(),
                          SizedBox(
                            width: 10,
                          ),
                          _buildCard(),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCard(),
                          SizedBox(
                            width: 10,
                          ),
                          _buildCard(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
