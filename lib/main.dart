import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/crud_bloc.dart';
import 'services/pages/add_todo.dart';
import 'splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CrudBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // color: 0xff7d50f7,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

class SqFliteDemo extends StatefulWidget {
  const SqFliteDemo({Key? key}) : super(key: key);

  @override
  State<SqFliteDemo> createState() => _SqFliteDemoState();
}

class _SqFliteDemoState extends State<SqFliteDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('TODO'),
          // 'https://assets5.lottiefiles.com/packages/lf20_p9e3k0ln.json',
          backgroundColor: const Color(0xff7d50f7),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (c) => const AddTodoPage()));
          },
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Click Below Button to Add TODO",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ));
  }
}
