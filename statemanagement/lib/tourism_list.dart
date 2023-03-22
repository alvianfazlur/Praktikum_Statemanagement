import 'package:flutter/material.dart';
import 'package:layout2/detail_screen.dart';
import 'model/tourism_place.dart';
import 'package:layout2/list_item.dart';

class TourismList extends StatefulWidget{
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({
    Key? key,
    required this.doneTourismPlaceList
  }) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  @override
  void initState() {
    doneTourismPlaceList = widget.doneTourismPlaceList;
    super.initState();
  }
  List<TourismPlace> doneTourismPlaceList = [];
  final List<TourismPlace> tourismPlaceList =[
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl. Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      description: 'Museum inside a decommissioned Russian war submarine with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati here, it is russian whiskey class. You can also watch the video about the indonesian Navy at the building beside the submarine',
      open: '08.00 - 16.00',
      ticket: 'Rp 10.000',
      gallery1: 'assets/images/monkasel_1.jpg',
      gallery2: 'assets/images/monkasel_2.jpg',
    ),
    TourismPlace(
      name: 'Kelenteng Sangar Agung',
      location: 'Krambangan Utara',
      imageAsset: 'assets/images/klenteng.jpg',
      description: 'Sanggar Agung Temple or Hong San Tang (Chinese: 宏善堂) is a Chinese temple in Surabaya dedicated to Chinese deities and other Asian religious icons. It is located within the Pantai Ria amusement park and has become a tourist destination, even though it is originally a worship place for Tridharma followers.',
      open: '07.00 - 20.00',
      ticket: 'Rp 10.000',
      gallery1: 'assets/images/klenteng2.jpg',
      gallery2: 'assets/images/klenteng3.jpg',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Jl. Pemuda',
      imageAsset: 'assets/images/sampoerna.jpg',
      description: 'The House of Sampoerna is a tobacco museum and headquarters of Sampoerna located in Surabaya. The main buildings architectural style influenced by Dutch colonial-style compound was built in 1862, and is now a preserved historical site',
      open: '09.00 - 18.00',
      ticket: 'Free',
      gallery1: 'assets/images/sampoerna2.jpg',
      gallery2: 'assets/images/sampoerna3.jpg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun Alun Contong',
      imageAsset: 'assets/images/tugu.jpg',
      description: 'The Surabaya 10 November Museum is one of the museums located in the city of Surabaya, built in 1945. This museum was built with the aim of studying and deepening the events of the 1945 Ten November Battle',
      open: '08.00 - 15.00',
      ticket: 'Rp 5.000',
      gallery1: 'assets/images/tugu2.jpg',
      gallery2: 'assets/images/tugu3.jpg',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/sby.jpg',
      description: 'The location of the Sura and Boyo statues is in front of the Surabaya Zoo, or to be precise, on Jalan Diponegoro, Darmo, Wonokromo, Surabaya. The story of the Statue of Sura and Boyo, an Icon of Surabaya, is inseparable from Folklore that is fun to listen to. That said, in a very wide ocean, there was a fight between Sharks and Crocodiles which made the Sharks tired and made an agreement on dividing the territory with Crocodiles, namely the sea for Sharks and the Land for Crocodiles',
      open: '24 Hours',
      ticket: 'Free',
      gallery1: 'assets/images/sby2.jpg',
      gallery2: 'assets/images/sby3.jpg',
    ),
    TourismPlace(
      name: 'Surabaya North Quay',
      location: 'Tanjung Perak',
      imageAsset: 'assets/images/snq.jpg',
      description: 'Skyscraper rooftop deck offering dramatic views of the port, sea & passing cruise ships',
      open: '12.00 - 20.00',
      ticket: 'Rp 10.000',
      gallery1: 'assets/images/snq2.jpg',
      gallery2: 'assets/images/snq3.jpg',
    ),
    TourismPlace(
      name: 'Alun Alun Surabaya',
      location: 'Embong Kaliasin',
      imageAsset: 'assets/images/alunalun.jpg',
      description: 'The Balai Pemuda building was built in 1907 under the name Simpangsche Societeit as a night entertainment facility for the European elite who lived in Surabaya.Simpangsche Societeit was built by an architect from the Netherlands named Westmaes. The building which is now one of Surabayas cultural heritage is designed for the climate of Surabaya. Now Balai Pemuda is a center for arts and cultural activities equipped with public facilities and an open courtyard area.',
      open: '07.00 - 21.00',
      ticket: 'Free',
      gallery1: 'assets/images/alunalun2.jpg',
      gallery2: 'assets/images/alunalun3.jpg',
    ),
  ];


  @override
  Widget build(BuildContext context){
      return ListView.builder(
        itemBuilder: (context,index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: ListItem(
              place: place,
              isDone: doneTourismPlaceList.contains(place),
              onCheckboxClick: (bool? value){
                setState(() {
                  if(value!=null){
                    value
                        ? doneTourismPlaceList.add(place)
                        : doneTourismPlaceList.remove(place);
                  }
                });
              },
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      );
  }
}

