import 'package:flutter/material.dart';
import 'package:the_great_protection/core/const.dart';
import 'package:the_great_protection/widgets/custom_button.dart';
import 'package:the_great_protection/widgets/custom_progress.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  var _value;
  AnimationController _controller;
  var isPlay;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    _value = 0.0;
    isPlay = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomButton(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.styleColor,
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    size: 50),
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
          // SUTRA TEXT HERE
          Expanded(child: SizedBox()),

          Text(
            'Title',
            style: kTitlePlayingStyle,
          ),
          Text(
            'Subtitle',
            style: kSubtitleStyle,
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomProgressBar(
              value: _value,
              labelStart: '1:21',
              labelEnd: '3:46',
            ),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomButton(
                  child: Icon(
                    Icons.skip_previous,
                    color: AppColors.styleColor,
                  ),
                  onTap: () {
                    setState(() {
                      if (_value > 0.1) {
                        _value -= 0.1;
                      }
                    });
                  },
                  size: 80,
                  borderWidth: 5.0,
                ),
                CustomButton(
                  child: AnimatedIcon(
                    icon: AnimatedIcons.pause_play,
                    progress: _controller,
                    color: isPlay ? Colors.white : AppColors.styleColor,
                  ),
                  onTap: () {
                    if (_controller.value == 0.0) {
                      _controller.forward();
                      setState(() {
                        isPlay = false;
                      });
                    } else {
                      _controller.reverse();
                      setState(() {
                        isPlay = true;
                      });
                    }
                  },
                  size: 80,
                  borderWidth: 5.0,
                  isActive: isPlay,
                ),
                CustomButton(
                  child: Icon(
                    Icons.skip_next,
                    color: AppColors.styleColor,
                  ),
                  onTap: () {
                    setState(() {
                      if (_value < 0.9) {
                        _value += 0.1;
                      }
                    });
                  },
                  size: 80,
                  borderWidth: 5.0,
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
