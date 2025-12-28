import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> danhsach = ['Banh keo', 'Bot Giat'];
    TextEditingController textEditingController = TextEditingController();
    void addDanhSach() {
      setState(() {
        danhsach.add(textEditingController.text);
      });
    }

    return Scaffold(
      appBar: AppBar(title: Text('Danh sách các mặt hàng ')),
      body: Column(
        children: [
          ListView.builder(
            itemBuilder: (context, index) => Text(danhsach[index]),
            itemCount: danhsach.length,
          ),
          SizedBox(
            width: 100,
            child: TextField(controller: textEditingController),
          ),
          ElevatedButton(
            onPressed: () {
              addDanhSach();
            },
            child: Text('Thêm'),
          ),
        ],
      ),
    );
  }
}
