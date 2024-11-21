import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graduation_project/core/constant/app_texts.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart';
import '../../widget/app_bar/app_bar.dart';
import '../controller/address_controller.dart';
import '../widget/address_action_section.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddressController());
    return Scaffold(
      appBar: CustomAppBar(title: Text(AppTexts.location, style: Styles.styleBold20,), showArrowBack: true,),

      body: Column(
        children: [
          GetBuilder<AddressController>(
            builder: (controller) {
              return Expanded(
                flex: 3,
                child: controller.kGooglePlex != null
                    ? GoogleMap(
                  markers: controller.markers,
                  mapType: MapType.normal,
                  initialCameraPosition: controller.kGooglePlex!,
                  onMapCreated: (GoogleMapController controllermap) {
                    controller.completerController
                        .complete(controllermap);
                  },
                )
                    : const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                ),
              );
            },
          ),

          const AddressActionSection()
        ],
      ),
    );
  }
}




