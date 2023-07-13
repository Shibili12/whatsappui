import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: listview(),
    );
  }
}

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("whatsapp UI"),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text("person $index"),
              subtitle: Text("message $index"),
              leading: CircleAvatar(
                radius: 30,
                // backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                    "https://www.teltarif.de/img/arch/2022/kw47/whatsapp-avatar-update-beta-android-anleitung-1lmp2.jpg"),
              ),
              trailing: Text("1$index:00"),
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 50,
        ),
      ),
    );
  }
}
