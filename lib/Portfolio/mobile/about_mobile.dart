import 'package:demo/Portfolio/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class MAboutUs extends StatelessWidget {
  const MAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 50,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          aboutBox(context, 'LinkedIn Id', () {
            launchLinks(
                'https://www.linkedin.com/in/somya-swaroop-naiwal-7a2507266/');
          }),
          aboutBox(context, 'GitHub link', () {
            launchLinks('https://github.com/Somya6464');
          }),
          aboutBox(context, 'Skype Id', () {
            launchLinks('https://join.skype.com/invite/wEYC3qJbWNLj');
          }),
          aboutBox(context, 'Website link', () {
            launchLinks('https://ssnaiwal.vq.pe/');
          }),
        ],
      ),
    ));
  }
}
