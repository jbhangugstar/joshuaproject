import 'package:flutter/material.dart';
import 'package:joshuaproject/day_14/data/data_tutor.dart';

class ModelListViewBuilderDay14 extends StatelessWidget {
  const ModelListViewBuilderDay14({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tutorList.length,
      itemBuilder: (context, index) {
        final data = tutorList[index];

        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(data.imageUrl)),
          title: Text(data.name),
          subtitle: Text(data.bidangstudi),
        );
      },
    );
  }
}
