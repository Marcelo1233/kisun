import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'login_cadastro_widget.dart' show LoginCadastroWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginCadastroModel extends FlutterFlowModel<LoginCadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for NomeCriar widget.
  FocusNode? nomeCriarFocusNode;
  TextEditingController? nomeCriarController;
  String? Function(BuildContext, String?)? nomeCriarControllerValidator;
  // State field(s) for emailAddresscadastro widget.
  FocusNode? emailAddresscadastroFocusNode;
  TextEditingController? emailAddresscadastroController;
  String? Function(BuildContext, String?)?
      emailAddresscadastroControllerValidator;
  // State field(s) for passwordCadastro widget.
  FocusNode? passwordCadastroFocusNode;
  TextEditingController? passwordCadastroController;
  late bool passwordCadastroVisibility;
  String? Function(BuildContext, String?)? passwordCadastroControllerValidator;
  // State field(s) for passwordCadastroConfir widget.
  FocusNode? passwordCadastroConfirFocusNode;
  TextEditingController? passwordCadastroConfirController;
  late bool passwordCadastroConfirVisibility;
  String? Function(BuildContext, String?)?
      passwordCadastroConfirControllerValidator;
  // State field(s) for emailAddresslogin widget.
  FocusNode? emailAddressloginFocusNode;
  TextEditingController? emailAddressloginController;
  String? Function(BuildContext, String?)? emailAddressloginControllerValidator;
  // State field(s) for password_login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordCadastroVisibility = false;
    passwordCadastroConfirVisibility = false;
    passwordLoginVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    nomeCriarFocusNode?.dispose();
    nomeCriarController?.dispose();

    emailAddresscadastroFocusNode?.dispose();
    emailAddresscadastroController?.dispose();

    passwordCadastroFocusNode?.dispose();
    passwordCadastroController?.dispose();

    passwordCadastroConfirFocusNode?.dispose();
    passwordCadastroConfirController?.dispose();

    emailAddressloginFocusNode?.dispose();
    emailAddressloginController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
