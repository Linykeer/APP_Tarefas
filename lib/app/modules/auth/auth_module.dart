import 'package:app_tarefas/app/core/modules/todo_list_modules.dart';
import 'package:app_tarefas/app/modules/auth/login/login_controller.dart';
import 'package:app_tarefas/app/modules/auth/login/login_page.dart';
import 'package:app_tarefas/app/modules/auth/register/register_controller.dart';
import 'package:app_tarefas/app/modules/auth/register/register_page.dart';
import 'package:provider/provider.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(
              create: (_) => LoginController(),
            ),
            ChangeNotifierProvider(
              create: (_) => RegisterController(),
            ),
          ],
          router: {
            '/login': (context) => const LoginPage(),
            '/register': (context) => const RegisterPage()
          },
        );
}
