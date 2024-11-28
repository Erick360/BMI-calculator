import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomColor = Color(0xFFEB1555);

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  /*
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender gender){
    if(gender == Gender.male){
      if(maleCardColor == inactiveCardColor){
        maleCardColor = activeColor;
        femaleCardColor = inactiveCardColor;
      }else{
        maleCardColor = inactiveCardColor;
      }
    }

    if(gender == Gender.female){
      if(femaleCardColor == inactiveCardColor){
        femaleCardColor = activeColor;
        maleCardColor = inactiveCardColor;
      }else{
        femaleCardColor = inactiveCardColor;
      }
    }
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "APP Testing phase",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                        selectedGender == Gender.male ? activeColor : inactiveCardColor,
                        const IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                        selectedGender == Gender.female ? activeColor : inactiveCardColor,
                      const IconContent(FontAwesomeIcons.venus, 'FEMALE')
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      activeColor,
                      IconContent(FontAwesomeIcons.featherPointed,'bla')
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      activeColor,
                      IconContent(FontAwesomeIcons.amazon, 'bla')
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      activeColor,
                    IconContent(FontAwesomeIcons.facebook, 'text')
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: const Text(
              'Send',
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),

          ),
        ],
      ),
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
