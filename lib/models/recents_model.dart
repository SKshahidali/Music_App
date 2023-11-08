class Recents {
  final String CoverImageURL;
  final String SongName;
  final String ArtistName;

Recents({
required this.ArtistName,
required this.CoverImageURL,
required this.SongName,
});
}

List<Recents> recents = [
  Recents(
    ArtistName: 'Vishal Dadlani',
    CoverImageURL: 'assets/music/covers/Raftaarein-cover.jpg',
    SongName: 'Raftaarein'
    ),

    Recents(
    ArtistName: 'Shahid Mallya',
    CoverImageURL: 'assets/music/covers/Saaiyaan-cover.jpg',
    SongName: 'Saaiyaan'
    ),

    Recents(
    ArtistName: 'Selina Malek',
    CoverImageURL: 'assets/music/covers/Paisa-cover.jpg',
    SongName: 'Paisa'
    ),

    Recents(
    ArtistName: 'Krishna Beura',
    CoverImageURL: 'assets/music/covers/Mera Intkam Dekhegi-cover.jpg',
    SongName: 'Mera Intekam Dekhegi'
    ),
];
 