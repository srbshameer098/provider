import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/provider.dart';
import 'package:untitled3/provider.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // int firstNum;
  // int secondNum;
  // String textToDispaly;
  // String res;
  // String opreation;

  void btnOnClick(String btnVal){
    print(btnVal);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => A(),
      child: MaterialApp(
        title: 'Flutter Provider',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter provider'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
     print("rebuilded");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Calculater',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black
              ),
            ),
            Center(
              child: Padding(
                padding:  EdgeInsets.only(top: 50),
                child: Container(alignment:const Alignment (1.0,1.0),
                  width: 330,
                  height: 100,
                  decoration:
                  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(14),
                  ),

                  child: Consumer<A>(
                      builder: (BuildContext context, value, Widget? child) {
                    return
                      Container(alignment:const Alignment (1.0,1.0),
                      width: 100,
                      height: 50,
                      decoration:
                        BoxDecoration(
                          color: Colors.transparent,
                            borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children:[
                        // Text(value. counter.toString(),
                        // style: const TextStyle(
                        //   fontSize: 35,
                        //   color: Colors.white
                        // ),
                        // ),
                          CalcButton(),

    //                     var calc = SimpleCalculator(
    //                     value: _currentValue!,
    //                     hideExpression: false,
    //                     hideSurroundingBorder: true,
    //                     autofocus: true,
    //                     onChanged: (key, value, expression) {
    //                     setState(() {
    //                     _currentValue = value ?? 0;
    //                     });
    // if (kDebugMode) {
    // print('$key\t$value\t$expression');
    // }
    // },
    // onTappedDisplay: (value, details) {
    // if (kDebugMode) {
    // print('$value\t${details.globalPosition}');
    // }
    // },
    // theme: const CalculatorThemeData(
    // borderColor: Colors.black,
    // borderWidth: 2,
    // displayColor: Colors.black,
    // displayStyle: TextStyle(fontSize: 80, color: Colors.yellow),
    // expressionColor: Colors.indigo,
    // expressionStyle: TextStyle(fontSize: 20, color: Colors.white),
    // operatorColor: Colors.pink,
    // operatorStyle: TextStyle(fontSize: 30, color: Colors.white),
    // commandColor: Colors.orange,
    // commandStyle: TextStyle(fontSize: 30, color: Colors.white),
    // numColor: Colors.grey,
    // numStyle: TextStyle(fontSize: 50, color: Colors.white),
    // ),
    //                     ),
    //                     );

                        ]
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:[ Padding(
              padding: EdgeInsets.only(left: 55,top: 355),
              child: FloatingActionButton(
                onPressed: () {
                  Provider.of<A>(context, listen: false).changeValue();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),

                 ),
            ),

              Padding(
                padding:EdgeInsets.only(left: 20,top: 355),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<A>(context, listen: false).changeValue1();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.minimize),



                ),
              ),


              Padding(
                padding:EdgeInsets.only(left: 20,top: 355),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<A>(context, listen: false).changeValue1();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.close_rounded),



                ),
              ),
              Padding(
                padding:EdgeInsets.only(left: 20,top: 355),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<A>(context, listen: false).changeValue1();
                  },
                  tooltip: 'Decrement',
                  child: const Text('/',
                  style: TextStyle(

                    fontSize: 20

                  ),
                  ),



                ),
              ),

     ] ),


          Row(
              children:[ Padding(
                padding: EdgeInsets.only(left: 55,top: 20),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<A>(context, listen: false).button7();
                  },
                  tooltip: 'Increment',
                  child: const Text('7',
                    style: TextStyle(

                        fontSize: 20

                    ),
                  ),

                ),
              ),

                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).button8();
                    },
                    tooltip: 'Decrement',
                    child: const Text('8',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),


                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).button9();
                    },
                    tooltip: 'Decrement',
                    child: const Text('9',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),


                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).changeValue1();
                    },
                    tooltip: 'Decrement',
                    child: const Text('%',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),

              ] ),

          Row(
              children:[ Padding(
                padding: EdgeInsets.only(left: 55,top: 20),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<A>(context, listen: false).button4();
                  },
                  tooltip: 'Increment',
                  child: const Text('4',
                    style: TextStyle(

                        fontSize: 20

                    ),
                  ),

                ),
              ),

                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).button5();
                    },
                    tooltip: 'Decrement',
                    child: const Text('5',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),


                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).button6();
                    },
                    tooltip: 'Decrement',
                    child: const Text('6',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),


                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).buttonc();
                    },
                    tooltip: 'Decrement',
                    child: const Text('C',
                      style: TextStyle(

                          fontSize: 20


                      ),
                    ),



                  ),
                ),

              ] ),


          Row(
              children:[ Padding(
                padding: EdgeInsets.only(left: 55,top: 20),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<A>(context, listen: false).button1();
                  },
                  tooltip: 'Increment',
                  child: Text('1',
                    style: TextStyle(

                        fontSize: 20

                    ),
                  ),

                ),
              ),

                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).button2();
                    },
                    tooltip: 'Decrement',
                    child: const Text('2',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),


                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).button3();
                    },
                    tooltip: 'Decrement',
                    child: const Text('3',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),


                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).changeValue1();
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.arrow_back),



                  ),
                ),

              ] ),


          Row(
              children:[ Padding(
                padding: EdgeInsets.only(left: 55,top: 20),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<A>(context, listen: false).button0();
                  },
                  tooltip: 'Increment',
                  child: Text('0',
                    style: TextStyle(

                        fontSize: 20

                    ),
                  ),

                ),
              ),

                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).button00();
                    },
                    tooltip: 'Decrement',
                    child: const Text('00',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),


                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).buttondot();
                    },
                    tooltip: 'Decrement',
                    child: const Text('.',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),


                Padding(
                  padding:EdgeInsets.only(left: 20,top: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      Provider.of<A>(context, listen: false).changeValue1();
                    },
                    tooltip: 'Decrement',
                    child: const Text('=',
                      style: TextStyle(

                          fontSize: 20

                      ),
                    ),



                  ),
                ),

              ] ),

        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class CalcButtonState extends State<CalcButton> {
  double? _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    var calc = SimpleCalculator(
      value: _currentValue!,
      hideExpression: false,
      hideSurroundingBorder: true,
      autofocus: true,
      onChanged: (key, value, expression) {
        setState(() {
          _currentValue = value ?? 0;
        });
        if (kDebugMode) {
          print('$key\t$value\t$expression');
        }
      },
      onTappedDisplay: (value, details) {
        if (kDebugMode) {
          print('$value\t${details.globalPosition}');
        }
      },
      theme: const CalculatorThemeData(
        borderColor: Colors.black,
        borderWidth: 2,
        displayColor: Colors.black,
        displayStyle: TextStyle(fontSize: 80, color: Colors.yellow),
        expressionColor: Colors.indigo,
        expressionStyle: TextStyle(fontSize: 20, color: Colors.white),
        operatorColor: Colors.pink,
        operatorStyle: TextStyle(fontSize: 30, color: Colors.white),
        commandColor: Colors.orange,
        commandStyle: TextStyle(fontSize: 30, color: Colors.white),
        numColor: Colors.grey,
        numStyle: TextStyle(fontSize: 50, color: Colors.white),
      ),
    );
    return OutlinedButton(
      child: Text(_currentValue.toString()),
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: calc);
            });
      },
    );
  }
}

class CalcButton extends StatefulWidget {
  const CalcButton({Key? key}) : super(key: key);

  @override
  CalcButtonState createState() => CalcButtonState();
}
