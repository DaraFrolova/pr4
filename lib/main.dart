import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Работа со списками')),

      body: Container ( color: Colors.teal,
        child: Center(child:  Column(children: [

        Text(' ', style: TextStyle(fontSize: 22, color: Colors.green)),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_4');}, child: Text('Список на Widget-е Column',style: TextStyle(fontSize: 14, color: Colors.indigo) )),
        Text(' ', style: TextStyle(fontSize: 22, color: Colors.green)),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_5');}, child: Text('Список на Widget-е ListView',style: TextStyle(fontSize: 14, color: Colors.indigo) )),
        Text(' ', style: TextStyle(fontSize: 22, color: Colors.green)),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_6');}, child: Text('Список на Widget-е ListView.separated',style: TextStyle(fontSize: 14, color: Colors.indigo) ))

      ],))),

    );

  }

}



class Screen_4 extends StatefulWidget {
 
  @override
  _Screen_4s createState() => _Screen_4s();
}


class _Screen_4s extends State<Screen_4>{

  TextEditingController _nameController = TextEditingController();

  final sp1 = List.generate(15,(index)=>'Эллемент № ${index + 1}');

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Список на Widget-е Column',style: TextStyle(fontSize: 18, color: Colors.indigo))),

      body: new Column (  
	children: [
        Container ( color: Colors.cyan,   height:100,
        child: Center(child:  Column(
        children: [
          new TextField(  controller: _nameController,  decoration: InputDecoration(    hintText: 'Новый эллемент списка или номер удаляемого',  ),),
          ElevatedButton(onPressed: (){ setState(() => sp1.add( _nameController.text)); }, child: Text('Добавить в список',style: TextStyle(fontSize: 20, color: Colors.indigo))),
          ]))),
	Expanded(
        child: Container ( color: Colors.grey[800],   height:380, width: 400,
	child: Column(textDirection: TextDirection.ltr, crossAxisAlignment: CrossAxisAlignment.start,
         children:  sp1.map((item) => Text(item, style: TextStyle(fontSize: 16, color: Colors.white))).toList(),
            ),
       ),),
        Container ( color: Colors.lime,   height:100, 
       child: Center(child:  Column(
        children: [
          ElevatedButton(onPressed: (){ setState(() => sp1.removeAt(int.parse( _nameController.text))); }, child: Text('Удалить из списка по номеру',style: TextStyle(fontSize: 20, color: Colors.green))),
          ElevatedButton(onPressed: (){ Navigator.pop(context);}, child: Text('Назад',style: TextStyle(fontSize: 24, color: Colors.blue)))
   ])), 

       ),
    ]
    ),
    );

  }

}




class Screen_5 extends StatefulWidget {
 
  @override
  _Screen_5s createState() => _Screen_5s();
}


class _Screen_5s extends State<Screen_5>{

  TextEditingController _nameController = TextEditingController();

  final sp1 = List.generate(15,(index)=>'Эллемент № ${index + 1}');

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Список на Widget-е ListView',style: TextStyle(fontSize: 18, color: Colors.indigo))),

      body: new Column (  
	children: [
        Container ( color: Colors.cyan,   height:100,
        child: Center(child:  Column(
        children: [
          new TextField(  controller: _nameController,  decoration: InputDecoration(    hintText: 'Новый эллемент списка или номер удаляемого',  ),),
          ElevatedButton(onPressed: (){ setState(() => sp1.add( _nameController.text)); }, child: Text('Добавить в список',style: TextStyle(fontSize: 20, color: Colors.indigo))),
          ]))),

	Expanded(
        child: Container ( color: Colors.grey[800],   height:380, 
	child: ListView.builder(
            itemCount: sp1.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(index.toString()+'  '+sp1[index], style: TextStyle(fontSize: 16, color: Colors.white));
            }),
       ),),

        Container ( color: Colors.lime,   height:100, 
       child: Center(child:  Column(
        children: [
          ElevatedButton(onPressed: (){ setState(() => sp1.removeAt(int.parse( _nameController.text))); }, child: Text('Удалить из списка по номеру',style: TextStyle(fontSize: 20, color: Colors.green))),
          ElevatedButton(onPressed: (){ Navigator.pop(context);}, child: Text('Назад',style: TextStyle(fontSize: 24, color: Colors.blue)))
   ])), 

       ),
    ]
    ),
    );

  }

}




class Screen_6 extends StatefulWidget {
 
  @override
  _Screen_6s createState() => _Screen_6s();
}


class _Screen_6s extends State<Screen_6>{

  TextEditingController _nameController = TextEditingController();

  final sp1 = List.generate(15,(index)=>'Эллемент № ${index + 1}');

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Список на Widget-е ListView.separated',style: TextStyle(fontSize: 18, color: Colors.indigo))),

      body: new Column (  
	children: [
        Container ( color: Colors.cyan,   height:100,
        child: Center(child:  Column(
        children: [
          new TextField(  controller: _nameController,  decoration: InputDecoration(    hintText: 'Новый эллемент списка или номер удаляемого',  ),),
          ElevatedButton(onPressed: (){ setState(() => sp1.add( _nameController.text)); }, child: Text('Добавить в список',style: TextStyle(fontSize: 20, color: Colors.indigo))),
          ]))),
 
	Expanded(
        child: Container ( color: Colors.grey[800],   height:380, 
	child: ListView.separated(
            itemCount: sp1.length,
            separatorBuilder: (BuildContext context, int index) =>
                Divider(height: 10, color: Colors.cyan,  thickness: 2,),
            itemBuilder: (BuildContext context, int index) {
              return Text(index.toString()+'  '+sp1[index], style: TextStyle(fontSize: 16, color: Colors.white));
            }),
       ),),

        Container ( color: Colors.lime,   height:100, 
       child: Center(child:  Column(
        children: [
          ElevatedButton(onPressed: (){ setState(() => sp1.removeAt(int.parse( _nameController.text))); }, child: Text('Удалить из списка по номеру',style: TextStyle(fontSize: 20, color: Colors.green))),
          ElevatedButton(onPressed: (){ Navigator.pop(context);}, child: Text('Назад',style: TextStyle(fontSize: 24, color: Colors.blue)))
   ])), 

       ),
    ]
    ),
    );

  }

}





void main() {

  runApp(MaterialApp(

    initialRoute: '/',

    routes: {

      '/':(BuildContext context) => MainScreen(),

      '/screen_4':(BuildContext context) => Screen_4(),
      '/screen_5':(BuildContext context) => Screen_5(),
      '/screen_6':(BuildContext context) => Screen_6()
     }

  ));

}











