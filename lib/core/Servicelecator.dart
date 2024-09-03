import 'package:bookly/core/ApiSevice.dart';
import 'package:bookly/features/home/data/repos/homerepoimpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<Apisevice>(Apisevice(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<Apisevice>()));
}
