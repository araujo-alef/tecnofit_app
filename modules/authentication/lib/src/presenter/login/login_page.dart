import 'package:authentication/src/presenter/login/login_controller.dart';
import 'package:authentication/src/presenter/login/states/login_state.dart';
import 'package:core/dependencies.dart';
import 'package:designfitness/designfitness.dart';
import 'package:designfitness/widgets/panel_authentication/panel_authentication.dart';
import 'package:designfitness/widgets/text_input/fitness_text_input.dart';
import 'package:designfitness/widgets/text_input/variant_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:i18n/i18n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: AppColorScheme.COLOR_WHITE_FIT,
      body: Observer(builder: (_) {
        LoginState state = controller.loginState;
        if (state is LoadingState) {
          return const Center(
            child: SizedBox(
              height: 40,
              width: 40,
              child: CircularProgressIndicator(
                color: AppColorScheme.COLOR_BLUE_FIT,
                strokeWidth: 8,
              ),
            ),
          );
        }
        return Stack(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: height * 100,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 5),
                    PanelAuthentication(
                      image:
                          "packages/designfitness/assets/images/running_person.svg",
                      title: S.of(context).login.toUpperCase(),
                    ),
                    SizedBox(height: height * 6),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 10),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            FitnessTextInput(
                              validator: (String value) {
                                if (value.length < 5) {
                                  return 'Este e-mail está muito pequeno, não?';
                                } else if (!value.contains("@")) {
                                  return "Não é sempre que encontro um e-mail sem '@'";
                                }
                                return null;
                              },
                              onChanged: controller.addEmail,
                              variant: VariantTextInput.normal,
                              prefixIcon: Icons.email_rounded,
                              hintText:
                                  "${S.of(context).email.toString().substring(0, 1).toUpperCase()}${S.of(context).email.toString().substring(1)}",
                            ),
                            SizedBox(height: height * 1),
                            FitnessTextInput(
                              validator: (String value) {
                                if (value.length < 6) {
                                  return 'Digite ao menos 6 caracteres para ficar seguro';
                                }
                                return null;
                              },
                              onChanged: controller.addPassword,
                              prefixIcon: Icons.lock_rounded,
                              sufixIcon: Icons.visibility_rounded,
                              variant: VariantTextInput.secret,
                              hintText:
                                  "${S.of(context).password.toString().substring(0, 1).toUpperCase()}${S.of(context).password.toString().substring(1)}",
                            ),
                            SizedBox(height: height * 1),
                            SizedBox(height: height * 2),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 6),
                              child: SizedBox(
                                width: double.infinity,
                                child: FitnessButton(
                                  text: S.of(context).login.toUpperCase(),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      controller.login(context);
                                    }
                                  },
                                  variant: ButtonVariant.primary,
                                  variantSize: VariantSizeButton.large,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            state is ErrorState
                ? Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.red,
                      width: width * 100,
                      height: 60,
                      child: FitnessText(
                        variant: TextVariant.appBar,
                        text: "Erro ao conectar-se, tente novamente",
                      ),
                    ),
                  )
                : Container(),
          ],
        );
      }),
    );
  }
}
