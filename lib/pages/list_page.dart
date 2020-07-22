import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_great_protection/models/sutta_model.dart';
import 'package:the_great_protection/pages/detail_page.dart';
import '../core/const.dart';
import 'package:the_great_protection/widgets/custom_button.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<SuttaModel> _list;
  int _playId;
  @override
  void initState() {
    _list = SuttaModel.list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                    ),
                    Text(
                      "The Great Paritta",
                      style: kTitleTextStyle,
                    ),
                    CustomButton(
                        child: Icon(
                          Icons.menu,
                          color: AppColors.styleColor,
                        ),
                        onTap: () {},
                        size: 50),
                  ],
                ),
              ),
//              Padding(
//                padding: const EdgeInsets.all(24.0),
////                child: Row(
////                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
////                  children: <Widget>[
////                    CustomButton(
////                      size: 50.0,
////                      child: Icon(
////                        Icons.favorite,
////                        color: AppColors.styleColor,
////                      ),
////                    ),
////                    CustomButton(
////                      size: 50.0,
////                      child: Icon(
////                        Icons.favorite,
////                        color: AppColors.styleColor,
////                      ),
////                    ),
////                    CustomButton(
////                      size: 50.0,
////                      child: Icon(
////                        Icons.menu,
////                        color: AppColors.styleColor,
////                      ),
////                    ),
////                  ],
////                ),
//              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: _list.length,
                  padding: EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => DetailPage(),
                          ),
                        );
                      },
                      child: AnimatedContainer(
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        decoration: BoxDecoration(
                          color: _list[index].id == _playId
                              ? AppColors.activeColor
                              : AppColors.mainColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  _list[index].title,
                                  style: TextStyle(
                                    color: AppColors.styleColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  width: 300.0,
                                  child: Text(
                                    _list[index].purpose,
                                    maxLines: 1,
                                    overflow: TextOverflow.fade,
                                    softWrap: false,
                                    style: kSubtitleStyle,
                                  ),
                                ),
                              ],
                            ),
                            CustomButton(
                              child: Icon(
                                _list[index].id == _playId
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: _list[index].id == _playId
                                    ? Colors.white
                                    : AppColors.styleColor,
                              ),
                              size: 50.0,
                              isActive: _list[index].id == _playId,
                              onTap: () {
                                setState(() {
                                  _playId = _list[index].id;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.mainColor.withAlpha(0),
                    AppColors.mainColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
