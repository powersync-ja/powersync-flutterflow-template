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

Future deleteListItem(ListsRow row) async {
  // Add your function code here!
  await db.execute('DELETE FROM lists WHERE id = ?', [row.id]);
}
