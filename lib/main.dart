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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: (Color(0xFF272852)),
        primarySwatch: createMaterialColor(Color(0xFF3d3e63)),
      ),
      home: MyHomePage(title: 'Home'),
    );
  }

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
              color: Colors.white,
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
  //Build
  final String buildTitle;
  final String artifactSet;
  final String artifactImg;
  final String secondArtifactSet;
  final String secondArtifactImg;
  final String sandsPriority;
  final String gobletPriority;
  final String circletPriority;
  final String substats;
  final String bestWeapon;
  final String weaponImg;
  //Lvl-up Materials
  final String localSpecialty;
  final String gemSliver;
  final String gemFragment;
  final String gemChunk;
  final String gemGemstone;
  final String normalBoss;
  final String smallMobDrop;
  final String mediumMobDrop;
  final String largeMobDrop;
  //Talent Materials
  final String teachingsBook;
  final String guideBook;
  final String philosophiesBook;
  final String weeklyBoss;

  const Character(
      {required this.name,
      required this.element,
      required this.imglink,
      required this.rarity,
      required this.buildTitle,
      required this.artifactSet,
      required this.artifactImg,
      required this.secondArtifactSet,
      required this.secondArtifactImg,
      required this.sandsPriority,
      required this.gobletPriority,
      required this.circletPriority,
      required this.substats,
      required this.bestWeapon,
      required this.weaponImg,
      required this.localSpecialty,
      required this.gemSliver,
      required this.gemFragment,
      required this.gemChunk,
      required this.gemGemstone,
      required this.normalBoss,
      required this.smallMobDrop,
      required this.mediumMobDrop,
      required this.largeMobDrop,
      required this.teachingsBook,
      required this.guideBook,
      required this.philosophiesBook,
      required this.weeklyBoss,
    });
}

  List<Character> characters = const <Character>[

    const Character(
        name: 'Albedo',
        element: 'Geo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Character_Albedo_Thumb.png',
        buildTitle: 'Geo Support Build',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9b/Item_Cecilia.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Prithiva_Topaz_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3e/Item_Prithiva_Topaz_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/4b/Item_Prithiva_Topaz_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/eb/Item_Prithiva_Topaz_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bc/Item_Basalt_Pillar.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/74/Item_Divining_Scroll.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Sealed_Scroll.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f0/Item_Forbidden_Curse_Scroll.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b4/Item_Teachings_of_Ballad.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Guide_to_Ballad.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7e/Item_Philosophies_of_Ballad.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Item_Tusk_of_Monoceros_Caeli.png',
    ),
    const Character(
        name: 'Aloy',
        element: 'Cryo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/6/6a/Character_Aloy_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0f/Item_Crystal_Marrow.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/8/87/Item_Shivada_Jade_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9a/Item_Shivada_Jade_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/41/Item_Shivada_Jade_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Item_Shivada_Jade_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/d/dc/Item_Crystalline_Bloom.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d2/Item_Spectral_Husk.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/6/67/Item_Spectral_Heart.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ea/Item_Spectral_Nucleus.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Item_Teachings_of_Freedom.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1a/Item_Guide_to_Freedom.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c4/Item_Philosophies_of_Freedom.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/4/44/Item_Molten_Moment.png',
    ),
    const Character(
        name: 'Amber',
        element: 'Pyro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c6/Character_Amber_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/1/17/Item_Small_Lamp_Grass.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Everflame_Seed.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/01/Item_Firm_Arrowhead.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Sharp_Arrowhead.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/22/Item_Weathered_Arrowhead.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Item_Teachings_of_Freedom.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1a/Item_Guide_to_Freedom.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c4/Item_Philosophies_of_Freedom.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/0/07/Item_Dvalin%27s_Sigh.png',
    ),
    const Character(
        name: 'Barbara',
        element: 'Hydro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/7/72/Character_Barbara_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8a/Item_Philanemo_Mushroom.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f8/Item_Varunada_Lazurite_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f6/Item_Varunada_Lazurite_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Varunada_Lazurite_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a4/Item_Varunada_Lazurite_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/0/02/Item_Cleansing_Heart.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/74/Item_Divining_Scroll.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Sealed_Scroll.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f0/Item_Forbidden_Curse_Scroll.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Item_Teachings_of_Freedom.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1a/Item_Guide_to_Freedom.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c4/Item_Philosophies_of_Freedom.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d6/Item_Ring_of_Boreas.png',
    ),
    const Character(
        name: 'Beidou',
        element: 'Electro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/6/61/Character_Beidou_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/8/84/Item_Noctilucous_Jade.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/39/Item_Vajrada_Amethyst_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/c/cb/Item_Vajrada_Amethyst_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c1/Item_Vajrada_Amethyst_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/b/be/Item_Vajrada_Amethyst_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ee/Item_Lightning_Prism.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c9/Item_Treasure_Hoarder_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/44/Item_Silver_Raven_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Golden_Raven_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7f/Item_Teachings_of_Gold.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/4/43/Item_Guide_to_Gold.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/01/Item_Philosophies_of_Gold.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/0/07/Item_Dvalin%27s_Sigh.png',
    ),
    const Character(
        name: 'Bennett',
        element: 'Pyro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7b/Character_Bennett_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/3/32/Item_Windwheel_Aster.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Everflame_Seed.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c9/Item_Treasure_Hoarder_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/44/Item_Silver_Raven_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Golden_Raven_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Teachings_of_Resistance.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Guide_to_Resistance.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Philosophies_of_Resistance.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Dvalin%27s_Plume.png',
    ),
    const Character(
      name: 'Chongyun',
      element: 'Cryo',
      rarity: '4-star',
      imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/6/68/Character_Chongyun_Thumb.png',
      buildTitle: '',
      artifactSet: '',
      artifactImg: '',
      secondArtifactSet: '',
      secondArtifactImg: '',
      sandsPriority: '',
      gobletPriority: '',
      circletPriority: '',
      substats: '',
      bestWeapon: '',
      weaponImg: '',
      localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/a/aa/Item_Cor_Lapis.png',
      gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/8/87/Item_Shivada_Jade_Sliver.png',
      gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9a/Item_Shivada_Jade_Fragment.png',
      gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/41/Item_Shivada_Jade_Chunk.png',
      gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Item_Shivada_Jade_Gemstone.png',
      normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b5/Item_Hoarfrost_Core.png',
      smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/6/69/Item_Damaged_Mask.png',
      mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Stained_Mask.png',
      largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Ominous_Mask.png',
      teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a7/Item_Teachings_of_Diligence.png',
      guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9f/Item_Guide_to_Diligence.png',
      philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Item_Philosophies_of_Diligence.png',
      weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/0/07/Item_Dvalin%27s_Sigh.png',
    ),
    const Character(
        name: 'Diluc',
        element: 'Pyro',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/0/02/Character_Diluc_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/1/17/Item_Small_Lamp_Grass.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Everflame_Seed.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Recruit%27s_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a5/Item_Sergeant%27s_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/db/Item_Lieutenant%27s_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Teachings_of_Resistance.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Guide_to_Resistance.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Philosophies_of_Resistance.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Dvalin%27s_Plume.png',
    ),
    const Character(
        name: 'Diona',
        element: 'Cryo',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b9/Character_Diona_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/d/de/Item_Calla_Lily.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/8/87/Item_Shivada_Jade_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9a/Item_Shivada_Jade_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/41/Item_Shivada_Jade_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Item_Shivada_Jade_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b5/Item_Hoarfrost_Core.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/01/Item_Firm_Arrowhead.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Sharp_Arrowhead.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/22/Item_Weathered_Arrowhead.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Item_Teachings_of_Freedom.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1a/Item_Guide_to_Freedom.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c4/Item_Philosophies_of_Freedom.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/4/48/Item_Shard_of_a_Foul_Legacy.png',
    ),
    const Character(
        name: 'Eula',
        element: 'Cryo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d3/Character_Eula_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/d/de/Item_Dandelion_Seed.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/8/87/Item_Shivada_Jade_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9a/Item_Shivada_Jade_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/41/Item_Shivada_Jade_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Item_Shivada_Jade_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/d/dc/Item_Crystalline_Bloom.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/6/69/Item_Damaged_Mask.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Stained_Mask.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Ominous_Mask.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Teachings_of_Resistance.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Guide_to_Resistance.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Philosophies_of_Resistance.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/0/02/Item_Dragon_Lord%27s_Crown.png',
    ),
    const Character(
        name: 'Fischl',
        element: 'Electro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/1/14/Character_Fischl_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/1/17/Item_Small_Lamp_Grass.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/39/Item_Vajrada_Amethyst_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/c/cb/Item_Vajrada_Amethyst_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c1/Item_Vajrada_Amethyst_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/b/be/Item_Vajrada_Amethyst_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ee/Item_Lightning_Prism.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/01/Item_Firm_Arrowhead.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Sharp_Arrowhead.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/22/Item_Weathered_Arrowhead.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b4/Item_Teachings_of_Ballad.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Guide_to_Ballad.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7e/Item_Philosophies_of_Ballad.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/8/81/Item_Spirit_Locket_of_Boreas.png',
    ),
    const Character(
        name: 'Ganyu',
        element: 'Cryo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0a/Character_Ganyu_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2d/Item_Qingxin.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/8/87/Item_Shivada_Jade_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9a/Item_Shivada_Jade_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/41/Item_Shivada_Jade_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Item_Shivada_Jade_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b5/Item_Hoarfrost_Core.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8b/Item_Whopperflower_Nectar.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/46/Item_Shimmering_Nectar.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Energy_Nectar.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a7/Item_Teachings_of_Diligence.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9f/Item_Guide_to_Diligence.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Item_Philosophies_of_Diligence.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5d/Item_Shadow_of_the_Warrior.png',
    ),
    const Character(
        name: 'Hu Tao',
        element: 'Pyro',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a4/Character_Hu_Tao_Thumb.png',
        buildTitle: 'Pyro DPS',
        artifactSet: 'Crimson Witch of Flames',
        artifactImg: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0f/Item_Witch%27s_Flower_of_Blaze.png',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: 'HP%',
        gobletPriority: 'HP% / Pyro DMG Bonus',
        circletPriority: 'HP% / CRIT DMG / CRIT Rate',
        substats: 'HP / CRIT DMG / Crit Rate',
        bestWeapon: 'Staff of Homa',
        weaponImg: 'https://static.wikia.nocookie.net/gensin-impact/images/1/17/Weapon_Staff_of_Homa.png',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/3/37/Item_Silk_Flower.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f1/Item_Juvenile_Jade.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8b/Item_Whopperflower_Nectar.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/46/Item_Shimmering_Nectar.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Energy_Nectar.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a7/Item_Teachings_of_Diligence.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9f/Item_Guide_to_Diligence.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Item_Philosophies_of_Diligence.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/4/48/Item_Shard_of_a_Foul_Legacy.png',
    ),
    const Character(
        name: 'Jean',
        element: 'Anemo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/8/89/Character_Jean_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/d/de/Item_Dandelion_Seed.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/9/93/Item_Vayuda_Turquoise_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Vayuda_Turquoise_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Vayuda_Turquoise_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/3/32/Item_Vayuda_Turquoise_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5e/Item_Hurricane_Seed.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/6/69/Item_Damaged_Mask.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Stained_Mask.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Ominous_Mask.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Teachings_of_Resistance.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Guide_to_Resistance.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Philosophies_of_Resistance.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Dvalin%27s_Plume.png',
    ),
    const Character(
        name: 'Kaedehara Kazuha',
        element: 'Anemo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f0/Character_Kaedehara_Kazuha_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/6/6d/Item_Sea_Ganoderma.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/9/93/Item_Vayuda_Turquoise_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Vayuda_Turquoise_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Vayuda_Turquoise_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/3/32/Item_Vayuda_Turquoise_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1d/Item_Marionette_Core.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c9/Item_Treasure_Hoarder_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/44/Item_Silver_Raven_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Golden_Raven_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a7/Item_Teachings_of_Diligence.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9f/Item_Guide_to_Diligence.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Item_Philosophies_of_Diligence.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e1/Item_Gilded_Scale.png',
    ),
    const Character(
        name: 'Kaeya',
        element: 'Cryo',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Character_Kaeya_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/d/de/Item_Calla_Lily.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/8/87/Item_Shivada_Jade_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9a/Item_Shivada_Jade_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/41/Item_Shivada_Jade_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Item_Shivada_Jade_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b5/Item_Hoarfrost_Core.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c9/Item_Treasure_Hoarder_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/44/Item_Silver_Raven_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Golden_Raven_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b4/Item_Teachings_of_Ballad.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Guide_to_Ballad.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7e/Item_Philosophies_of_Ballad.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/8/81/Item_Spirit_Locket_of_Boreas.png',
    ),
    const Character(
        name: 'Kamisato Ayaka',
        element: 'Cryo',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/f/fd/Character_Kamisato_Ayaka_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3d/Item_Sakura_Bloom.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/8/87/Item_Shivada_Jade_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9a/Item_Shivada_Jade_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/41/Item_Shivada_Jade_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Item_Shivada_Jade_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c1/Item_Perpetual_Heart.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e2/Item_Old_Handguard.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Kageuchi_Handguard.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/4e/Item_Famed_Handguard.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f2/Item_Teachings_of_Elegance.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/d/df/Item_Guide_to_Elegance.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/6/6f/Item_Philosophies_of_Elegance.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b1/Item_Bloodjade_Branch.png',
    ),
    const Character(
        name: 'Keqing',
        element: 'Electro',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/0/06/Character_Keqing_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/a/aa/Item_Cor_Lapis.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/39/Item_Vajrada_Amethyst_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/c/cb/Item_Vajrada_Amethyst_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c1/Item_Vajrada_Amethyst_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/b/be/Item_Vajrada_Amethyst_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ee/Item_Lightning_Prism.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8b/Item_Whopperflower_Nectar.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/46/Item_Shimmering_Nectar.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Energy_Nectar.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9e/Item_Teachings_of_Prosperity.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/6/67/Item_Guide_to_Prosperity.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bd/Item_Philosophies_of_Prosperity.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d6/Item_Ring_of_Boreas.png',
    ),
    const Character(
        name: 'Klee',
        element: 'Pyro',
        rarity: '5-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c3/Character_Klee_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8a/Item_Philanemo_Mushroom.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Everflame_Seed.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/74/Item_Divining_Scroll.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Sealed_Scroll.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f0/Item_Forbidden_Curse_Scroll.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Item_Teachings_of_Freedom.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1a/Item_Guide_to_Freedom.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c4/Item_Philosophies_of_Freedom.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d6/Item_Ring_of_Boreas.png',
    ),
    const Character(
        name: 'Kujou Sara',
        element: 'Electro',
        rarity: '4-star',
        imglink: 'https://static.wikia.nocookie.net/gensin-impact/images/9/96/Character_Kujou_Sara_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d7/Item_Dendrobium.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/39/Item_Vajrada_Amethyst_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/c/cb/Item_Vajrada_Amethyst_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c1/Item_Vajrada_Amethyst_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/b/be/Item_Vajrada_Amethyst_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/2/28/Item_Storm_Beads.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/6/69/Item_Damaged_Mask.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Stained_Mask.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Ominous_Mask.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f2/Item_Teachings_of_Elegance.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/d/df/Item_Guide_to_Elegance.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/6/6f/Item_Philosophies_of_Elegance.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/2/29/Item_Ashen_Heart.png',
    ),
    const Character(
        name: 'Lisa',
        element: 'Electro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Character_Lisa_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ed/Item_Valberry.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/39/Item_Vajrada_Amethyst_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/c/cb/Item_Vajrada_Amethyst_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c1/Item_Vajrada_Amethyst_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/b/be/Item_Vajrada_Amethyst_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ee/Item_Lightning_Prism.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Item_Slime_Condensate.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Slime_Secretions.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d8/Item_Slime_Concentrate.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b4/Item_Teachings_of_Ballad.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Guide_to_Ballad.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7e/Item_Philosophies_of_Ballad.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a8/Item_Dvalin%27s_Claw.png',
    ),
    const Character(
        name: 'Mona',
        element: 'Hydro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/a/a0/Character_Mona_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8a/Item_Philanemo_Mushroom.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f8/Item_Varunada_Lazurite_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f6/Item_Varunada_Lazurite_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Varunada_Lazurite_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a4/Item_Varunada_Lazurite_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/0/02/Item_Cleansing_Heart.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8b/Item_Whopperflower_Nectar.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/46/Item_Shimmering_Nectar.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Energy_Nectar.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Teachings_of_Resistance.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Guide_to_Resistance.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Philosophies_of_Resistance.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d6/Item_Ring_of_Boreas.png',
    ),
    const Character(
        name: 'Ningguang',
        element: 'Geo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/2/2b/Character_Ningguang_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e1/Item_Glaze_Lily.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Prithiva_Topaz_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3e/Item_Prithiva_Topaz_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/4b/Item_Prithiva_Topaz_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/eb/Item_Prithiva_Topaz_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bc/Item_Basalt_Pillar.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Recruit%27s_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a5/Item_Sergeant%27s_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/db/Item_Lieutenant%27s_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9e/Item_Teachings_of_Prosperity.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/6/67/Item_Guide_to_Prosperity.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bd/Item_Philosophies_of_Prosperity.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/8/81/Item_Spirit_Locket_of_Boreas.png',
    ),
    const Character(
        name: 'Noelle',
        element: 'Geo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/a/ab/Character_Noelle_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ed/Item_Valberry.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Prithiva_Topaz_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3e/Item_Prithiva_Topaz_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/4b/Item_Prithiva_Topaz_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/eb/Item_Prithiva_Topaz_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bc/Item_Basalt_Pillar.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/6/69/Item_Damaged_Mask.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Stained_Mask.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Ominous_Mask.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Teachings_of_Resistance.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Guide_to_Resistance.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Philosophies_of_Resistance.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a8/Item_Dvalin%27s_Claw.png',
    ),
    const Character(
        name: 'Qiqi',
        element: 'Cryo',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/d/d5/Character_Qiqi_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5d/Item_Violetgrass.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/8/87/Item_Shivada_Jade_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9a/Item_Shivada_Jade_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/41/Item_Shivada_Jade_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Item_Shivada_Jade_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b5/Item_Hoarfrost_Core.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/74/Item_Divining_Scroll.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Sealed_Scroll.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f0/Item_Forbidden_Curse_Scroll.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9e/Item_Teachings_of_Prosperity.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/6/67/Item_Guide_to_Prosperity.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bd/Item_Philosophies_of_Prosperity.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/6/66/Item_Tail_of_Boreas.png',
    ),
    const Character(
        name: 'Raiden Shogun',
        element: 'Electro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/5/52/Character_Raiden_Shogun_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8a/Item_Amakumo_Fruit.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/39/Item_Vajrada_Amethyst_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/c/cb/Item_Vajrada_Amethyst_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c1/Item_Vajrada_Amethyst_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/b/be/Item_Vajrada_Amethyst_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/2/28/Item_Storm_Beads.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e2/Item_Old_Handguard.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Kageuchi_Handguard.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/4e/Item_Famed_Handguard.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5e/Item_Teachings_of_Light.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/f/fe/Item_Guide_to_Light.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/95/Item_Philosophies_of_Light.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/4/44/Item_Molten_Moment.png',
    ),
    const Character(
        name: 'Razor',
        element: 'Electro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/1/1d/Character_Razor_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/5/57/Item_Wolfhook.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/39/Item_Vajrada_Amethyst_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/c/cb/Item_Vajrada_Amethyst_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c1/Item_Vajrada_Amethyst_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/b/be/Item_Vajrada_Amethyst_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ee/Item_Lightning_Prism.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/6/69/Item_Damaged_Mask.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Stained_Mask.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Ominous_Mask.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Teachings_of_Resistance.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bf/Item_Guide_to_Resistance.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Philosophies_of_Resistance.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a8/Item_Dvalin%27s_Claw.png',
    ),
    const Character(
        name: 'Rosaria',
        element: 'Cryo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/f/f6/Character_Rosaria_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ed/Item_Valberry.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/8/87/Item_Shivada_Jade_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9a/Item_Shivada_Jade_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/41/Item_Shivada_Jade_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e9/Item_Shivada_Jade_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b5/Item_Hoarfrost_Core.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Recruit%27s_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a5/Item_Sergeant%27s_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/db/Item_Lieutenant%27s_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b4/Item_Teachings_of_Ballad.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Guide_to_Ballad.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7e/Item_Philosophies_of_Ballad.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5d/Item_Shadow_of_the_Warrior.png',
    ),
    const Character(
        name: 'Sangonomiya Kokomi',
        element: 'Hydro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/c/cc/Character_Sangonomiya_Kokomi_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/0/07/Item_Sango_Pearl.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f8/Item_Varunada_Lazurite_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f6/Item_Varunada_Lazurite_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Varunada_Lazurite_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a4/Item_Varunada_Lazurite_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/f/fa/Item_Dew_of_Repudiation.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d2/Item_Spectral_Husk.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/6/67/Item_Spectral_Heart.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ea/Item_Spectral_Nucleus.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/4/4e/Item_Teachings_of_Transience.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b0/Item_Guide_to_Transience.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/2/27/Item_Philosophies_of_Transience.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/1/16/Item_Hellfire_Butterfly.png',
    ),
    const Character(
        name: 'Sayu',
        element: 'Anemo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Character_Sayu_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0f/Item_Crystal_Marrow.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/9/93/Item_Vayuda_Turquoise_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Vayuda_Turquoise_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Vayuda_Turquoise_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/3/32/Item_Vayuda_Turquoise_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1d/Item_Marionette_Core.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8b/Item_Whopperflower_Nectar.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/46/Item_Shimmering_Nectar.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Energy_Nectar.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5e/Item_Teachings_of_Light.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/f/fe/Item_Guide_to_Light.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/95/Item_Philosophies_of_Light.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/e/e1/Item_Gilded_Scale.png',
    ),
    const Character(
        name: 'Sucrose',
        element: 'Anemo',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/6/61/Character_Sucrose_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/3/32/Item_Windwheel_Aster.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/9/93/Item_Vayuda_Turquoise_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Vayuda_Turquoise_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Vayuda_Turquoise_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/3/32/Item_Vayuda_Turquoise_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5e/Item_Hurricane_Seed.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8b/Item_Whopperflower_Nectar.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/46/Item_Shimmering_Nectar.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Energy_Nectar.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Item_Teachings_of_Freedom.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1a/Item_Guide_to_Freedom.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c4/Item_Philosophies_of_Freedom.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/8/81/Item_Spirit_Locket_of_Boreas.png',
    ),
    const Character(
        name: 'Tartaglia',
        element: 'Hydro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/5/53/Character_Tartaglia_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/4/46/Item_Starconch.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f8/Item_Varunada_Lazurite_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f6/Item_Varunada_Lazurite_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Varunada_Lazurite_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a4/Item_Varunada_Lazurite_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/0/02/Item_Cleansing_Heart.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Recruit%27s_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a5/Item_Sergeant%27s_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/db/Item_Lieutenant%27s_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Item_Teachings_of_Freedom.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1a/Item_Guide_to_Freedom.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c4/Item_Philosophies_of_Freedom.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/4/48/Item_Shard_of_a_Foul_Legacy.png',
    ),
    const Character(
      name: 'Thoma',
      element: 'Pyro',
      rarity: '4-star',
      imglink:'https://static.wikia.nocookie.net/gensin-impact/images/8/8a/Character_Thoma_Thumb.png',
      buildTitle: '',
      artifactSet: '',
      artifactImg: '',
      secondArtifactSet: '',
      secondArtifactImg: '',
      sandsPriority: '',
      gobletPriority: '',
      circletPriority: '',
      substats: '',
      bestWeapon: '',
      weaponImg: '',
      localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0f/Item_Fluorescent_Fungus.png',
      gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
      gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
      gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
      gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
      normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/a/ad/Item_Smoldering_Pearl.png',
      smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c9/Item_Treasure_Hoarder_Insignia.png',
      mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/44/Item_Silver_Raven_Insignia.png',
      largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Golden_Raven_Insignia.png',
      teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/4/4e/Item_Teachings_of_Transience.png',
      guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b0/Item_Guide_to_Transience.png',
      philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/2/27/Item_Philosophies_of_Transience.png',
      weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/1/16/Item_Hellfire_Butterfly.png',
    ),
    const Character(
        name: 'Traveler',
        element: 'Adaptive',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Character_Traveler_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/3/32/Item_Windwheel_Aster.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/7/72/Item_Brilliant_Diamond_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3d/Item_Brilliant_Diamond_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/7/74/Item_Brilliant_Diamond_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0b/Item_Brilliant_Diamond_Gemstone.png',
        normalBoss: '',
        smallMobDrop: '',
        mediumMobDrop: '',
        largeMobDrop: '',
        teachingsBook: '',
        guideBook: '',
        philosophiesBook: '',
        weeklyBoss: '',
    ),
    const Character(
        name: 'Venti',
        element: 'Anemo',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/8/8d/Character_Venti_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9b/Item_Cecilia.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/9/93/Item_Vayuda_Turquoise_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Vayuda_Turquoise_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Vayuda_Turquoise_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/3/32/Item_Vayuda_Turquoise_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5e/Item_Hurricane_Seed.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Item_Slime_Condensate.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Slime_Secretions.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d8/Item_Slime_Concentrate.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b4/Item_Teachings_of_Ballad.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Guide_to_Ballad.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7e/Item_Philosophies_of_Ballad.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/6/66/Item_Tail_of_Boreas.png',
    ),
    const Character(
        name: 'Xiangling',
        element: 'Pyro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/a/a0/Character_Xiangling_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/1/13/Item_Jueyun_Chili.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Everflame_Seed.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Item_Slime_Condensate.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Slime_Secretions.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d8/Item_Slime_Concentrate.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a7/Item_Teachings_of_Diligence.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9f/Item_Guide_to_Diligence.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Item_Philosophies_of_Diligence.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a8/Item_Dvalin%27s_Claw.png',
    ),
    const Character(
        name: 'Xiao',
        element: 'Anemo',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/b/b9/Character_Xiao_Thumb.png',
        buildTitle: 'Anemo Main DPS',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2d/Item_Qingxin.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/9/93/Item_Vayuda_Turquoise_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Vayuda_Turquoise_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Vayuda_Turquoise_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/3/32/Item_Vayuda_Turquoise_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f1/Item_Juvenile_Jade.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Item_Slime_Condensate.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Slime_Secretions.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d8/Item_Slime_Concentrate.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/9/9e/Item_Teachings_of_Prosperity.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/6/67/Item_Guide_to_Prosperity.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bd/Item_Philosophies_of_Prosperity.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5d/Item_Shadow_of_the_Warrior.png',
    ),
    const Character(
        name: 'Xingqiu',
        element: 'Hydro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/4/4a/Character_Xingqiu_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/3/37/Item_Silk_Flower.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f8/Item_Varunada_Lazurite_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f6/Item_Varunada_Lazurite_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Varunada_Lazurite_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a4/Item_Varunada_Lazurite_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/0/02/Item_Cleansing_Heart.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/6/69/Item_Damaged_Mask.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Item_Stained_Mask.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Ominous_Mask.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7f/Item_Teachings_of_Gold.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/4/43/Item_Guide_to_Gold.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/01/Item_Philosophies_of_Gold.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/6/66/Item_Tail_of_Boreas.png',
    ),
    const Character(
        name: 'Xinyan',
        element: 'Pyro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/9/9d/Character_Xinyan_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5d/Item_Violetgrass.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b2/Item_Everflame_Seed.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c9/Item_Treasure_Hoarder_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/44/Item_Silver_Raven_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Golden_Raven_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7f/Item_Teachings_of_Gold.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/4/43/Item_Guide_to_Gold.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/01/Item_Philosophies_of_Gold.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Item_Tusk_of_Monoceros_Caeli.png',
    ),
    const Character(
        name: 'Yanfei',
        element: 'Pyro',
        rarity: '4-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/1/1f/Character_Yanfei_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/8/84/Item_Noctilucous_Jade.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f1/Item_Juvenile_Jade.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/c/c9/Item_Treasure_Hoarder_Insignia.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/4/44/Item_Silver_Raven_Insignia.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/71/Item_Golden_Raven_Insignia.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7f/Item_Teachings_of_Gold.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/4/43/Item_Guide_to_Gold.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/01/Item_Philosophies_of_Gold.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b1/Item_Bloodjade_Branch.png',
    ),
    const Character(
        name: 'Yoimiya',
        element: 'Pyro',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/0/05/Character_Yoimiya_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/a/ac/Item_Naku_Weed.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/5/51/Item_Agnidus_Agate_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/e/ec/Item_Agnidus_Agate_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/0/00/Item_Agnidus_Agate_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/0/0d/Item_Agnidus_Agate_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/a/ad/Item_Smoldering_Pearl.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/7/74/Item_Divining_Scroll.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/9/91/Item_Sealed_Scroll.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f0/Item_Forbidden_Curse_Scroll.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/4/4e/Item_Teachings_of_Transience.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b0/Item_Guide_to_Transience.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/2/27/Item_Philosophies_of_Transience.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/0/02/Item_Dragon_Lord%27s_Crown.png',
    ),
    const Character(
        name: 'Zhongli',
        element: 'Geo',
        rarity: '5-star',
        imglink:'https://static.wikia.nocookie.net/gensin-impact/images/c/c2/Character_Zhongli_Thumb.png',
        buildTitle: '',
        artifactSet: '',
        artifactImg: '',
        secondArtifactSet: '',
        secondArtifactImg: '',
        sandsPriority: '',
        gobletPriority: '',
        circletPriority: '',
        substats: '',
        bestWeapon: '',
        weaponImg: '',
        localSpecialty: 'https://static.wikia.nocookie.net/gensin-impact/images/a/aa/Item_Cor_Lapis.png',
        gemSliver: 'https://static.wikia.nocookie.net/gensin-impact/images/3/33/Item_Prithiva_Topaz_Sliver.png',
        gemFragment: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3e/Item_Prithiva_Topaz_Fragment.png',
        gemChunk: 'https://static.wikia.nocookie.net/gensin-impact/images/4/4b/Item_Prithiva_Topaz_Chunk.png',
        gemGemstone: 'https://static.wikia.nocookie.net/gensin-impact/images/e/eb/Item_Prithiva_Topaz_Gemstone.png',
        normalBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/b/bc/Item_Basalt_Pillar.png',
        smallMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Item_Slime_Condensate.png',
        mediumMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/f/f4/Item_Slime_Secretions.png',
        largeMobDrop: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d8/Item_Slime_Concentrate.png',
        teachingsBook: 'https://static.wikia.nocookie.net/gensin-impact/images/7/7f/Item_Teachings_of_Gold.png',
        guideBook: 'https://static.wikia.nocookie.net/gensin-impact/images/4/43/Item_Guide_to_Gold.png',
        philosophiesBook: 'https://static.wikia.nocookie.net/gensin-impact/images/0/01/Item_Philosophies_of_Gold.png',
        weeklyBoss: 'https://static.wikia.nocookie.net/gensin-impact/images/1/1c/Item_Tusk_of_Monoceros_Caeli.png',
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
            padding: const EdgeInsets.fromLTRB(1.0, 2.0, 1.0, 1.0),
            child: Text(
              character.name,
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class Detail extends StatelessWidget {
  final Character character;
  final double imageSize = 90;
  final double spacing = 6;
  Detail({required this.character});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: (Color(0xFF272852)),
        primarySwatch: createMaterialColor(Color(0xFF272852)),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("${character.name}"),
            bottom: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF3d3e63),
              ),
              tabs: [
                Tab(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text("Ascension\nMaterials",
                      textAlign: TextAlign.center,
                      ),
                    ),
                ),
                Tab(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text("Talent\nMaterials",
                      textAlign: TextAlign.center,
                      ),
                    ),
                ),
                Tab(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Text("${character.buildTitle}\nGuide",
                        textAlign: TextAlign.center,
                      ),
                    ),
                ),
              ]
            )
          ),
          body: TabBarView(
            children: <Widget>[
              // Character Image
              /*Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Image.network('${character.imglink}'),
                  height: 200,
                  width: 200,
                )
              ),*/

              /*Center(
                child:
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                        "Ascension Materials",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                        ),
                    ),
                  ),
              ),
              */
              // Ascension Materials
              Column(
                children: [
                  Center(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(top: 100, bottom: 30),
                      child: Text(
                        "Ascension Materials",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.gemSliver}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                color: Color(0xFF3d3e63),
                                borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.gemFragment}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("9",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.gemChunk}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("9",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.gemGemstone}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("6",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                      ]
                    ),
                  ),
                  SizedBox(height:spacing),
                  // Mob Drops
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Image.network('${character.smallMobDrop}'),
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3d3e63),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              ),
                              Text("18",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                          SizedBox(width:spacing),
                          Column(
                            children: [
                              Container(
                                child: Image.network('${character.mediumMobDrop}'),
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3d3e63),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Text("30",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                          SizedBox(width:spacing),
                          Column(
                            children: [
                              Container(
                                child: Image.network('${character.largeMobDrop}'),
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3d3e63),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Text("36",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height:spacing),
                  // Local Specialty + Normal Boss Drop
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.localSpecialty}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("168",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.normalBoss}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("46",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Talent Materials
              /*Center(
                child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: Text("Talent Materials",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                      ),
                  ),
                ),
              ),*/
              // Talent Materials
              Column(
                children: [
                  Center(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(top: 100, bottom: 30),
                      child: Text(
                        "Talent Materials",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.teachingsBook}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("9",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.guideBook}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("63",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.philosophiesBook}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("114",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:spacing),
                  // Mob Drops
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Image.network('${character.smallMobDrop}'),
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3d3e63),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Text("18",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                          SizedBox(width:spacing),
                          Column(
                            children: [
                              Container(
                                child: Image.network('${character.mediumMobDrop}'),
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3d3e63),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Text("30",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                          SizedBox(width:spacing),
                          Column(
                            children: [
                              Container(
                                child: Image.network('${character.largeMobDrop}'),
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3d3e63),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Text("36",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height:spacing),
                  // Weekly Boss + Crown
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.weeklyBoss}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("18",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('https://static.wikia.nocookie.net/gensin-impact/images/0/04/Item_Crown_of_Insight.png'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("3",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Build
              Column(
                children: [
                  Center(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(top: 100, bottom: 30),
                      child: Text(
                        "${character.buildTitle} Guide",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.teachingsBook}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("9",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.guideBook}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("63",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.philosophiesBook}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("114",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:spacing),
                  // Mob Drops
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Image.network('${character.smallMobDrop}'),
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3d3e63),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Text("18",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                          SizedBox(width:spacing),
                          Column(
                            children: [
                              Container(
                                child: Image.network('${character.mediumMobDrop}'),
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3d3e63),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Text("30",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                          SizedBox(width:spacing),
                          Column(
                            children: [
                              Container(
                                child: Image.network('${character.largeMobDrop}'),
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3d3e63),
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Text("36",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height:spacing),
                  // Weekly Boss + Crown
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Image.network('${character.weeklyBoss}'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("18",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(width:spacing),
                        Column(
                          children: [
                            Container(
                              child: Image.network('https://static.wikia.nocookie.net/gensin-impact/images/0/04/Item_Crown_of_Insight.png'),
                              height: imageSize,
                              width: imageSize,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3d3e63),
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            ),
                            Text("3",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ]),
        ),
      ),
    );

          /*Text("Best Weapon", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Image.network('${character.weaponImg}'),
            height: 150,
            width: 150,
          ),
          Text("${character.bestWeapon}", style: TextStyle(color: Colors.white, fontSize: 15)),*/
          /*Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ),*/

  }
}
