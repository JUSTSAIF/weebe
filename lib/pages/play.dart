import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:video_player/video_player.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/imdb.dart';
import 'package:weebe/widgets/myAppbar.dart';
import 'package:weebe/widgets/sideMenu.dart';
import 'package:weebe/widgets/starRating.dart';

class Play extends StatefulWidget {
  const Play({
    Key? key,
    this.title = 'Chewie Demo',
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _PlayState();
  }
}

class _PlayState extends State<Play> {
  TargetPlatform _platform = TargetPlatform.windows;
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    // _videoPlayerController.pause();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(
        'https://cdn.shabakaty.com/mp4-1080/78CE3422-00B4-565B-5605-3926BDC3009F_video.mp4?response-content-disposition=attachment%3B%20filename%3D%22video.mp4%22&AWSAccessKeyId=RNA4592845GSJIHHTO9T&Expires=1627766161&Signature=%2FId6TF55cuybajxra%2F7vVd%2Fuzyg%3D');
    await Future.wait([
      _videoPlayerController.initialize(),
    ]);

    _createChewieController();
    setState(() {});
  }

  void _createChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: false,
      showControls: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
      deviceOrientationsAfterFullScreen: [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp
      ],
      placeholder: Container(
        // color: HexColor('#111111'),
        color: Colors.black,
      ),
      allowMuting: true,
      showOptions: true,
      allowPlaybackSpeedChanging: true,
      autoInitialize: true,
      allowedScreenSleep: false,
    );
  }

  bool? like;
  bool sub = false;
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return MaterialApp(
        theme: ThemeData(
            platform: _platform, scaffoldBackgroundColor: HexColor('#111111')),
        home: Scaffold(
          key: _key,
          endDrawer: SideMenu(),
          appBar: myAppBar(_key, backBu: true, appBarContent: 'One Piece'),
          bottomNavigationBar: bottomNav(pageNum: 0),
          body: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.753,
                child: _chewieController != null &&
                        _chewieController!
                            .videoPlayerController.value.isInitialized
                    ? Chewie(
                        controller: _chewieController!,
                      )
                    : Container(
                        color: Colors.black87,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircularProgressIndicator(),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                      ),
              ),
              Container(
                height: 60,
                color: HexColor('#1A1A1A'),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  new InkWell(
                    onTap: () {
                      setState(() => sub = !sub);
                    },
                    child: Icon(
                      sub == true
                          ? Icons.playlist_add_check
                          : Icons.playlist_add,
                      color: HexColor("#FF3030"),
                      size: 30,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: new InkWell(
                        onTap: () {
                          setState(() => fav = fav = !fav);
                        },
                        child: Icon(
                          fav == true ? Icons.favorite : Icons.favorite_border,
                          color: HexColor("#FF3030"),
                          size: 30,
                        ),
                      )),
                  new InkWell(
                      onTap: () {
                        setState(
                            () => like = like == null ? true : like = !like!);
                      },
                      child: new Icon(
                        like == null
                            ? Icons.thumb_up_outlined
                            : like == true
                                ? Icons.thumb_up
                                : Icons.thumb_down,
                        color: HexColor("#FF3030"),
                        size: 30,
                      ))
                ]),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'one Piece',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Follows the adventures of Monkey D. Luffy and his friends in order to find the greatest treasure ever left by the legendary Pirate, Gol D Roger. The famous mystery treasure named "One Piece".',
                      style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'italic',
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Center(
                  child: Container(
                padding: EdgeInsets.only(bottom: 9, top: 40),
                width: 330,
                child: Divider(
                  color: Colors.red[600],
                  height: 1,
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white60,
                      size: 20,
                    ),
                  ),
                  Text(
                    "1.3M",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35, right: 10),
                    child: Icon(
                      Icons.thumb_down,
                      color: Colors.white60,
                      size: 20,
                    ),
                  ),
                  Text(
                    "3K",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35, right: 10),
                    child: Icon(
                      Icons.remove_red_eye_rounded,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 35),
                    child: Text(
                      "190.1K",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IMDB(rate: 8.6),
                ],
              ),
              Center(
                  child: Container(
                padding: EdgeInsets.only(bottom: 40, top: 9),
                width: 330,
                child: Divider(
                  color: Colors.red[600],
                  height: 1,
                ),
              )),
              // التاريخ
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "1999",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " :  التاريخ",
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: 'Cairo',
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // الكاتب
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Eiichiro Oda",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " : الكاتب  ",
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: 'Cairo',
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
