// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:powersync/powersync.dart' as powersync;
import '/custom_code/actions/initpowersync.dart';
import '/backend/supabase/database/tables/lists.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<List<ListsRow>?> readAllLists() async {
  final results = (await db.getAll('SELECT * from lists'))
      .map((json) => ListsRow(Map<String, dynamic>.from(json)))
      .toList();

  //return results.map((row) => row.cast());
  return results;
}
