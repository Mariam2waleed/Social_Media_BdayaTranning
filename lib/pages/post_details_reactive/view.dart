import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
// import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:social_media/pages/post_details_reactive/controller.dart';
import 'package:social_media/pages/post_details_reactive/form.dart';

class PostDetailsReactiveView extends StatelessWidget {
  const PostDetailsReactiveView({
    required this.controller,
    super.key,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.factory,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) =>
      HookBuilder(
        builder: (context) => PostDetailsReactiveView(
          controller: useBdayaViewController(
            hookMode: hookMode,
            instanceName: instanceName,
            keys: keys,
            param1: param1,
            param2: param2,
          ),
        ),
      );

  // //TODO: Replace T with the expected modal result
  // static Future<T?> showModal<T>(
  //   BuildContext context, {
  //   required PostDetailsReactiveFormParameters params,
  // }) async {
  //   return await showDialog<T>(
  //     context: context,
  //     builder: (context) => Dialog(
  //       //TODO: assign dialog properties
  //       child: hooked(
  //         param1: params,
  //       ),
  //     ),
  //   );
  // }

  final PostDetailsReactiveController controller;

  @override
  Widget build(BuildContext context) {
    return PostDetailsReactiveModelFormBuilder(
      key: ValueKey(controller.formVersionRx.of(context)),
      model: controller.initialModelRx.of(context),
      initState: (context, formModel) {
        controller.formGroupRx.$ = formModel;
      },
      builder: (context, formModel, child) {
        return Scaffold(
          body: ListView(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.nameControl,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              ReactivePostDetailsReactiveModelFormFormGroupArrayBuilder<
                  AddressForm>(
                builder: (context, itemList, formModel) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Addresses: ${itemList.length}'),
                      for (final fg in itemList) fg,
                      ElevatedButton(
                        onPressed: () => controller.addNewAddress(formModel),
                        child: const Text('Add New address'),
                      ),
                    ],
                  );
                },
                // formControl: formModel.addressesControl,
                extended: formModel.addressesExtendedControl,
                itemBuilder: (context, i, item, formModel) {
                  return AddressWidget(
                    key: item!.containsId
                        ? ValueKey(item.idControl.value)
                        : null,
                    formGroup: item,
                    index: i,
                    onDelete: () => formModel.addressesControl.removeAt(i),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () => controller.submit(formModel),
                child: const Text('Submit'),
              ),
              ElevatedButton(
                onPressed: () => controller.reset(formModel),
                child: const Text('Reset'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    required this.formGroup,
    required this.index,
    required this.onDelete,
    super.key,
  });

  final int index;
  final AddressForm formGroup;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    print(formGroup.form);
    return Row(
      children: [
        Column(
          children: [
            IconButton(
              onPressed: onDelete,
              icon: const Icon(Icons.delete),
            ),
            Text(index.toString()),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ReactiveTextField<String>(
                // formControlName: formGroup.line1ControlPath(),
                formControl: formGroup.line1Control,
                decoration: const InputDecoration(
                  labelText: 'Line 1',
                ),
              ),
              ReactiveTextField<String>(
                // formControlName: formGroup.line2ControlPath(),
                formControl: formGroup.line2Control,
                decoration: const InputDecoration(
                  labelText: 'Line 2',
                ),
              ),
              ReactiveTextField<String>(
                // formControlName: formGroup.postalCodeControlPath(), 
                formControl: formGroup.postalCodeControl,
                decoration: const InputDecoration(
                  labelText: 'Postal Code',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
