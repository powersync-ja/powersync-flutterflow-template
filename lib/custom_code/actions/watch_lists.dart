// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:powersync/powersync.dart' as powersync;
import '/backend/supabase/database/tables/lists.dart';
import '/custom_code/actions/initpowersync.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> watchLists(Future Function() callback) async {
  var stream = db.watch('SELECT * FROM lists');
  stream.listen((data) {
    callback();
  });
}
