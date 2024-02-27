import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const MyHomePage(title: 'Aula 3'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/cd/76/ec/museu-das-comunicacoes.jpg?w=1200&h=1200&s=1",
                fit: BoxFit.contain),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Brasil",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Ji-Paraná/RO")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Text("124,33K")
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: const Column(
                    children: [
                      Icon(Icons.call, color: Colors.blue),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Ligar")
                    ],
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: const Column(
                    children: [
                      Icon(Icons.share, color: Colors.blue),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Compartilhar")
                    ],
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: const Column(
                    children: [
                      Icon(Icons.map, color: Colors.blue),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Endereço")
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  "O museu Das Telecomunicações Marechal Rondon em Ji-Paraná, o Brasil é um museu dedicado à história e evolução das telecomunicações na região. O museu foi fundado em 2008 e está alojado na antiga sede da Companhia de Telecomunicações Brasileiras (Telebras). O museu é nomeado em homenagem a Marechal Rondon, uma figura proeminente na história militar e de telecomunicações brasileiras..."),
            )
          ],
        ),
      ),
    );
  }
}
