import 'package:flutter/material.dart';

// Map<String, String> parajes = {
//   'El Venturero': 'Nativitas',
//   'El Jardín': 'Nativitas',
//   'Cabaña': 'San Pablo Ixayoc',
//   'Cruz de Atenco': 'San Dieguito',
//   'Canoas altas': 'San Dieguito',
//   'Los Manantiales': 'Tequexquinahuac',
//   'Tlaltlatlately': 'Santa Catarina del Monte',
//   'Agua de Chiqueros': 'Santa Catarina del Monte',
//   'Camino a las Trancas': 'Nativitas',
// };

// Map<String, Widget> roles = {
//   'Visitante': const Icon(Icons.person_search),
//   'Monitor': const Icon(Icons.star),
// };

// List<String> commonimages = [
//   "assets/images/1_venturero.png",
//   "assets/images/2_jardin.png",
//   "assets/images/3_cabana.png",
//   "assets/images/4_cruz.png",
//   "assets/images/5_canoas.png",
//   "assets/images/6_manantiales.png",
//   "assets/images/7_terreno.png",
//   "assets/images/8_chiqueros.png",
//   "assets/images/9_trancas.png", // Cambiar**
// ];

// List<String> commonurl = [
//   "https://goo.gl/maps/WAB9Jy6uvRyWa8kF9",
//   "https://goo.gl/maps/9eTXbdmHCFxVmTUX7",
//   "https://goo.gl/maps/juPjkikLeAS16dPh8",
//   "https://goo.gl/maps/hyRXM3A2UFXSAAys6",
//   "https://goo.gl/maps/QFXycULSkan1JK6c6",
//   "https://goo.gl/maps/vNSSgfQsofatUp7r7",
//   "https://goo.gl/maps/PNVAD8aFkkN84aoy5",
//   "https://goo.gl/maps/4xFZiqJSFhamPsmB8",
//   "https://goo.gl/maps/ropBszb46JPyiRx88", // Cambiar**
// ];

// List<String> parajecolection = [
//   'El Venturero',
//   'El Jardín',
//   'Cabaña',
//   'Cruz de Atenco',
//   'Canoas altas',
//   'Los Manantiales',
//   'Tlaltlatlately',
//   'Agua de Chiqueros',
//   'Camino a las Trancas'
// ];

// List<String> ejidocolection = [
//   'Nativitas',
//   'Nativitas',
//   'San Pablo Ixayoc',
//   'San Dieguito',
//   'San Dieguito',
//   'Tequexquinahuac',
//   'Santa Catarina del Monte',
//   'Santa Catarina del Monte',
//   'Nativitas',
// ];

// Iterator itr = commonimages.iterator;

// Map<String, Widget> cuentas = {
//   'Visitante': const Icon(Icons.person_search, size: 30), //Key
//   'Monitor': const Icon(Icons.star, size: 30), //value
// };

final dateLongAgo = DateTime(2022, 1, 1);
final dateInALongTime = DateTime(3000, 12, 31);

String appName = 'Ecosuelolab';

class AppColors {
  // From dark illustration
  static const Color ecogreen = Color(0xFF008438);
  static const Color ecogray = Color(0xFF535D5F);
  static const Color ecogray1 = Color(0xFF72868A);
  static const Color ecowhite = Color(0xFFF4F4F6);
  static const Color ecotext = Color(0xFF7A7A7B);

  // From light illustration
  static const Color pruple1 = Color(0xFF2C2A6B);
  static const Color purple2 = Color(0xFF345E9D);
  static const Color orange1 = Color(0xFFE6473A);
  static const Color lightBlue = Color(0xFF50A8AE);
  static const Color blue3 = Color(0xFF081A30);
}

ThemeData ecoTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  // brightness: Brightness.dark,
  primaryColor: AppColors.ecogreen,
  primarySwatch: Colors.blue,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.brown,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
);



















// ICONOS AGRÍCOLAS:



// Icons.agriculture,
// Icons.ac_unit
// Icons.access_alarm
// Icons.air
// Icons.bedtime
// Icons.biotech
// Icons.apple
// Icons.yard
// Icons.whatshot
// Icons.wb_sunny_rounded
// Icons.water_drop,
// Icons.verified
// Icons.thermostat
// Icons.tonality _> COLOR
// Icons.texture,
// Icons.salinity

// Icons.Colorize
// Icons.Monitoring
// PestControl
// lead
// Matter