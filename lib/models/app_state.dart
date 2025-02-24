import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class SoilMeasurement {
  final int measurementNumber;
  final String irriwatchLink;
  final DateTime date;
  final double latitude;
  final double longitude;
  final double clay;
  final double loam;
  final double sand;
  final String texturalClass;
  final double organicMatter;
  final double bulkDensityTexture;
  final Map<String, Map<String, double>> samples; // "Between Furrows", "Between Plants", "At Root Depth"
  final double fieldResult;
  final double irriwatchResult;
  final double averagePercentageError;
  final String id;

  SoilMeasurement({
    required this.measurementNumber,
    required this.irriwatchLink,
    required this.date,
    required this.latitude,
    required this.longitude,
    required this.clay,
    required this.loam,
    required this.sand,
    required this.texturalClass,
    required this.organicMatter,
    required this.bulkDensityTexture,
    required this.samples,
    required this.fieldResult,
    required this.irriwatchResult,
    required this.averagePercentageError,
    required this.id,
  });

  factory SoilMeasurement.fromJson(Map<String, dynamic> json, String id) {
    Timestamp timestamp = json['date'];
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
    return SoilMeasurement(
      measurementNumber: json['measurementNumber'],
      irriwatchLink: json['irriwatchLink'],
      date: date,
      latitude: json['latitude'],
      longitude: json['longitude'],
      clay: json['clay'],
      loam: json['loam'],
      sand: json['sand'],
      texturalClass: json['texturalClass'],
      organicMatter: json['organicMatter'],
      bulkDensityTexture: json['bulkDensityTexture'],
      samples: Map<String, Map<String, double>>.from(json['samples']),
      fieldResult: json['fieldResult'],
      irriwatchResult: json['irriwatchResult'],
      averagePercentageError: json['averagePercentageError'],
      id: id,
    );
  }
}

class AppState extends ChangeNotifier {
  final db = FirebaseFirestore.instance;

  Future<void> addMeasurement(SoilMeasurement measurement) async {
    var ref = db.collection('soil_measurements').doc();
    await ref.set({
      'measurementNumber': measurement.measurementNumber,
      'irriwatchLink': measurement.irriwatchLink,
      'date': Timestamp.fromDate(measurement.date),
      'latitude': measurement.latitude,
      'longitude': measurement.longitude,
      'clay': measurement.clay,
      'loam': measurement.loam,
      'sand': measurement.sand,
      'texturalClass': measurement.texturalClass,
      'organicMatter': measurement.organicMatter,
      'bulkDensityTexture': measurement.bulkDensityTexture,
      'samples': measurement.samples,
      'fieldResult': measurement.fieldResult,
      'irriwatchResult': measurement.irriwatchResult,
      'averagePercentageError': measurement.averagePercentageError,
    });
  }

  Future<List<SoilMeasurement>> getAllMeasurements() async {
    var event = await db.collection('soil_measurements').get();
    return event.docs.map((doc) => SoilMeasurement.fromJson(doc.data(), doc.id)).toList();
  }

  Stream<List<SoilMeasurement>> getMeasurementsStream() {
    return db.collection('soil_measurements').snapshots().map(
      (snapshot) => snapshot.docs.map(
        (doc) => SoilMeasurement.fromJson(doc.data(), doc.id),
      ).toList(),
    );
  }

  Future<void> updateMeasurement(SoilMeasurement measurement) async {
    await db.collection('soil_measurements').doc(measurement.id).update({
      'measurementNumber': measurement.measurementNumber,
      'irriwatchLink': measurement.irriwatchLink,
      'date': Timestamp.fromDate(measurement.date),
      'latitude': measurement.latitude,
      'longitude': measurement.longitude,
      'clay': measurement.clay,
      'loam': measurement.loam,
      'sand': measurement.sand,
      'texturalClass': measurement.texturalClass,
      'organicMatter': measurement.organicMatter,
      'bulkDensityTexture': measurement.bulkDensityTexture,
      'samples': measurement.samples,
      'fieldResult': measurement.fieldResult,
      'irriwatchResult': measurement.irriwatchResult,
      'averagePercentageError': measurement.averagePercentageError,
    });
  }

