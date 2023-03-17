import 'dart:convert';

// class PodcastInfo {

//   final String name;
//   final String coverArturl;
//   final String podcasturl;

//   PodcastInfo(
//     this.name,
//     this.coverArturl,
//     this.podcasturl,
//   );
// }
Map<String, dynamic> json = {
  "data": {
    "uri": "spotify:show:1kqoM3xY7KgtSzcF93MfCx",
    "name": "RECRUITING CONVERSATIONS",
    "coverArt": {
      "sources": [
        {
          "url":
              "https://i.scdn.co/image/b733e263e92d7eb174a58307bc78a1a912a271f1",
          "width": 64,
          "height": 64
        },
        {
          "url":
              "https://i.scdn.co/image/03f11dd44acf240bf66423cfa8432518e0f1ade2",
          "width": 300,
          "height": 300
        },
        {
          "url":
              "https://i.scdn.co/image/bfdc72a495175a1228719aa80716937906a45ac0",
          "width": 640,
          "height": 640
        }
      ]
    },
    "type": "PODCAST",
    "publisher": {"name": "Richard Milligan"},
    "mediaType": "AUDIO"
  }
};

// final parsedJson = jsonDecode(json);
