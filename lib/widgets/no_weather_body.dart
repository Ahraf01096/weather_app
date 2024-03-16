import 'package:flutter/material.dart';
class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(gradient: LinearGradient(
        begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blueGrey,Colors.white
          ])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'There Is No Weather 😔 ',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Roboto'
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Start Searching Now 🔍',
                style: TextStyle(
                  fontSize: 30,
                    fontFamily: 'Roboto'
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}