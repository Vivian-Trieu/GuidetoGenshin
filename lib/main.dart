import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genshin Impact Build Guide',
      theme: ThemeData(
        scaffoldBackgroundColor: (Color(0xFF272852)),
        primarySwatch: createMaterialColor(Color(0xFF3d3e63)),
      ),
      home: MyHomePage(title: 'Home'),
    );
  }

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[0.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for(int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) *ds).round(),
        b + ((ds < 0 ? b : (255 - b)) *ds).round(),
        1
      );
    });
    return MaterialColor(color.value, swatch);
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D3E63),
        centerTitle: true,
        title: Text(
            'Characters',
            style: TextStyle(
              color: Color(0xFFd4d4dc),
              fontSize: 30,
            )
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(18.0),
        scrollDirection: Axis.vertical,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(characters.length, (index) {
          return Center(
            child: CharacterCard(
              character: characters[index],
              item: characters[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(character: characters[index]))
                );
              }
            ),
          );
        }),
      ),
    );
  }
}

class Character {
  final String name;
  final String element;
  final String imglink;
  final String rarity;
  final String buildTitle;

  const Character(
    {required this.name, required this.element, required this.imglink, required this.rarity, required this. buildTitle});
}

  List<Character> characters = const <Character>[
    const Character(
        name: 'Albedo',
        element: 'Geo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Character_Albedo_Thumb.png',
        buildTitle: 'Geo Support Build',
    ),
    const Character(
        name: 'Aloy',
        element: 'Cryo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/6/6a/Character_Aloy_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Amber',
        element: 'Pyro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c6/Character_Amber_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Barbara',
        element: 'Hydro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/7/72/Character_Barbara_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Beidou',
        element: 'Electro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/6/61/Character_Beidou_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Bennett',
        element: 'Pyro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7b/Character_Bennett_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Diluc',
        element: 'Pyro',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/0/02/Character_Diluc_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Diona',
        element: 'Cryo',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b9/Character_Diona_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Eula',
        element: 'Cryo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d3/Character_Eula_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Fischl',
        element: 'Electro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/1/14/Character_Fischl_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Ganyu',
        element: 'Cryo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0a/Character_Ganyu_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Hu Tao',
        element: 'Pyro',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a4/Character_Hu_Tao_Thumb.png',
        buildTitle: ''
    ),
    const Character( name: 'Jean',
        element: 'Anemo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/8/89/Character_Jean_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Kaedehara Kazuha',
        element: 'Anemo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f0/Character_Kaedehara_Kazuha_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Kaeya',
        element: 'Cryo',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Character_Kaeya_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Kamisato Ayaka',
        element: 'Cryo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/f/fd/Character_Kamisato_Ayaka_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Keqing',
        element: 'Electro',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/0/06/Character_Keqing_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Klee',
        element: 'Pyro',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c3/Character_Klee_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Kujou Sara',
        element: 'Electro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/9/96/Character_Kujou_Sara_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Lisa',
        element: 'Electro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Character_Lisa_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Mona',
        element: 'Hydro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/a/a0/Character_Mona_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Ningguang',
        element: 'Geo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/2/2b/Character_Ningguang_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Noelle',
        element: 'Geo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/a/ab/Character_Noelle_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Qiqi',
        element: 'Cryo',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/d/d5/Character_Qiqi_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Raiden Shogun',
        element: 'Electro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/5/52/Character_Raiden_Shogun_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Razor',
        element: 'Electro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/1/1d/Character_Razor_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Rosaria',
        element: 'Cryo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/f/f6/Character_Rosaria_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Sangonomiya Kokomi',
        element: 'Hydro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/c/cc/Character_Sangonomiya_Kokomi_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Sayu',
        element: 'Anemo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Character_Sayu_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Sucrose',
        element: 'Anemo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/6/61/Character_Sucrose_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Tartaglia',
        element: 'Hydro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/5/53/Character_Tartaglia_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Traveler',
        element: 'Adaptive',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Character_Traveler_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Venti',
        element: 'Anemo',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/8/8d/Character_Venti_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Xiangling',
        element: 'Pyro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/a/a0/Character_Xiangling_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Xiao',
        element: 'Anemo',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/b/b9/Character_Xiao_Thumb.png',
        buildTitle: 'Anemo Main DPS'
    ),
    const Character(
        name: 'Xingqiu',
        element: 'Hydro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/4/4a/Character_Xingqiu_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Xinyan',
        element: 'Pyro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/9/9d/Character_Xinyan_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Yanfei',
        element: 'Pyro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/1/1f/Character_Yanfei_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Yoimiya',
        element: 'Pyro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/0/05/Character_Yoimiya_Thumb.png',
        buildTitle: ''
    ),
    const Character(
        name: 'Zhongli',
        element: 'Geo',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Character_Zhongli_Thumb.png',
        buildTitle: ''
    ),
  ];

class CharacterCard extends StatelessWidget {
  const CharacterCard(
    {Key? key,
    required this.character,
    required this.onTap,
    required this.item,
    this.selected: false})
    : super(key: key);

  final Character character;
  final VoidCallback onTap;
  final Character item;
  final bool selected;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        onTap();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Image.network(character.imglink),
            ),
          Container(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              character.name,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class Detail extends StatelessWidget {
  final Character character;
  Detail({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${character.name}"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "${character.buildTitle}",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}
