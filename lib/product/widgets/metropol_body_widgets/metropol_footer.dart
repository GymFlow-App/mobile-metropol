import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/helper/edge_insets_helper.dart';
import 'package:metropol/core/shared/app_text.dart';

class MetropolFooter extends StatelessWidget {
  const MetropolFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 8.0),
      child: AppText.labelSmaller(
        '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et.
    
Künye      
Metropol Dijital Televizyon ve Radyo Yayıncılık San. ve Tic. A.Ş.
Arif ZOR
    
Tel: 0544 732 36 63
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
''',
        color: AppColors().white,
      ),
    );
  }
}
