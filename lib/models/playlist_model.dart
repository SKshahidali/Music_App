class Playlist {
  final String PlaylistName;
  final String SongNumbers;
  final String cover;

Playlist({
    required this.PlaylistName,
    required this.SongNumbers,
    required this.cover,
});
}

List<Playlist> playlists = [
  Playlist(
    PlaylistName: "Inspire Me",
    SongNumbers: "5 Songs",
    cover: "assets/playlist covers/Motivation.jpg"
    ),

    Playlist(
    PlaylistName: "Golden Classics",
    SongNumbers: "4 Songs",
    cover: "assets/playlist covers/old.jpg"
    ),

    Playlist(
    PlaylistName: "Pride Anthems",
    SongNumbers: "9 Songs",
    cover: "assets/playlist covers/patroitic.jpg"
    ),

    Playlist(
    PlaylistName: "Romantic Tunes",
    SongNumbers: "17 Songs",
    cover: "assets/playlist covers/olve.jpg"
    ),

    Playlist(
    PlaylistName: "Urban Groove",
    SongNumbers: "5 Songs",
    cover: "assets/playlist covers/rap.jpg"
    ),
];