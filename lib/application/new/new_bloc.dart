
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:universal_shop/infrastructure/models/auth/auth_model.dart';
import 'package:universal_shop/infrastructure/models/user/user_model.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

part 'new_bloc.freezed.dart';

part 'new_event.dart';

part 'new_state.dart';

class NewBloc extends Bloc<NewEvent, NewState> {

  NewBloc() : super(const _NewState()) {
    on<_SignUp>(_verifySignUp);
  }

  Future<void> _verifySignUp(
      _SignUp login,
      Emitter<NewState> emit,
      ) async {

  }
}
