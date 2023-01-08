import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:mob_eye/assets/images/image_strings.dart';
import 'package:get/get.dart';

import '../features/authentication/auth.dart';
import 'profile/update_profile_screen.dart';
import 'profile/widgets/profile_menu.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  Widget _signOutButton() {
    return ElevatedButton(onPressed: signOut, child: const Text('Log ud'));
  }
  
  Future<void> signOut() async {
    await Auth().signOut();
  }

  

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: <Widget>[
                Stack( // Fra Colum til Stack
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'lib/assets/images/MobEye_logo.jpg'
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
                                   child: const Icon(
                                       LineAwesomeIcons.alternate_pencil,
                                       size: 20, 
                                       color: Colors.black)),
                     )
                  ],
                ),
                const SizedBox(height: 10),
                Text('Jonathan Busk'),
                Text('code@hotmail.com'),
                const SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const UpdateProfileScreen()),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue, shape: const StadiumBorder()),
                        child: const Text('Rediger profil'),
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 10),

                // MENU
                ProfileMenuWidget(
                    title: 'Indstillinger',
                    icon: LineAwesomeIcons.cog,
                    onPress: () {}),
                ProfileMenuWidget(
                    title: 'Brugerstyring',
                    icon: LineAwesomeIcons.user_check,
                    onPress: () {}),
                const Divider(),
                SizedBox(height: 10),
                ProfileMenuWidget(
                    title: 'Information',
                    icon: LineAwesomeIcons.info,
                    onPress: () {}),
                ProfileMenuWidget(
                    title: 'Log ud',
                    icon: LineAwesomeIcons.alternate_sign_out,
                    textColor: Colors.red,
                    endIcon: false,
                    onPress: () {
                     Column(
                      children: <Widget>[
                        _signOutButton(),
                        ],
                        );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}