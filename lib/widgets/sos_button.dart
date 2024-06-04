import 'package:flutter/material.dart';

class SosButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Potrzebujesz pomocy?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Text(
          'Przytrzymaj, aby wezwać pomoc',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
        GestureDetector(
          onLongPress: () {
            // Add your long press action here
            print('Calling emergency...');
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.red.shade200,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 190,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.red.shade300,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  shape: BoxShape.circle,
                ),
              ),
              Icon(
                Icons.phone,
                size: 90,
                color: Colors.white,
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
        Text(
          'Nie wiesz co zrobić?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Text(
          'Szukasz dodatkowej pomocy?',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     ActionButton(text: 'I have an Injury'),
        //     ActionButton(text: 'I am Feeling Sick'),
        //   ],
        // ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;

  ActionButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your button action here
        print('$text button pressed');
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.grey.shade200,
        onPrimary: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(text),
    );
  }
}
