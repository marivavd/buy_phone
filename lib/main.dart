import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'phone',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 300,
              ),
              Image.asset("assets/phone.jpg")
            ],
          ),
          Center(
            child: Text('Смартфон Huawei Nova 11i',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  width: double.infinity,
                  height: 450,
                  child: Text(
                    'Смартфон HUAWEI nova 11i оснащен полноэкранным IPS-дисплеем диагональю 6.8 дюймов, что удобно для просмотра фильмов, фотографий, игр или приложений. Тонкий корпус черного цвета изготовлен из прочного пластика, устойчивого к воздействию внешних факторов. Благодаря 8-ядерному процессору и 8 ГБ оперативной памяти, загрузка данных осуществляется с высокой скоростью. Частота экрана 90 Гц обеспечивает плавный переход и смену картинки.Смартфон HUAWEI nova 11i имеет камеру 48+2 Мп, с помощью которой можно делать четкие и детализированные изображения при разном уровне освещенности. Слот для карт рассчитан на две SIM, что удобно для разделения личных или рабочих разговоров. Объема памяти на 128 ГБ достаточно для хранения большого количества информации. Батарея мощностью 40 Вт поддерживает быструю зарядку и рассчитана на длительную работу. Объема памяти на 128 ГБ достаточно для хранения большого количества информации. Батарея мощностью 40 Вт поддерживает быструю зарядку и рассчитана на длительную работу. Объема памяти на 128 ГБ достаточно для хранения большого количества информации. Батарея мощностью 40 Вт поддерживает быструю зарядку и рассчитана на длительную работу.',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 14, fontFamily: 'Inter'),
                    overflow: TextOverflow.fade,
                  )
              )
          ),
          Container(
            width: 324,
            height: 48,
            child: OutlinedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  width: double.infinity,
                  height: 161,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 21,),
                        Container(
                          width: 324,
                          height: 48,
                          child: OutlinedButton(onPressed: (){}, child: Text('Добавить в корзину',
                              style: TextStyle(fontSize: 18,
                                color: Color(0xFF4F95FF),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )
                          ),
                          ),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 2, color: Color(0xFF4F95FF)),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                        SizedBox(height: 21,),
                        Container(
                          width: 324,
                          height: 48,
                          child: OutlinedButton(onPressed: (){}, child: Text('Купить в один клик',
                              style: TextStyle(fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              )
                          ),
                          ),
                          decoration: ShapeDecoration(
                            color: Color(0xFF4F95FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                        SizedBox(height: 21,),
                      ],
                    ),
                  ),
                );
              });
            }, child: Text('Купить', style: TextStyle(color: Colors.white, fontSize: 18),),),
            decoration: ShapeDecoration(
              color: Color(0xFF4F95FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          )
        ],
      ),
    );
  }

}
