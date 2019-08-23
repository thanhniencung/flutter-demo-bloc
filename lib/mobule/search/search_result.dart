import 'package:flutter/material.dart';
import 'package:flutter_app_demo_bloc/mobule/search/search_bloc.dart';

class Result extends StatefulWidget {
  final SearchBloc bloc;
  Result({SearchBloc bloc}) : this.bloc = bloc;

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<List<String>>(
        initialData: [],
        stream: widget.bloc.searchController.stream,
        builder: (context, snapshot) {
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return _buildRow(snapshot.data[index]);
              });
        },
      ),
    );
  }

  Widget _buildRow(String data) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        data,
        style: TextStyle(fontSize: 20, color: Colors.blue),
      ),
    );
  }
}
