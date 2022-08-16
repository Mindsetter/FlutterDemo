import 'package:flutter/material.dart';

void main() {
  runApp(
     const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "New Project",
        home: FavoriteCity(),
      )
  )
;
}

class FavoriteCity extends StatefulWidget {
  const FavoriteCity({Key? key}) : super(key: key);

  @override
  State<FavoriteCity> createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";
  final _currencies =  ["Cedi", "Dollar", "Naira", "other"];
  var _currentItemSelected = "Cedi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful App Example"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            // Drop Down Button Drop Down Button Drop Down Button
            DropdownButton<String>(
                items: _currencies.map((String dropDownMenuItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownMenuItem,
                    child: Text(dropDownMenuItem),
                  );
                }).toList(),

              onChanged: (String? newValueSelected) {
                   setState(() {
                     _currentItemSelected = newValueSelected!;
                   });
              },
              value: _currentItemSelected,
            ),
            // Drop Down Button Drop Down Button Drop Down Button
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child:   Text(
                "Your best city is $nameCity",
                style: const TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