  Future<void> deleteMeasurement(String id) async {
    await db.collection('soil_measurements').doc(id).delete();
  }
}
















// class Inscription {
//   final String? userName;
//   final String? schoolName;
//   final String? carrerName;
//   final String? ubication;
//   final String? sede;
//   final DateTime? dateTime;
//   final String id;
//   final String? imageUrl;
//   final String? avatarUrl;
//   Inscription({
//     this.userName,
//     this.schoolName,
//     this.carrerName,
//     this.ubication,
//     this.sede,
//     this.dateTime,
//     this.imageUrl,
//     this.avatarUrl, //+
//     // Sólo los que están loggeados pueden mandar info
//     required this.id,
//   });

//   factory Inscription.fromJson(Map<String, dynamic> json, String id) {
//     Timestamp timestamp = json['time'];
//     var dateTime =
//         DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
//     return Inscription(
//       userName: json['userName'],
//       schoolName: json['schoolName'],
//       carrerName: json['carrerName'],
//       ubication: json['ubication'],
//       sede: json['sede'],
//       dateTime: dateTime,
//       id: id,
//       imageUrl: json['image'],
//       avatarUrl: json['avatar_url'],
//     );
//   }
// }

// class AppState extends ChangeNotifier { 
//   String inscription = 'Edición 2023';
//   String registration = 'Registros';
//   bool loading = true;
//   final db = FirebaseFirestore.instance;

//   AppState() {
//     init();
//   }

//   Future<void> init() async {
//     loading = true;
//     notifyListeners();
//     final prefs = await SharedPreferences.getInstance();
//     inscription = prefs.getString('inscription')!;
//     registration = prefs.getString('registration')!;
//     loading = false;
//     notifyListeners();
//   }

//   Future<void> changeInscription(String newInscription) async {
//     inscription = newInscription;
//     notifyListeners();
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setString('inscription', newInscription);
//     prefs.setBool('hasFinishedOnboarding', true);
//   }

//   /// No voy a convertir esto en una clase para que te dé flexibilidad de guardar
//   /// lo que quieras en el mismo JSON
//   Future<Map<String, dynamic>> getCurrentData() async {
//     var ref = db.collection('inscriptions').doc(inscription);
//     var snapshot = await ref.get();
//     return snapshot.data() ?? {};
//   }

//   Future<Map<String, dynamic>> _getInscriptionJson(
//       {required DateTime time,
//       File? image,
//       String? oldImage,
//       required String userName,
//       required String schoolName,
//       required String carrerName,
//       required String ubication,
//       required String sede}) async {
//     // Primero, subir imagen a Firebase Hosting
//     final auth = FirebaseAuth.instance;
//     String? fileUrl;
//     if (image != null) {
//       final storageRef = FirebaseStorage.instance.ref();
//       final String fileExtension = image.path.split('.').last;
//       final String fileName =
//           '${time.year}-${time.month}-${time.day} ${time.hour}:${time.minute}:${time.second}${auth.currentUser?.email}';
//       final connectivityResult = await Connectivity().checkConnectivity();
//       if (connectivityResult == ConnectionState.none) {
//         final imageString = await image.readAsString();
//         fileUrl = imageString;
//       } else {
//         final imageRef =
//             storageRef.child("registrations/$fileName.$fileExtension");
//         await imageRef.putFile(image);
//         fileUrl = await imageRef.getDownloadURL();
//       }
//     } else if (oldImage != null) {
//       fileUrl = oldImage;
//     }
//     return {
//       // TODO: Agregar los más datos
//       'userName': userName,
//       'schoolName': schoolName,
//       'carrerName': carrerName,
//       'ubication': ubication,
//       'sede': sede,
//       'userName_email': auth.currentUser?.email,
//       'userName_id': auth.currentUser?.uid,
//       'avatar_url': auth.currentUser?.photoURL, //+
//       'time': time,
//       'image': fileUrl,
//     };
//   }

