import 'package:ecosuelolab/screens/calibration/tutorial_calibration.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/adensity/barrena.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/adensity/calc_density.dart';
import 'package:ecosuelolab/screens/soil/soilparameters/adensity/parafine.dart';
import 'package:flutter/material.dart';

class CalibrationPage extends StatefulWidget {
  const CalibrationPage({super.key});

  @override
  State<CalibrationPage> createState() => _CalibrationPageState();
}

class _CalibrationPageState extends State<CalibrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calibración de Humedad del Suelo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.agriculture,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Método de campo'),
            subtitle: const Text('Obtención de densidad'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CalibrationTutorial()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown[300],
              child: Icon(
                Icons.calculate,
                color: Colors.brown[900],
              ),
            ),
            title: const Text('Verificación'),
            subtitle: const Text('Comparación de IrriWatch y Laboratorio'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DensidadAparenteScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// class CalibrationPage extends StatefulWidget {
//   const CalibrationPage({super.key});

//   @override
//   State<CalibrationPage> createState() => _CalibrationPageState();
// }

// class _CalibrationPageState extends State<CalibrationPage> {
//   // late InAppWebViewController webView;
//   String url =
//       'https://docs.google.com/document/d/1vnr7UVDlcPx_1DjoHr2niNTCjL5DJYS1QZwRVfJy68w/edit?usp=sharing';
//   // double progress = 0;
//   // // String title = '';
//   // dynamic jsResult;

//   // @override
//   // void initState() {
//   //   // title = widget.title;
//   //   super.initState();
//   // }

//   // @override
//   // void dispose() {
//   //   super.dispose();
//   // }

//   // void cleanUp() {
//   //   webView.injectCSSCode(
//   //     source: '''
//   //       #docs-ml-header-id {
//   //         display: none;
//   //       }
//   //       .docs-ml-promotion {
//   //         display: none;
//   //       }
//   //       .app-container {
//   //         margin: 0 0 0 0;
//   //       }
//   //       ''',
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.brown,
//         title: const Text(
//           'Ecosuelolab',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: InAppWebView(
//               initialUrlRequest: URLRequest(url: WebUri(url)),
//               // onWebViewCreated: (InAppWebViewController controller) {
//               //   webView = controller;
//               // },
//               // onLoadStart: (controller, url) {
//               //   setState(() {
//               //     this.url = url.toString();
//               //   });
//               //   cleanUp();
//               // },
//               // onLoadStop: (controller, url) async {
//               //   setState(() {
//               //     this.url = url.toString();
//               //   });
//               //   cleanUp();
//               // },
//               // onProgressChanged:
//               //     (InAppWebViewController controller, int progress) {
//               //   setState(() {
//               //     this.progress = progress / 100;
//               //   });
//               //   cleanUp();
//               // },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
