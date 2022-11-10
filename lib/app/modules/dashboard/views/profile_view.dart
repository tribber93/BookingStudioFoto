import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

class ProfileView extends GetView {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: context.isPhone ? Colors.amber : Colors.blue,
                height: 150,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: context.isSmallTablet
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/02/08/3489974160.png"),
                    ),
                    const SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        thickness: 2,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Bergabung"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "10 November",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const [
                      TextSpan(
                          text: 'Yoni\n',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'Tribber',
                          style: TextStyle(
                            fontSize: 32,
                          )),
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              ProfileButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.user,
                    size: 30,
                  ),
                  label: "Profile Lengkap"),
              const Divider(
                thickness: 2,
              ),
              ProfileButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.receipt,
                    size: 30,
                  ),
                  label: "Transaksi Saya"),
              const Divider(
                thickness: 2,
              ),
              ProfileButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.arrowRightFromBracket,
                    size: 30,
                  ),
                  label: "Keluar"),
              const Divider(
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  Widget icon;
  String label;

  ProfileButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(foregroundColor: Colors.black),
        onPressed: () {},
        child: Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: icon,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              label,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
