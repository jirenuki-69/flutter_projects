import 'package:ebodasmovil/screens/Home/Tabs/Citas/citas.dart';
import 'package:ebodasmovil/screens/Home/Tabs/Portafolio/portafolio.dart';
import 'package:ebodasmovil/screens/Home/Tabs/Recomendaciones/recomendaciones.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox.shrink(),
          toolbarHeight: 140,
          flexibleSpace: Header(),
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            tabs: <Tab>[
              Tab(
                text: 'Portafolio',
              ),
              Tab(
                text: 'Recomendaciones',
              ),
              Tab(
                text: 'Citas',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 10,
          ),
          child: TabBarView(
            children: <Widget>[
              Portafolio(),
              Recomendaciones(),
              Citas(),
            ],
          ),
        ),
      ),
    );
  }
}
