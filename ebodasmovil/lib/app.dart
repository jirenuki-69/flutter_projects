import 'package:ebodasmovil/bloc/ebodas_bloc.dart';
import 'package:ebodasmovil/screens/Account/components/switcher_mode.dart';
import 'package:ebodasmovil/screens/Catalogo/catalogo.dart';
import 'package:ebodasmovil/screens/DetallesProveedor/detalles_proveedor.dart';
import 'package:ebodasmovil/screens/FormularioCita/formulario_cita.dart';
import 'package:ebodasmovil/screens/ImagenesProveedor/imagenes_proveedor.dart';
import 'package:ebodasmovil/screens/SplashScreen/splash_screen.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter/material.dart';

import 'screens/Home/home.dart';
import 'screens/Login/login.dart';
import 'screens/SignUp/sign_up.dart';
import 'theme.dart';

// Form del sign up

class MyApp extends StatelessWidget {

  final ebodasBloc = EbodasBloc();

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return MyInheritedWidget(
      ebodasBloc: ebodasBloc,
      child: AnimatedBuilder(
        animation: ebodasBloc,
        builder: (context, _) {
          return MaterialApp(
            title: 'Ebodas Móvil',
            debugShowCheckedModeBanner: false,
            theme: ebodasBloc.isDarkMode
                    ? darkTheme
                    : lightTheme,
            initialRoute: SplashScreen.routeName,
            routes: {
              SplashScreen.routeName: (context) => SplashScreen(),
              LoginScreen.routeName: (context) => LoginScreen(),
              SignUpScreen.routeName: (context) => SignUpScreen(),
              HomeScreen.routeName: (context) => HomeScreen(),
              DetallesProveedor.routeName: (context) => DetallesProveedor(),
              ImagenesProveedor.routeName: (context) => ImagenesProveedor(),
              FormularioCita.routeName: (context) => FormularioCita(),
              Catalogo.routeName: (context) => Catalogo(),
            },
          );
        }
      ),
    );
  }
}
