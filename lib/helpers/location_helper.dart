// const GOOGLE_API_KEY =
//     'pdct.1.1.20230125T104712Z.7ae350bdd85d961c.b79939771ccdc2601cc3dc8031489be222cd3809';
// const YANDEX_API_KEY =
//     'pdct.1.1.20230125T104712Z.7ae350bdd85d961c.b79939771ccdc2601cc3dc8031489be222cd3809';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/$longitude,$latitude,8.29,0/300x200?access_token=pk.eyJ1IjoiaGFycnl0aW1ib2ciLCJhIjoiY2tmbWl1bHhtMDFzcTJzbXBxNHFmaDNmZCJ9.aHKzB2URidomsKAIN97dag';
  }
}
