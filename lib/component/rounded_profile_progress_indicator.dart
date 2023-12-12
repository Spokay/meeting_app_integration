import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedProfileProgressIndicator extends StatefulWidget {
  final Color indicatorColor;
  final double indicatorValue;

  const RoundedProfileProgressIndicator({super.key, required this.indicatorColor, required this.indicatorValue, });

  @override
  State<RoundedProfileProgressIndicator> createState() => _RoundedProfileProgressIndicatorState();
}

class _RoundedProfileProgressIndicatorState extends State<RoundedProfileProgressIndicator> {

  @override
  Widget build(BuildContext context) {
    var blueColor = Theme.of(context).colorScheme.primary;
    var greenColor = Theme.of(context).colorScheme.secondary;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.6,
      height: width * 0.6,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(150),
              ),
              image: DecorationImage(
                image: AssetImage('assets/profile_photo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          RotatedBox(
            quarterTurns: 2,
            child: CircularProgressIndicator(
              value: widget.indicatorValue,
              color: widget.indicatorColor,
              strokeWidth: 5,
              strokeCap: StrokeCap.round,
              backgroundColor: Colors.white.withOpacity(0.6),
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          Positioned(
            bottom: 0,
              left: 10,
              right: 10,
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    gradient: LinearGradient(
                        colors: [greenColor, blueColor],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight
                    )
                ),
                child: Text(
                  'Complété à ${(widget.indicatorValue * 100).round()}%'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'M PLUS Rounded 1c',
                    fontSize: 20,
                  ),
                ),
              )
          ),
          Positioned(
            right: 0,
              top: 0,
              width: 60,
              height: 60,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0)),
                      alignment: Alignment.center,
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          )
                      ),
                    elevation: MaterialStateProperty.all<double>(10),
                  ),
                    onPressed: (){},
                    child: Icon(
                      size: 40,
                        Icons.edit,
                        color: greenColor
                    ),
                ),
                  Positioned(
                      right: 5,
                      top: 5,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: const BorderRadius.all(Radius.circular(50)),
                        ),
                      )
                  )
                ]
              )
          )
        ]
      ),
    );
  }
}
