import 'package:flutter/material.dart';
import 'package:flutter_app_demo_bloc/mobule/search/search_bloc.dart';
import 'package:flutter_app_demo_bloc/mobule/search/search_box.dart';
import 'package:flutter_app_demo_bloc/mobule/search/search_result.dart';

class SearchView extends StatelessWidget {
  final SearchBloc searchBloc = SearchBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SearchBox(
            bloc: searchBloc,
          ),
          Expanded(
            child: Result(
              bloc: searchBloc,
            ),
          )
        ],
      ),
    );
  }
}
