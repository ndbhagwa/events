import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:events/models/event.dart';
import 'package:events/services/webservice.dart';
import 'package:events/utils/constants.dart';

class EventListState extends State<EventList> {

  List<Event> _events = List<Event>(); 

  @override
  void initState() {
    super.initState();
    _populateEvents(); 
  }

  void _populateEvents() {
    Webservice().load(Event.all).then((events) => {
      setState(() => {
        _events = events
      })
    });
  }

  ListTile _buildItemsForListView(BuildContext context, int index) {
    return ListTile(
      title: _events[index].imageUrl == null ? Image.asset(Constants.PLACEHOLDER_IMAGE_PATH) : Image.network(_events[index].imageUrl), 
      subtitle: Text(_events[index].eventTitle, style: TextStyle(fontSize: 18)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('M Events'),
        ),
        body: ListView.builder(
          itemCount: _events.length,
          itemBuilder: _buildItemsForListView,
        )
      );
  }
}


class EventList extends StatefulWidget {
  @override
  createState() => EventListState(); 
}