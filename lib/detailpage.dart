import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';

class DetailPage extends StatefulWidget {
  var articles;
  DetailPage(this.articles);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late Stream<String> progressString;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            height: double.infinity,
            child: Image.network(widget.articles, fit: BoxFit.cover)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 750, left: 70),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white10),
                    child: Icon(Icons.info),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white10),
                    child: Icon(Icons.download),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      PrepareWallpaper(widget.articles, context);
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white10),
                      child: Icon(Icons.settings_backup_restore),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }

  void PrepareWallpaper(String url, BuildContext context) {
    progressString = Wallpaper.imageDownloadProgress(url);
    progressString.listen((data) {
      print('Data Received$data');
      setWallpaper(context);
    }, onDone: () {
      print('Download Complete');
    }, onError: (error) {
      print('Error$error');
    });
  }

  void setWallpaper(BuildContext context) async {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    await Wallpaper.homeScreen(
      options: RequestSizeOptions.RESIZE_EXACT,
      width: width,
      height: height,
    );
    print('Wallpaper set');
  }
}
