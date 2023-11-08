import 'package:flutter/material.dart';
import 'package:music_zone/models/recents_model.dart';

import '../widgets/colors.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key,required this.recents});

  final Recents recents;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    
                    height: MediaQuery.of(context).size.width * 0.15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //<-----> Cover Image <---->//
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(
                                  recents.CoverImageURL),
                            ),
                          ),
                        ),
    
                       // <------> Artist name and Song Title <----> // 
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             Text(recents.SongName,style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                                           ),
                       
                                           Text(recents.ArtistName,style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                                           ),
                           ],
                         ),
                       ),
                       // <------> Cross Button <----> // 
                       IconButton(onPressed: () {}, icon: Icon(Icons.cancel_sharp,color: yellow,))
                      ],
                    ),
                  ),
    );
  }
}