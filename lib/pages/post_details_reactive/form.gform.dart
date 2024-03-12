// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePostDetailsReactiveModelFormConsumer extends StatelessWidget {
  const ReactivePostDetailsReactiveModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      PostDetailsReactiveModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePostDetailsReactiveModelForm.of(context);

    if (formModel is! PostDetailsReactiveModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PostDetailsReactiveModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const PostDetailsReactiveModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PostDetailsReactiveModelForm form;
}

class ReactivePostDetailsReactiveModelForm extends StatelessWidget {
  const ReactivePostDetailsReactiveModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PostDetailsReactiveModelForm form;

  final WillPopCallback? onWillPop;

  static PostDetailsReactiveModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PostDetailsReactiveModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PostDetailsReactiveModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PostDetailsReactiveModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return PostDetailsReactiveModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

extension ReactiveReactivePostDetailsReactiveModelFormExt on BuildContext {
  PostDetailsReactiveModelForm? postDetailsReactiveModelFormWatch() =>
      ReactivePostDetailsReactiveModelForm.of(this);

  PostDetailsReactiveModelForm? postDetailsReactiveModelFormRead() =>
      ReactivePostDetailsReactiveModelForm.of(this, listen: false);
}

class PostDetailsReactiveModelFormBuilder extends StatefulWidget {
  const PostDetailsReactiveModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PostDetailsReactiveModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      PostDetailsReactiveModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, PostDetailsReactiveModelForm formModel)? initState;

  @override
  _PostDetailsReactiveModelFormBuilderState createState() =>
      _PostDetailsReactiveModelFormBuilderState();
}

