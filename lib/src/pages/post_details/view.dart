// import 'dart:js';

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media/src/pages/post_details/controller.dart';

class PostDetailsView extends StatelessWidget {
  const PostDetailsView({
    required this.controller,
    super.key,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.lazySingleton,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) =>
      HookBuilder(
        builder: (context) => PostDetailsView(
          controller: useBdayaViewController(
            hookMode: hookMode,
            instanceName: instanceName,
            keys: keys,
            param1: param1,
            param2: param2,
          ),
        ),
      );

  final PostDetailsController controller;

  @override
  Widget build(BuildContext context) {
    final id = controller.idRx.of(context);
    if (id == null) {
      return const SizedBox.shrink();
    }
    //see also BdayaMultiLoadableAreaWrapper,
    // and BdayaLoadableAreaWrapper.custom
    return BdayaLoadableAreaWrapper(
      area: controller.defaultArea,
      builder: (context) {
        //start using details after loading is done
        final details = controller.detailsRx.of(context);
        if (details == null) {
          return const SizedBox.shrink();
        }
        final addresses = controller.addresses.of(context);
        //show details here
        return Form(
          key: controller.formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Product Details'),
            ),
            body: ListView(
              children: [
                TextFormField(
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  onSaved: (newValue) {
                    controller.savedTextValue = newValue;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Test',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter value';
                    }
                    return null;
                  },
                ),
                for (var i = 0; i < addresses.length; i++)
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.addresses.update((p0) {
                            p0.removeAt(i);
                            return p0;
                          });
                        },
                        icon: const Icon(Icons.delete),
                      ),
                      Expanded(
                        child: AddressFormField(
                          key: ValueKey(addresses[i].hashCode),
                          initialValue: addresses[i],
                          onSaved: (newValue) {
                            if (newValue == null) return;
                            controller.addresses.update((list) {
                              list[i] = newValue;
                              return list;
                            });
                          },
                          validator: (value) {
                            return null;

                            // controller.logger.info(
                            //'Address validator called');
                            //   if (value?.line1.startsWith('a') == true) {
                            //     return 'Line 1 can not start with a';
                            //   }
                            //   if (value?.postalcode.isEmpty ?? true) {
                            //     // controller.logger.info('Postal code is empty');
                            //     return 'Please enter a postal code';
                            //   }
                            //   return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ElevatedButton(
                  onPressed: controller.addNewAddress,
                  child: const Text('Add New address'),
                ),
                ElevatedButton(
                  onPressed: controller.submit,
                  child: const Text('Submit'),
                ),
                ElevatedButton(
                  onPressed: controller.reset,
                  child: const Text('Reset'),
                ),
              ],
            ),
          ),
        );
      },
      // //show errors
      // displayErrors: true,
      // //customize error builder
      // errorBuilder: (context, displayName, error, st) {

      // },
      // //customize loading builder
      // isLoadingBuilder: (context, displayName) {

      // },
    );
  }
}

class Address {
  Address({
    required this.id,
    required this.line1,
    required this.line2,
    required this.postalcode,
  });

  final String id;
  final TextEditingValue line1;
  final TextEditingValue line2;
  final TextEditingValue postalcode;

  Address copyWith({
    TextEditingValue? line1,
    TextEditingValue? line2,
    TextEditingValue? postalcode,
  }) {
    return Address(
      id: id,
      line1: line1 ?? this.line1,
      line2: line2 ?? this.line2,
      postalcode: postalcode ?? this.postalcode,
    );
  }

  @override
  String toString() {
    return 'Address(id: $id, line1: ${line1.text}, line2: ${line2.text}, postalcode: ${postalcode.text})';
  }
}

class AddressFormField extends FormField<Address> {
  AddressFormField({
    super.key,
    super.onSaved,
    super.validator,
    super.initialValue,
    super.enabled = true,
    super.autovalidateMode,
    super.restorationId,
  }) : super(
          builder: (state) {
            // final context = state.context;
            final value = state.value ??
                Address(
                  id: 'empty',
                  line1: TextEditingValue.empty,
                  line2: TextEditingValue.empty,
                  postalcode: TextEditingValue.empty,
                );
            return Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Line 1',
                  ),
                  controller: TextEditingController.fromValue(value.line1),
                  onChanged: (newLine1) {
                    state.didChange(
                      value.copyWith(
                        line1: value.line1.copyWith(text: newLine1),
                      ),
                    );
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Line 2',
                  ),
                  controller: TextEditingController.fromValue(value.line2),
                  onChanged: (newLine2) {
                    state.didChange(
                      value.copyWith(
                        line2: value.line1.copyWith(text: newLine2),
                      ),
                    );
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Postal code',
                  ),
                  controller: TextEditingController.fromValue(value.postalcode),
                  onChanged: (newPostalcode) {
                    state.didChange(
                      value.copyWith(
                        postalcode:
                            value.postalcode.copyWith(text: newPostalcode),
                      ),
                    );
                  },
                ),
                if (state.hasError)
                  Text(
                    state.errorText!,
                    style: const TextStyle(color: Colors.red),
                  ),
              ],
            );
            // state.didChange(value);
          },
        );
}
