import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:i_baza/core/database/objectbox.dart';
import 'package:i_baza/core/injector/set_up_locator.dart';
import 'package:i_baza/core/injector/storage_repository.dart';
import 'package:i_baza/features/authentication/data/models/authenticated_user.dart';
import 'package:i_baza/features/pages/onboarding/onboarding_1.dart';
import 'package:image_picker/image_picker.dart';

import 'core/adapter/hive_type_adapter.dart';
import 'features/pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerAdapters();

  await HiveSingleton.getInstance();
  await LocalDataBase.getInstance();
  await initHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: '12',)
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? avatar;

 Future<void> pickAvatar()async{
   ImagePicker imagePicker = ImagePicker();
   final file = await imagePicker.pickImage(source: ImageSource.gallery);
   if(file != null){
     setState(() {
       avatar = File.fromUri(Uri.file(file.path));
     });
   }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
          children: [
            const SizedBox(height: 20,),
            Align(
              child: Container(
                  width: 150,
                  height: 150,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1,color: Colors.grey),
                  ),
                  child: avatar == null ? const Icon(
                    Icons.person,size: 100,
                    color: Colors.grey,
                  ) : Image.file(avatar!,fit: BoxFit.cover,)
              ),
            )

          ],
    ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'Is Authenticated : ${HiveSingleton.getAutStatus()}',
      //       ),
      //       Text(
      //         'Is Hive  : ${box?.get('is_hive', defaultValue: 'incorrect')}',
      //       ),
      //       Text(
      //         '  ${box?.get('auth_user')}',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickAvatar,
        tooltip: 'Choose avatar',
        child: const Icon(Icons.add),
      )
    );
  }
}
