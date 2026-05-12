import 'package:black_box/features/auth/domain/entities/owner_entity.dart';

sealed class OwnerState {

}

class OwnerInitial extends OwnerState{}
class OwnerLoading extends OwnerState{}
class OwnerDeleted extends OwnerState{}
class OwnerUpdated extends OwnerState{}
class OwnerSuccess extends OwnerState{
  final OwnerEntity owner;
  OwnerSuccess(this.owner);
}
// class OwnerUpdated extends OwnerState{
//   final OwnerEntity owner;
//   OwnerUpdated(this.owner);
// }

class OwnerFailure extends OwnerState{
  final String message;
  OwnerFailure(this.message);
}

