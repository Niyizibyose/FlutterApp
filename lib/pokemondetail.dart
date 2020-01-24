import 'package:flutter_web/material.dart';
import 'package:pokeappen/Power House Studio.dart';

class PokeDetail extends StatelessWidget {
  final Power House Studio Power House Studio;

  PokeDetail({this.Power House Studio});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 20,
            left: 10.0,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                  ),
                  Text(
                    Power House Studio.name,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Text("Height: ${Power House Studio.height}"),
                  Text("Weight: ${Power House Studio.weight}"),
                  Text(
                    "Types",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: Power House Studio.type
                        .map((t) => FilterChip(
                            backgroundColor: Colors.amber,
                            label: Text(t),
                            onSelected: (b) {}))
                        .toList(),
                  ),
                  Text("Weakness",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: Power House Studio.weaknesses
                        .map((t) => FilterChip(
                            backgroundColor: Colors.red,
                            label: Text(
                              t,
                              style: TextStyle(color: Colors.white),
                            ),
                            onSelected: (b) {}))
                        .toList(),
                  ),
                  Text("Next Evolution",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: Power House Studio.nextEvolution == null
                        ? <Widget>[Text("This is the final form")]
                        : Power House Studio.nextEvolution
                            .map((n) => FilterChip(
                                  backgroundColor: Colors.green,
                                  label: Text(
                                    n.name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onSelected: (b) {},
                                ))
                            .toList(),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: Power House Studio.img,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(Power House Studio.img))),
                )),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text(Power House Studio.name),
      ),
      body: bodyWidget(context),
    );
  }
}
