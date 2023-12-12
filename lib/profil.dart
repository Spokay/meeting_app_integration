import 'package:meeting_app_integration/component/add_bonus_card.dart';
import 'package:meeting_app_integration/component/custom_bottom_nav_bar.dart';
import 'package:meeting_app_integration/component/premium_card.dart';
import 'package:meeting_app_integration/component/rounded_profile_progress_indicator.dart';
import 'package:meeting_app_integration/component/text_icon_custom_button.dart';
import 'package:flutter/material.dart';

import 'component/background_title.dart';


class ProfilComponent extends StatefulWidget {
  const ProfilComponent({super.key});

  @override
  State<ProfilComponent> createState() => _ProfilComponentState();
}

class _ProfilComponentState extends State<ProfilComponent> {

  @override
  Widget build(BuildContext context) {

    Color colorBlue = Theme.of(context).colorScheme.primary;
    Color colorGreen = Theme.of(context).colorScheme.secondary;

    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodySmall!,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const CustomBottomNavBar(),
        body: SafeArea(
            child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
              var bodyHeight = constraints.maxHeight;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: bodyHeight * 0.65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 80),
                              const Stack(
                                  children: <Widget>[
                                    // fill the text with a background image
                                    BackgroundTitle(title: 'Midl',),
                                  ]
                              ),
                              SizedBox(
                                width: 80,
                                child: Row(
                                    children: [
                                      IconButton(onPressed: (){}, icon: RotatedBox(
                                        quarterTurns: 1,
                                        child: Icon(
                                            Icons.tune_rounded,
                                            color: colorBlue,
                                          size: 30,
                                          ),
                                      ),
                                        style: IconButton.styleFrom(
                                          padding: const EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(50),
                                            side: BorderSide(color: colorBlue, width: 2)
                                          )
                                        )
                                      ),
                                      Icon(
                                          Icons.settings,
                                          color: colorBlue,
                                      ),
                                    ]
                                ),
                              )
                            ],
                          ),
                        ),
                        RoundedProfileProgressIndicator(indicatorColor: colorBlue,indicatorValue: 0.30),
                        const Text(
                          'Kévin',
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 64, 1),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'M PLUS Rounded 1c',
                            fontSize: 30,
                          ),
                        ),
                        Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  flex: 0,
                                  child: TextIconCustomButton(
                                      text: "Mon profil",
                                      icon: const Icon(Icons.account_circle_outlined, color: Colors.white, size: 22),
                                      backgroundColor: colorBlue, onPressed: (){}
                                  )
                              ),
                              const SizedBox(width: 15),
                              Flexible(
                                  flex: 0,
                                  child: TextIconCustomButton(
                                      text: "Mes recherches",
                                      icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 22),
                                      backgroundColor: colorGreen, onPressed: (){}
                                  )
                              ),
                            ]
                        ),
                        const Text(
                          'Améliorez votre recrutement avec nos services',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 64, 1),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'M PLUS Rounded 1c',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: bodyHeight * 0.35,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(244, 244, 244, 1)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AddBonusCard(
                              title: 'Boost'.toUpperCase(),
                              description: 'Mettez votre annonce en avant pendant 24h',
                              icon: Icon(Icons.rocket_launch, color: colorBlue),
                              backgroundColor: const Color.fromRGBO(179, 232, 216, 1),
                            ),
                            const SizedBox(width: 15),
                            AddBonusCard(
                              title: 'Boost'.toUpperCase(),
                              description: 'N\'attendez pas de matcher pour envoyer un message',
                              icon: Icon(Icons.send, color: colorGreen),
                              backgroundColor: Colors.white,
                            ),
                          ],
                        ),
                        const PremiumCard(),
                      ],
                    ),
                  ),

                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
