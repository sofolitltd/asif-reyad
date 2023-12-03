import 'package:flutter/material.dart';
import '/widgets/social_media_button.dart';

import '../constant.dart';
import '../responsive/responsive.dart';
import 'logo.dart';

class Footer extends StatelessWidget {
  final GlobalKey itemKeyHome;
  const Footer({
    Key? key,
    required this.itemKeyHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 220),
      color: Colors.black26,
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: MediaQuery.of(context).size.width * .1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Responsive.isMobile(context) || Responsive.isTablet(context)
              ? Container(
                  constraints: const BoxConstraints(minHeight: 200),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //logo
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //logo
                          GestureDetector(
                              onTap: () async {
                                final context = itemKeyHome.currentContext;

                                await Scrollable.ensureVisible(context!,
                                    duration: const Duration(seconds: 1));
                              },
                              child: const Logo()),

                          //
                          Text(
                            'App Developer',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontSize: 13),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      //menu
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'About',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Skills',
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Services',
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Portfolio',
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                            ],
                          ),

                          //icon
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              socialMediaButton(
                                  iconName: 'linkedin.svg',
                                  type: '',
                                  data: kDevLinkedin),
                              socialMediaButton(
                                  iconName: 'facebook.svg',
                                  type: '',
                                  data: kDevFacebook),
                              socialMediaButton(
                                  iconName: 'email.svg',
                                  type: 'mailto:',
                                  data: kDevEmail),
                            ],
                          ),
                        ],
                      ),

                      // const SizedBox(height: 16),
                    ],
                  ),
                )

              //desktop view
              : Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //logo
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //logo
                          GestureDetector(
                              onTap: () async {
                                final context = itemKeyHome.currentContext;

                                await Scrollable.ensureVisible(context!,
                                    duration: const Duration(seconds: 1));
                              },
                              child: const Logo()),

                          Text(
                            'App Developer',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),

                      //menu
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'About',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'Skills',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'Services',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'Portfolio',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ],
                      ),

                      //icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          socialMediaButton(
                              iconName: 'linkedin.svg',
                              type: '',
                              data: kDevLinkedin),
                          socialMediaButton(
                              iconName: 'facebook.svg',
                              type: '',
                              data: kDevFacebook),
                          socialMediaButton(
                              iconName: 'email.svg',
                              type: 'mailto',
                              data: kDevEmail),
                        ],
                      ),
                    ],
                  ),
                ),

          //copy right
          const Text('© asifreyad.github.io | All right reserved')
        ],
      ),
    );
  }

//

}
