import 'package:flutter/material.dart';
import 'package:islami_hti/app_colors.dart';
import 'package:islami_hti/providers/app_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  bool isArEnabled = false;

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of(context);
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width:8),
              Text("Language(Ar - العربية)",
                style: Theme.of(context).textTheme.titleSmall),
              Spacer(),
              Switch(value: provider.isArEnabled,
                  activeColor: AppColors.primiaryColor,
                  onChanged: (value){
                    provider.changeCurrentLocale(value);
                  }),
              SizedBox(width:8),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              SizedBox(width:8),
              Text("Dark theme",
                  style: Theme.of(context).textTheme.titleSmall),
              Spacer(),
              Switch(value: provider.isDarkThemeEnabled,
                  activeColor: AppColors.primiaryColor,
                  onChanged: (value){
                    provider.changeCurrentTheme(value);
                  }),
              SizedBox(width:8),
            ],
          )
        ],
      ),
    );
  }
}
