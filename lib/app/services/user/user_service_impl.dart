import 'package:app_tarefas/app/repositories/user/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './user_service.dart';

class UserServiceImpl implements UserService {
  UserRepository _userRepository;

  UserServiceImpl({required UserRepository userRepository})
      : _userRepository = userRepository;
  @override
  Future<User?> register(String email, String password) =>
      _userRepository.register(email, password);
}
