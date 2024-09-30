import 'package:cleancraft/data/repositories/user_repository_implementation.dart';
import 'package:cleancraft/presentation/providers/user_provider.dart';
import 'package:cleancraft/presentation/views/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/dataSources/user_remote_data_source.dart';
import 'domain/use cases/get_users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(
            GetUsers(UserRepositoryImplementation(UserRemoteDataSource())
            ),
          ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clean Architecture Demo',
        home: UserScreen(),
      ),
    );
  }
}
