// src/app/features/splash/presentation/pages/components/body.dart
import 'package:flutter/material.dart';
import 'package:marketgo/core/utils/constants.dart';
import 'package:marketgo/core/utils/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Bem-vindo ao MarketGo, vamos às compras!!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text":
          "Ajudamos as pessoas a se conectarem com lojas \nem todas as Cidades!",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "Mostramos a maneira mais fácil de fazer compras.. \nFique em casa conosco!",
      "image": "assets/images/splash_3.png",
    },
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 9,
                        width: currentPage == index ? 35 : 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: currentPage == index
                              ? kPrimaryColor
                              : const Color.fromARGB(255, 92, 92, 92),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 3,),
                  SizedBox(
                    height: getProportionateScreenHeight(46),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      // style: ElevatedButton.styleFrom(
                      //   side: BorderSide.none,
                      //   elevation: 0,
                      //   backgroundColor: kPrimaryColor,
                      // ),
                      onPressed: () {}, 
                      child: Text(
                        "Continuar", 
                        style: TextStyle(
                          fontSize: getProportionaScreenteWidth(18), 
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Spacer()
                  // TextButton(onPressed: () {}, child: Text("Continue"),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({super.key, this.text, this.image});

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "MarketGO",
          style: TextStyle(
            fontSize: getProportionaScreenteWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text!, textAlign: TextAlign.center),
        Spacer(flex: 2),
        // SizedBox(height: 50,),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionaScreenteWidth(235),
        ),
      ],
    );
  }
}
