import 'package:app_hazconta/app/global_widgets/alredy_have_an_account_acheck.dart';
import 'package:app_hazconta/app/global_widgets/change_password.dart';
import 'package:app_hazconta/app/global_widgets/rounded_button.dart';
import 'package:app_hazconta/app/global_widgets/rounded_input_field.dart';
import 'package:app_hazconta/app/global_widgets/rounded_password_field.dart';
import 'package:app_hazconta/app/modules/login/local_widgets/background.dart';
import 'package:app_hazconta/app/modules/login/login_controller.dart';
import 'package:app_hazconta/app/routes/app_routes.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<LoginController>(
      id: 'formLogin',
      builder: (_) => Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Background(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(30.0),
                  children: <Widget>[
                    Form(
                      key: _.formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'ENTRAR',
                            style: AppTextStyles.titlePage,
                          ),
                          SvgPicture.asset(
                            "assets/icons/my-password-pana.svg",
                            height: size.height * 0.35,
                          ),
                          RoundedInputField(
                            textInputAction: TextInputAction.next,
                            hintText: "Tu correo",
                            type: TextInputType.emailAddress,
                            onChanged: _.onEmailChanged,
                            validator: _.onEmailValidator,
                            icon: FaIcon(
                              FontAwesomeIcons.envelope,
                              color: AppColors.kPrimaryColor,
                            ),
                          ),
                          RoundedPasswordField(
                            onChanged: _.onPassChanged,
                            validators: _.onPassValidator,
                            onFieldSubmitted: (String value) =>
                                _.validateForm(context),
                          ),
                          RoundedButton(
                            color: _.isLoading
                                ? Colors.grey
                                : AppColors.kPrimaryColor,
                            text: _.isLoading ? "Cargando..." : "Entrar",
                            press: () => _.validateForm(context),
                          ),
                          SizedBox(height: size.height * 0.02),
                          AlredyHaveAnAccountCheck(
                            press: () {
                              Get.toNamed(AppRoutes.REGISTER);
                            },
                          ),
                          SizedBox(height: size.height * 0.02),
                          ChangePassword()
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
