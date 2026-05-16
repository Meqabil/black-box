sealed class CrashState{}

class CrashInitial extends CrashState{}
class CrashLoading extends CrashState{}
class CrashSuccess extends CrashState{
  List crashes;
  CrashSuccess(this.crashes);
}
class CrashDeleted extends CrashState{}
class CrashFailure extends CrashState{
  String message;
  CrashFailure(this.message);
}
