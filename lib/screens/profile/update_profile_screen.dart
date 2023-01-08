import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../assets/images/image_strings.dart';
import 'widgets/profile_menu.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text('Rediger profil',
            style: Theme.of(context).textTheme.headline4),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: <Widget>[
                Stack(
                  // Fra Colum til Stack
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage(tProfileImage),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue.withOpacity(0.1),
                          ),
                          child: const Icon(LineAwesomeIcons.camera,
                              size: 20, color: Colors.black)),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text('Fulde navn'),
                            prefixIcon: Icon(LineAwesomeIcons.user)),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text('E-Mail'),
                            prefixIcon: Icon(LineAwesomeIcons.envelope_1)),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text('Telefon nr.'),
                            prefixIcon: Icon(LineAwesomeIcons.phone)),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text('Kodeord'),
                            prefixIcon: Icon(LineAwesomeIcons.fingerprint)),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () =>
                              Get.to(() => const UpdateProfileScreen()),
                          style: ElevatedButton.styleFrom(
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text(
                            'Rediger profil',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(
                            text: 'Blev medlem',
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                  text: ' Dato?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12))
                            ],
                          )),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red.withOpacity(0.1),
                              elevation: 0,
                              onPrimary: Colors.red,
                              shape: const StadiumBorder(),
                              side: BorderSide.none,
                            ),
                            child: const Text('Slet'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
