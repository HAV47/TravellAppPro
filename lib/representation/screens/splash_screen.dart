import 'package:flutter/cupertino.dart';
import 'package:travelapp/core/helpers/asset_helper.dart';
import 'package:travelapp/core/helpers/image_helper.dart';
import 'package:travelapp/core/helpers/local_storage_helper.dart';
import 'package:travelapp/representation/screens/intro_screen.dart';
import 'package:travelapp/representation/screens/main_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
static String routeName = '/splash_screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectIntroScreen ();
  }
  void redirectIntroScreen () async{
    final ignoreIntroScreen = LocalStorageHelper.getValue('ignoreIntroScreen') as bool?;
    await Future.delayed(const Duration(seconds: 2));
    if (ignoreIntroScreen !=null && ignoreIntroScreen){
      Navigator.of(context).pushNamed(MainApp.routeName);
    }else{
      LocalStorageHelper.setValue('ignoreIntroScreen', true);
      Navigator.of(context).pushNamed(IntroScreen.routeName);
    }
    //   Navigator.of(context).pushNamed(IntroScreen.routeName);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.LoadFromAsset(AssetHelper.imageBackGroundSplash, fit: BoxFit.fitWidth),
        ),
        Positioned.fill(child: Image.asset(AssetHelper.cirrclesplash))
      ],
    );
  }
}