class _PostDetailsReactiveModelFormBuilderState
    extends State<PostDetailsReactiveModelFormBuilder> {
  late PostDetailsReactiveModelForm _formModel;

  @override
  void initState() {
    _formModel = PostDetailsReactiveModelForm(
        PostDetailsReactiveModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant PostDetailsReactiveModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactivePostDetailsReactiveModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class PostDetailsReactiveModelForm
    implements FormModel<PostDetailsReactiveModel> {
  PostDetailsReactiveModelForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String addressesControlName = "addresses";

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);

  String addressesControlPath() => pathBuilder(addressesControlName);

  String? get _nameValue => nameControl?.value;

  List<Address> get _addressesValue =>
      addressesAddressForm.map((e) => e.model).toList();

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAddresses {
    try {
      form.control(addressesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl?.errors;

  Object? get addressesErrors => addressesControl.errors;

  void get nameFocus => form.focus(nameControlPath());

  void get addressesFocus => form.focus(addressesControlPath());

  void nameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressesValueUpdate(
    List<Address> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      addressesClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <Address>[];
    final toAdd = <Address>[];

    localValue.asMap().forEach((k, v) {
      final values = (addressesControl.controls).map((e) => e.value).toList();

      if (addressesAddressForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      addressesControl.updateValue(
          toUpdate.map((e) => AddressForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        addressesControl.add(AddressForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void addressesInsert(
    int i,
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = (addressesControl.controls).map((e) => e.value).toList();
    if (values.length < i) {
      addAddressesItem(value);
      return;
    }

    addressesControl.insert(
      i,
      AddressForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void addressesClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressesAddressForm.clear();
    addressesControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressesValuePatch(
    List<Address> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = addressesAddressForm.asMap().keys;

    final toPatch = <Address>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    addressesControl.patchValue(
        toPatch.map((e) => AddressForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void nameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void addressesValueReset(
    List<Address> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressesControl.reset(
          value:
              value.map((e) => AddressForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String>? get nameControl => containsName
      ? form.control(nameControlPath()) as FormControl<String>?
      : null;

  FormArray<Map<String, Object?>> get addressesControl =>
      form.control(addressesControlPath()) as FormArray<Map<String, Object?>>;

  List<AddressForm> get addressesAddressForm {
    final values = (addressesControl.controls).map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, AddressForm(form, pathBuilder("addresses.$k"))))
        .values
        .toList();
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addressesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<AddressForm>>
      get addressesExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<AddressForm>>(
              form.control(addressesControlPath())
                  as FormArray<Map<String, Object?>>,
              () => addressesAddressForm);

  void addAddressesItem(Address value) {
    addressesControl.add(AddressForm.formElements(value));
  }

  void removeAddressesItemAtIndex(int i) {
    if ((addressesControl.value ?? []).length > i) {
      addressesControl.removeAt(i);
    }
  }

  void addAddressesItemList(List<Address> value) {
    value.map((e) => addAddressesItem(e));
  }

  @override
  PostDetailsReactiveModel get model {
    if (!currentForm.valid) {
      debugPrintStack(
          label:
              '[${path ?? 'PostDetailsReactiveModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PostDetailsReactiveModel(
        name: _nameValue, addresses: _addressesValue);
  }

  @override
  void submit({
    required void Function(PostDetailsReactiveModel model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    PostDetailsReactiveModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          PostDetailsReactiveModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  @override
  void reset({
    PostDetailsReactiveModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(
          PostDetailsReactiveModel? postDetailsReactiveModel) =>
      FormGroup({
        nameControlName: FormControl<String>(
            value: postDetailsReactiveModel?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        addressesControlName: FormArray(
            (postDetailsReactiveModel?.addresses ?? [])
                .map((e) => AddressForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class AddressForm implements FormModel<Address> {
  AddressForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String line1ControlName = "line1";

  static const String line2ControlName = "line2";

  static const String postalCodeControlName = "postalCode";

  final FormGroup form;

  final String? path;

  String idControlPath() => pathBuilder(idControlName);

  String line1ControlPath() => pathBuilder(line1ControlName);

  String line2ControlPath() => pathBuilder(line2ControlName);

  String postalCodeControlPath() => pathBuilder(postalCodeControlName);

  String get _idValue => idControl.value as String;

  String? get _line1Value => line1Control?.value;

  String? get _line2Value => line2Control?.value;

  String? get _postalCodeValue => postalCodeControl?.value;

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLine1 {
    try {
      form.control(line1ControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLine2 {
    try {
      form.control(line2ControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPostalCode {
    try {
      form.control(postalCodeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get idErrors => idControl.errors;

  Object? get line1Errors => line1Control?.errors;

  Object? get line2Errors => line2Control?.errors;

  Object? get postalCodeErrors => postalCodeControl?.errors;

  void get idFocus => form.focus(idControlPath());

  void get line1Focus => form.focus(line1ControlPath());

  void get line2Focus => form.focus(line2ControlPath());

  void get postalCodeFocus => form.focus(postalCodeControlPath());

  void line1Remove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLine1) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          line1ControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            line1ControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void line2Remove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLine2) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          line2ControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            line2ControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void postalCodeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPostalCode) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          postalCodeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            postalCodeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void line1ValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    line1Control?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void line2ValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    line2Control?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postalCodeValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postalCodeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void line1ValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    line1Control?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void line2ValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    line2Control?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postalCodeValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postalCodeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void line1ValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      line1Control?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void line2ValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      line2Control?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void postalCodeValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      postalCodeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String>? get line1Control => containsLine1
      ? form.control(line1ControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get line2Control => containsLine2
      ? form.control(line2ControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get postalCodeControl => containsPostalCode
      ? form.control(postalCodeControlPath()) as FormControl<String>?
      : null;

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void line1SetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      line1Control?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      line1Control?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void line2SetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      line2Control?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      line2Control?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void postalCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      postalCodeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      postalCodeControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Address get model {
    if (!currentForm.valid) {
      debugPrintStack(
          label:
              '[${path ?? 'AddressForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Address(
        id: _idValue,
        line1: _line1Value,
        line2: _line2Value,
        postalCode: _postalCodeValue);
  }

  @override
  void submit({
    required void Function(Address model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AddressForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Address? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Address? address) => FormGroup({
        idControlName: FormControl<String>(
            value: address?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        line1ControlName: FormControl<String>(
            value: address?.line1,
            validators: [Line1Validator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        line2ControlName: FormControl<String>(
            value: address?.line2,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        postalCodeControlName: FormControl<String>(
            value: address?.postalCode,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactivePostDetailsReactiveModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactivePostDetailsReactiveModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PostDetailsReactiveModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PostDetailsReactiveModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      PostDetailsReactiveModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePostDetailsReactiveModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactivePostDetailsReactiveModelFormFormGroupArrayBuilder<T>
    extends StatelessWidget {
  const ReactivePostDetailsReactiveModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<T>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<T>> Function(
      PostDetailsReactiveModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PostDetailsReactiveModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      PostDetailsReactiveModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePostDetailsReactiveModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <T>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveAddressFormConsumer extends StatelessWidget {
  const ReactiveAddressFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, AddressForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAddressForm.of(context);

    if (formModel is! AddressForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class AddressFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const AddressFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final AddressForm form;
}

class ReactiveAddressForm extends StatelessWidget {
  const ReactiveAddressForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final AddressForm form;

  final WillPopCallback? onWillPop;

  static AddressForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<AddressFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        AddressFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as AddressFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return AddressFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveAddressFormExt on BuildContext {
  AddressForm? addressFormWatch() => ReactiveAddressForm.of(this);

  AddressForm? addressFormRead() => ReactiveAddressForm.of(this, listen: false);
}

class AddressFormBuilder extends StatefulWidget {
  const AddressFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Address? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, AddressForm formModel, Widget? child) builder;

  final void Function(BuildContext context, AddressForm formModel)? initState;

  @override
  _AddressFormBuilderState createState() => _AddressFormBuilderState();
}

class _AddressFormBuilderState extends State<AddressFormBuilder> {
  late AddressForm _formModel;

  @override
  void initState() {
    _formModel = AddressForm(AddressForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AddressFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveAddressForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ReactiveAddressFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveAddressFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(AddressForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, AddressForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, AddressForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAddressForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveAddressFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveAddressFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<T>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<T>> Function(
      AddressForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, AddressForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, AddressForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAddressForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <T>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
