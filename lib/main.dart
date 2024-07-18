import 'package:ecommerce_admin/src/shared/domain/repository/auth/auth_repository.dart';
import 'package:ecommerce_admin/src/shared/domain/repository/categary/categary_repo.dart';
import 'package:ecommerce_admin/src/shared/domain/repository/product/product_repo.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/auth/auth_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/bloc/add_picture_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/category/category_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/product/product_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/simple_page/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthBloc(AuthRepository())),
        BlocProvider(create: (_) => CategoryBloc(CategaryRepository())),
        BlocProvider(create: (_) => ProductBloc(ProductRepository())),
        BlocProvider(create: (_) => AddPictureBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-commerce Admin',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const SplashScrn(),
      ),
    );
  }
}
