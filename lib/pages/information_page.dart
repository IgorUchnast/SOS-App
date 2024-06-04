import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Przeczytaj też ...'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: <Widget>[
          _buildInfoTile(
            context,
            'Jak bezpiecznie korzystać z transportu publicznego?',
            'images/transport.jpg',
            '''
1. Miej plan podróży: Zanim wyruszysz, zaplanuj swoją trasę, sprawdź rozkłady jazdy i ewentualne opóźnienia.\n
2. Zachowaj ostrożność: Bądź czujny i świadomy swojego otoczenia. Unikaj rozpraszania się telefonem lub słuchawkami.\n
3. Unikaj pustych wagonów: Jeśli podróżujesz metrem lub pociągiem, wybierz wagon z większą liczbą pasażerów.\n
4. Przechowuj wartościowe rzeczy bezpiecznie: Trzymaj torby blisko siebie, a wartościowe rzeczy schowane.\n
5. Bądź uprzejmy: Ustępuj miejsca osobom starszym, niepełnosprawnym i kobietom w ciąży.\n
6. Znaj swoją trasę awaryjną: Zwracaj uwagę na wyjścia ewakuacyjne i postępuj zgodnie z instrukcjami w razie sytuacji awaryjnej.\n
            ''',
          ),
          _buildInfoTile(
            context,
            'Nie bój się pierwszej pomocy, weź to w swoje ręce!',
            'images/rko.jpg',
            '''
1. Oceń bezpieczeństwo poszkodowanego i swoje. Jeśli miejsce jest niebezpieczne, zadzwoń pod numery alarmowe i postaraj się ewakuować poszkodowanego w bezpieczne miejsce.\n
2. Oceń stan poszkodowanego i przytomność. Zapytaj, co się stało. Jeśli poszkodowany Cię słyszy i reaguje – jest przytomny. Jeśli nie ma z nim kontaktu, ułóż go w pozycji bezpiecznej.\n
3. Udrożnij drogi oddechowe. Połóż jedną rękę na czole, a drugą na brodzie poszkodowanego i odegnij jego głowę do tyłu. Usuń widoczne ciała obce z jamy ustnej.\n
4. Oceń oddech. Przystaw policzek do twarzy poszkodowanego. Czujesz wydychane powietrze na swoim policzku, widzisz ruchy klatki piersiowej? Poszkodowany oddycha. Jeśli nie jest przytomny, ale oddycha, ułóż go w pozycji bezpiecznej.\n
5. Zadzwoń pod numer 999 lub 112 i wezwij pomoc.\n
6. Wykonaj resuscytację i zastosuj defibrylator, jeśli go znajdziesz w pobliżu.\n
7. Udrożnij drogi oddechowe przez odchylenie głowy. Zdejmij okulary – jeśli je ma.\n
8. Połóż go na wznak i wyprostuj mu nogi.\n
9. Rękę bliżej Ciebie ułóż pod kątem prostym w stosunku do ciała, a potem zegnij w łokciu pod kątem prostym. Dłoń powinna być skierowana w górę.\n
10. Drugą rękę zegnij w łokciu i ułóż stroną grzbietową pod policzkiem z przeciwnej strony. Przytrzymaj ją jedną ręką.'n
11. Drugą ręką zegnij dalszą nogę w kolanie i przekręć poszkodowanego na bok, w Twoim kierunku.\n
12. Ułóż kolano, za które przetaczałeś poszkodowanego, pod kątem prostym w stosunku do biodra.\n
13. Regularnie sprawdzaj oddech poszkodowanego aż do przyjazdu karetki.\n
14.Osłoń poszkodowanego przed niekorzystnymi warunkami atmosferycznymi, np. słońcem lub deszczem.\n

            ''',
          ),
          _buildInfoTile(
            context,
            'Bądź bezpiecznu zawsze i wszędzie!',
            'images/party.jpg',
            '''
1. Bądź świadomy swojego otoczenia:\n
- Zawsze miej na oku to, co się dzieje wokół Ciebie.
- Unikaj używania telefonu komórkowego podczas chodzenia w miejscach publicznych, aby nie rozpraszać swojej uwagi.\n
2. Unikaj chodzenia samotnie po zmroku:\n
- Staraj się zawsze przemieszczać w towarzystwie, zwłaszcza w nocy. 
- Wybieraj dobrze oświetlone i uczęszczane ulice.\n
3. Znaj plan awaryjny:\n
- Znaj swoje najbliższe wyjścia awaryjne w budynkach publicznych.
- Miej zapisane numery alarmowe oraz kontakt do bliskich osób.\n
4. Bądź uprzejmy i pomocny, ale ostrożny:\n
- Pomagaj innym, ale bądź ostrożny wobec osób, które mogą wykorzystywać twoją uprzejmość.
- Unikaj rozmów z obcymi, którzy wydają się podejrzani.\n
5. Znaj swoje sąsiedztwo:\n
- Zwracaj uwagę na nietypowe zdarzenia i informuj odpowiednie służby o podejrzanych działaniach.
- Współpracuj z sąsiadami, aby zwiększyć bezpieczeństwo w okolicy.
            ''',
          ),
          // Dodaj więcej kafelków informacyjnych tutaj
        ],
      ),
    );
  }

  Widget _buildInfoTile(
      BuildContext context, String title, String imagePath, String details) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ExpansionTile(
            title: Text(
              'Więcej informacji',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  details,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
