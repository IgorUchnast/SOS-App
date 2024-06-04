import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black, // Kolor obramowania
                    width: 1.5, // Grubość obramowania
                  ),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/person.png'),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Mateusz Nowak',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildInfoField(
                        Icons.person,
                        'Imię',
                        'Mateusz',
                      ),
                      buildInfoField(
                        Icons.person,
                        'Nazwisko',
                        'Nowak',
                      ),
                      buildInfoField(
                        Icons.male,
                        'Płeć',
                        'mężczyzna',
                      ),
                      buildInfoField(
                        Icons.numbers,
                        'Wiek',
                        '24',
                      ),
                      buildInfoField(
                        Icons.bloodtype,
                        'Grupa krwi',
                        '0Rh+',
                      ),
                      buildInfoField(
                        Icons.medical_information,
                        'Choroby przewelkłe',
                        'Cukrzyca, Nadciśnienie',
                      ),
                      buildInfoField(
                        Icons.vaccines,
                        'Alergie',
                        'Amoksycylina, Ibuprofen',
                      ),
                      buildInfoField(
                        Icons.contact_emergency,
                        'Kontakt',
                        'Anna Nowak +48 746 883 812',
                      ),
                      buildInfoField(
                        Icons.home,
                        'Adres zamieszkania',
                        'ul.Mazowiecka 73H, Warszawa ',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoField(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Icon(icon, color: Colors.red),
                SizedBox(width: 10),
                Text(
                  value,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Password',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Icon(Icons.lock, color: Colors.blue),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '********',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Icon(Icons.visibility, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