//   Future<void> addInscription({
//     required String userName,
//     required String schoolName,
//     required String carrerName,
//     required String ubication,
//     required String sede,
//     required DateTime time,
//   }) async {
//     db
//         .collection('inscriptions')
//         .doc(inscription)
//         .collection('registrations')
//         .add(
//           await _getInscriptionJson(
//             userName: userName,
//             schoolName: schoolName,
//             time: time,
//             carrerName: carrerName,
//             ubication: ubication,
//             sede: sede,
//           ),
//         );
//   }

//   List<Inscription> _getListOfAllInscriptionsFromDocs(
//       List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
//     final List<Inscription> registrations = [];
//     for (var doc in docs) {
//       registrations.add(Inscription.fromJson(doc.data(), doc.id));
//     }
//     registrations.sort(
//       (a, b) => b.dateTime!.difference(a.dateTime!).inSeconds,
//     );
//     return registrations;
//   }

// // POR HACER
//   List<Inscription> _getListOfInscriptionsFromDocs(
//       List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
//     final List<Inscription> registrations = [];
//     for (var doc in docs) {
//       registrations.add(Inscription.fromJson(doc.data(), doc.id));
//     }
//     registrations.sort(
//       (a, b) => b.dateTime!.difference(a.dateTime!).inSeconds,
//     );
//     return registrations;
//   }

//   Future<List<Inscription>> getAllInscriptions() async {
//     var event = await db
//         .collection('inscriptions')
//         .doc(inscription)
//         .collection('registrations')
//         .get();
//     return _getListOfAllInscriptionsFromDocs(event.docs);
//   }

// // POR HACER:

//   Future<List<Inscription>> getInscriptions() async {
//     var event = await db
//         .collection('inscriptions')
//         .doc(inscription)
//         .collection('registrations')
//         .get();
//     return _getListOfInscriptionsFromDocs(event.docs);
//   }

//   List<Inscription> getAllInscriptionsFromSnapshot(
//       QuerySnapshot<Map<String, dynamic>> snapshot) {
//     return _getListOfAllInscriptionsFromDocs(snapshot.docs);
//   }

// // POR HACER:
//   List<Inscription> getInscriptionsFromSnapshot(
//       QuerySnapshot<Map<String, dynamic>> snapshot) {
//     return _getListOfInscriptionsFromDocs(snapshot.docs);
//   }

//   Stream<QuerySnapshot<Map<String, dynamic>>> getInscriptionsStream() {
//     return db
//         .collection('inscriptions')
//         .doc(inscription)
//         .collection('registrations')
//         .snapshots();
//   }

//   Future<void> updateInscription({
//     required String userName,
//     required String schoolName,
//     required String carrerName,
//     required String ubication,
//     required String sede,
//     required String id,
//     required DateTime time,
//     // File? image,

//     /// En caso de que ya exista un URL de imagen (botón de editar, no crear)
//     // String? oldImage,
//   }) async {
//     await db
//         .collection('inscriptions')
//         .doc(inscription)
//         .collection('registrations')
//         .doc(id)
//         .update(
//           await _getInscriptionJson(
//             userName: userName,
//             time: time,
//             // image: image,
//             // oldImage: oldImage,
//             schoolName: schoolName,
//             carrerName: carrerName,
//             ubication: ubication,
//             sede: sede,
//           ),
//         );
//   }

//   Future<void> deleteInscription({required String id}) async {
//     await db
//         .collection('inscriptions')
//         .doc(inscription)
//         .collection('registrations')
//         .doc(id)
//         .delete();
//   }
// }
