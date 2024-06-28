import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_logic.dart';
import 'state_detail_screen.dart';
import 'theme_logic.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      body: _buildBody(),
    );
  }

  Widget _buildDrawer() {
    int theme = context.watch<ThemeLogic>().theme;
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Icon(Icons.face)),
          ListTile(
            leading: Icon(Icons.phone_android_outlined),
            title: Text("Change To System Mode"),
            trailing: theme == 0 ? Icon(Icons.check) : null,
            onTap: () {
              context.read<ThemeLogic>().changeToSystem();
            },
          ),
          ListTile(
            leading: Icon(Icons.light_mode),
            title: Text("Change To Light Mode"),
            trailing: theme == 1 ? Icon(Icons.check) : null,
            onTap: () {
              context.read<ThemeLogic>().changeToLight();
            },
          ),
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("Change To Dark Mode"),
            trailing: theme == 2 ? Icon(Icons.check) : null,
            onTap: () {
              context.read<ThemeLogic>().changeToDark();
            },
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("State Screen"),
      actions: [
        IconButton(
          onPressed: () {
            context.read<CounterLogic>().decrease();
          },
          icon: Icon(Icons.remove),
        ),
        IconButton(
          onPressed: () {
            context.read<CounterLogic>().increase();
          },
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StateDetailScreen(),
              ),
            );
          },
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }

  Widget _buildBody() {
    int counter = context.watch<CounterLogic>().counter;
    return Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Joker: Folie à Deux",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "Failed comedian Arthur Fleck meets the love of his life, Harley Quinn, while incarcerated at Arkham State Hospital. Upon his release, the two of them embark on a doomed romantic misadventure.",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "After murdering Murray Franklin live on television, Arthur Fleck is incarcerated in Arkham State Hospital, where he meets Harleen Quinzel. The two fall madly in love and experience musical madness through their shared delusions, while Fleck's followers start a movement to free him from Arkham, ultimately giving rise to the Clown Prince of Crime's criminal empire.",
            ),

          ],
        ),
      ),
    );
  }
}
