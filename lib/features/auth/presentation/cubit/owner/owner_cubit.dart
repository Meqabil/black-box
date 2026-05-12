import 'dart:io';

import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/domain/usecases/delete_owner_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/show_owner_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/update_owner.dart';
import 'package:black_box/features/auth/presentation/cubit/owner/owner_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import '../../../../../core/network/network_info.dart';
import '../../../../../core/network/network_info_imp.dart';

class OwnerCubit extends Cubit<OwnerState>{
  final ShowOwnerUseCase showOwnerUseCase;
  final UpdateOwnerUseCase updateOwnerUseCase;
  final DeleteOwnerUseCase deleteOwnerUseCase;
  OwnerCubit(this.showOwnerUseCase, this.updateOwnerUseCase, this.deleteOwnerUseCase) : super(OwnerInitial());

  Future<void> showOneOwner(int id) async{
    NetworkInfo network = NetworkInfoImpl();
    emit(OwnerLoading());
    try{
      final OwnerEntity owner = await showOwnerUseCase(id);
      emit(OwnerSuccess(owner));
    } on DioException catch (e){
      if(await network.isConnected){
        if(e.response != null){
          emit(OwnerFailure("Failed to load owner data"));
        }else{
          emit(OwnerFailure("No Internet Connection"));
        }
      }
    }
  }

  Future<void> updateOwner({required int id,required String name,File? image}) async{
    NetworkInfo network = NetworkInfoImpl();
    emit(OwnerLoading());
    try{
      await updateOwnerUseCase(id: id,name: name,image: image);
      emit(OwnerUpdated());
    } on DioException catch (e){
      if(await network.isConnected){
        if(e.response != null){
          emit(OwnerFailure("Failed to update owner data"));
        }else{
          emit(OwnerFailure("No Internet Connection"));
        }
      }
    }
  }

  Future<void> deleteOwner(int id) async{
    NetworkInfo network = NetworkInfoImpl();
    emit(OwnerLoading());
    try{
      await deleteOwnerUseCase(id);
      emit(OwnerDeleted());
    } on DioException catch (e){
      if(await network.isConnected){
        if(e.response != null){
          emit(OwnerFailure("Failed to delete owner"));
        }else{
          emit(OwnerFailure("No Internet Connection"));
        }
      }
    }
  }
}

