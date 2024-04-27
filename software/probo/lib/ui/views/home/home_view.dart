import 'package:flutter/material.dart';
import 'package:probo/ui/Widgets/auto_switch.dart';

import 'package:probo/ui/Widgets/triangleWidget/dwnwd_triangle.dart';
import 'package:probo/ui/Widgets/triangleWidget/frwrd_triangle.dart';
import 'package:probo/ui/Widgets/triangleWidget/lftwrd_triangle.dart';
import 'package:probo/ui/Widgets/triangleWidget/rgtward_triangle.dart';
import 'package:probo/ui/Widgets/triangleWidget/stop_button.dart';
import 'package:probo/ui/common/ui_helpers.dart';
import 'package:probo/ui/smart_widgets/online_status.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Home"),
                IsOnlineWidget(),
              ],
            ),
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Automatic',
                              style: TextStyle(fontSize: 25),
                            ),
                            AutoSwitch(
                                isAuto: model.isAuto, onClick: model.autoButton)
                          ],
                        ),
                        verticalSpaceMedium,
                        Container(
                          width: 200,
                          height: 200,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 9,
                                left: 76,
                                child: ForwardTriangle(
                                  onTap: () => model.isDirection('f'),
                                ),
                              ),
                              Positioned(
                                top: 70,
                                right: 13,
                                left: 16,
                                child: Row(
                                  children: [
                                    LeftwardTriangle(
                                      onTap: () => model.isDirection('l'),
                                    ),
                                    horizontalSpaceSmall,
                                    StopButton(
                                      onTap: () => model.isDirection('s'),
                                    ),
                                    horizontalSpaceSmall,
                                    RightwardTriangle(
                                      onTap: () => model.isDirection('r'),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 76,
                                child: DownwardTriangle(
                                  onTap: () => model.isDirection('b'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        verticalSpaceMedium,
                        const Divider(
                          thickness: 2,
                          indent: 25,
                          endIndent: 25,
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          onPressed: () => model.isDirection('BN'),
                          icon: const Icon(Icons.on_device_training),
                          label: const Text("Belt on"),
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          onPressed: () => model.isDirection('BO'),
                          icon: const Icon(Icons.on_device_training),
                          label: const Text("Belt off"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.onModelReady();
      },
    );
  }
}
