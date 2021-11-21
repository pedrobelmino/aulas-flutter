import 'package:flutter/material.dart';

import 'sample_item.dart';

class SampleItemArguments {
  final SampleItem sampleItem;

  SampleItemArguments({required this.sampleItem});
}

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({Key? key, required this.sampleItem})
      : super(key: key);

  static const routeName = '/sample_item';

  final SampleItem sampleItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${sampleItem.id}"),
      ),
      body: Center(
        child: Text("Id escolhido ${sampleItem.id}"),
      ),
    );
  }
}
