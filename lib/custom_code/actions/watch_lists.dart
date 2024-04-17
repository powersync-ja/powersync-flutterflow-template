// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:powersync/powersync.dart' as powersync;
import '/backend/supabase/database/tables/lists.dart';
import '/custom_code/actions/initpowersync.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';

Future<void> watchLists(
    Future Function(List<ListsRow>? result) callback) async {
  var stream = db.watch('SELECT * FROM lists');
  listsSubscription?.cancel();
  listsSubscription = stream.listen((data) {
    callback(
        data.map((json) => ListsRow(Map<String, dynamic>.from(json))).toList());
  });
}
