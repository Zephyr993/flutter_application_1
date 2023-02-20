import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
    void item(int index) {
    setState(() {
      current = index;
    });
  }
  @override
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anxiety Go"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text(
          "Anxiety Go",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items:const [
        BottomNavigationBarItem(
          label: "Today",
          icon: Icon(Icons.album_rounded),
        ),
        BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)
        ),
        
      ],
      currentIndex: current,
      fixedColor: Colors.red,
      onTap: item
      
      
      
      )
    );
  }
}
