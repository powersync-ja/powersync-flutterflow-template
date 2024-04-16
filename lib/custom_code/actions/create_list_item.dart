// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'package:powersync/powersync.dart' as powersync;
import '/custom_code/actions/initpowersync.dart';
import '/backend/supabase/database/tables/lists.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future createListItem(String name) async {
  var supaUserId = await Supabase.instance.client.auth.currentUser?.id;

  final results = await db.execute('''
      INSERT INTO
        lists(id, created_at, name, owner_id)
        VALUES(uuid(), datetime(), ?, ?)
      ''', [name, supaUserId]);
}
