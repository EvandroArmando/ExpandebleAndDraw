import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  List<ExpansionItem> items = <ExpansionItem>[
    ExpansionItem(
        body: "1 Linha", header: "Aqui é onde o  primeiro expanded é feiro"),
    ExpansionItem(
        body: "2 Linha", header: "Aqui é onde o  segundo expanded é feiro"),
    ExpansionItem(
        body: "3 Linha", header: "Aqui é onde o  terceiro expanded é feiro"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      drawer: Drawer(
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 0,
                  height: 120,
                  color: Colors.red,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Title(
                            color: Colors.blue,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person_add_alt_1_rounded,
                                      color: Colors.white,
                                      size: 40,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Evandro Armando",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Treinamento Evolium Academy",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.red.shade400,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text("Página inicial"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.red.shade400,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Minha conta"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 12,
        actions: [],
        backgroundColor: Colors.green,
        shadowColor: Colors.black,
        title: Title(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.home)],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:18),
        child: ListView(
          children: [tudoCerto()],
        ),
      ),
    );
  }

  ExpansionPanelList tudoCerto() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          items[index].isExpanded = !items[index].isExpanded;
        });
      },
      children: items.map((ExpansionItem item) {
        return ExpansionPanel(
          
          headerBuilder: (BuildContext context, bool isExpanded) {
            return Container(
              child: Text(item.header),
            );
          },
          isExpanded: item.isExpanded,
          body: Container(
            child: Text(item.body),

          ),

        );
      }).toList(),

    );
  }
}

class ExpansionItem {
  bool isExpanded;
  final String header;
  final String body;

  ExpansionItem(
      {this.isExpanded: false, required this.header, required this.body});
}
