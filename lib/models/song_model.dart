class Song {
  final String Songpath;
  final String coverimageurl;
  final String title;
  final String artist;
  
  Song({
    required this.Songpath,
    required this.coverimageurl,
    required this.title,
    required this.artist,
  });
}

List <Song> songs = [
  Song(
    Songpath: 'assets/music/songs/Raftaarein.mp3', 
    coverimageurl: 'assets/music/covers/Raftaarein-cover.jpg', 
    title: 'Raftaarein', 
    artist: 'Vishal Dadlani'
    ),

    Song(
    Songpath: 'assets/music/songs/Saaiyaan.mp3', 
    coverimageurl: 'assets/music/covers/Saaiyaan-cover.jpg', 
    title: 'Saaiyaan', 
    artist: 'Shahid Mallya'
    ),

    Song(
    Songpath: 'assets/music/songs/Mera Intkam Dekhegi.mp3', 
    coverimageurl: 'assets/music/covers/Mera Intkam Dekhegi-cover.jpg', 
    title: 'Mera Intekam Dekhegi', 
    artist: 'Krishna Beura'
    ),

    Song(
    Songpath: 'assets/music/songs/Main Dhoondne Ko Zamaane Mein.mp3', 
    coverimageurl: 'assets/music/covers/Main Dhoondne Ko Zamaane Mein-cover.jpg', 
    title: 'Main Dhoondne ko zamaane main', 
    artist: 'Arijit Singh'
    ),

    Song(
    Songpath: 'assets/music/songs/Paisa.mp3', 
    coverimageurl: 'assets/music/covers/Paisa-cover.jpg', 
    title: 'Paisa Paisa', 
    artist: 'Selina Malek'
    ),
];