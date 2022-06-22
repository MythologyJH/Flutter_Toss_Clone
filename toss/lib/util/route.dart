

import 'package:flutter/material.dart';

Future route(context, {
  required Widget route
}) async
  => await Navigator.of(context).push(MaterialPageRoute(builder: (_) => route));