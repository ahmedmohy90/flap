import 'package:flap_task/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/services/service_locator.dart';


void main() async{
  await ServiceLocator().init();
 runApp(
    const ProviderScope(
      child: MyApp()),
    
  );
}

