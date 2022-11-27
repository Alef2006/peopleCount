import 'package:flutter/material.dart';


 
 
class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  

 
 int count=0;
  void decrement(){
    setState((){
  count--;
    });
      print(count);
  } 
  void increment(){
      setState((){
         count++;
    });
      print(count);
  }

  bool get isEmpty => count == 0;
  bool get isfull => count == 20;
 
    Widget build(BuildContext context){
    print('build');

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color.fromARGB(255, 3, 3, 96),
       body: Container(
        decoration:const  BoxDecoration(
          image:DecorationImage(
            image: AssetImage('assets/images/samuray.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
           Text(
             isfull ? 'lotado':'Pode entrar',
          style: TextStyle(
            fontSize: 35,
            letterSpacing: 2,
            color:isfull?Colors.red:Colors.blue,
            fontWeight: FontWeight.w900,
          ),
          ),
         Padding(
          padding: const EdgeInsets.all(40), 
          child:   Text('$count',
          style: TextStyle(
            fontSize: 80,
            color: isfull? Colors.red:Color.fromARGB(255, 153, 4, 153),
            fontWeight: FontWeight.w900,
          ),
          ),
          ), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children:  [
               TextButton(
                onPressed: isEmpty ? null : decrement,
                style: TextButton.styleFrom(
                  shape:RoundedRectangleBorder(
                    side:BorderSide(  
                      color: isEmpty ?  Colors.blue.withOpacity(0.2):Colors.blue,       
                      width: 3,
                      ),
                       borderRadius: BorderRadius.circular(24)
                  ), 
                  backgroundColor: Color.fromARGB(200, 211, 11, 185) ,
                  fixedSize: const Size(120,100),
                 //ou padding: const EdgeInsets.fromLTRB(32,40,32,40),
                ),
                 child: Text('Saiu',
                 style:TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.w700,
                 ),
                 ),
                 
                 ),
                 const SizedBox(width: 30,),
                 TextButton(
                onPressed: isfull ? null : increment,
                style: TextButton.styleFrom(
                  shape:RoundedRectangleBorder(
                    side:BorderSide(
                      color: isfull? Colors.blue.withOpacity(0.2):Colors.blue,
                      width: 3,
                      ),
                      borderRadius: BorderRadius.circular(24)
                  ),
                  backgroundColor: Color.fromARGB(200, 211, 11, 185) ,
                  fixedSize: const Size(120,100),
                 //ou padding: const EdgeInsets.fromLTRB(32,40,32,40),
                ),
                 child: Text('Entrou',
                 style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                 ),
                 ),
                 ),
              ],
          ),
        ],
      ),
    ),
  );
  }
}




