import 'package:flutter/material.dart';
import 'package:movieapp_200906/media_list.dart';
import 'package:movieapp_200906/model/Media.dart';

class MediaListItem extends StatelessWidget {
  final Media media;
  MediaListItem(this.media);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new Column(
      children: <Widget>[
        new Container(
          child: new Stack(
            children: <Widget>[
              new FadeInImage.assetNetwork(
                placeholder: "assets/kokoro.png",
                image: media.getBackDropUrl(),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250.0,
                fadeInDuration: new Duration(milliseconds: 400),
              ),
              new Positioned(
                left: 0.0,
                bottom: 0.0,
                right: 0.0,
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.black45.withOpacity(0.7),
                  ),
                  constraints: new BoxConstraints.expand(
                    height: 55.0
                  ),
                ),
              ),
              new Positioned(
                left: 10.0,
                bottom: 10.0,
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      width: 380,
                      child: new Text(
                        media.title,
                        style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    new Container(
                      padding: const EdgeInsets.only(top: 4.0),
                      width: 250,
                      child: new Text(
                        media.getGenres(),
                        style: new TextStyle( color: Colors.white),
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
              new Positioned(
                right: 5.0,
                bottom: 10.0,
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Text(media.voteAverage.toString()),
                        new Container(width: 4.0,),
                        new Icon(Icons.star, color: Colors.yellowAccent, size: 16.0,)
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Text(
                          media.getReleaseYear().toString()
                        ),
                        new Container(width: 4.0,),
                        new Icon(Icons.date_range, color: Color.fromARGB(255, 76, 161, 245), size: 16.0,)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
