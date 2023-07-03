import 'package:f19/ar.dart';
import 'package:get/get.dart';

import 'en.dart';

class MyTranslation extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {"en":en,"ar":ar};

}