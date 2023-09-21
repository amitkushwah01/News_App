import 'dart:convert';
import 'package:api_rev_news/Splash_Screen.dart';
import 'package:http/http.dart' as httpClient;
import 'package:api_rev_news/Models/news_models.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // late Future<Newsmodel>obj;
  var containerColor = Colors.white;
  var textColor = Colors.black;
  var arr=[
    {   
      'color'      :Colors.red,
      'hastageURL ':'Indian IPL',
      'colorBox'   :'All',
      'colorBoxURL':'Indian IPL',
      'hastageText':'# India',
    },
    {
      'color'      :Colors.orange,
      'hastageURL' :'Indian Politics',
      'colorBox'   :'Politics',
      'colorBoxURL':'India Prime minister',
      'hastageText':'# India',
    },
    {   
      'color'      :Colors.yellow,  
      'hastageURL' :'Indian IPL',
      'colorBox'   :'Cinema',
      'colorBoxURL':'Indian Army',
      'hastageText':'# Indian IPL',
    },
    {   
      'color'      :Colors.blue,
      'hastageURL' :'Indian IPL',
      'colorBox'   :'Cinema',
      'colorBoxURL':'Cinema',
      'hastageText':'# India',
    },
    {
      'color'      :Colors.red,
      'hastageURL' :'Indian IPL',
      'colorBox'   :'Cinema',
      'colorBoxURL':'Cinema',
      'hastageText':'# India',
    },
    {
      'color'      :Colors.orange,
      'hastageURL' :'Indian IPL',
      'colorBox'   :'Cinema',
      'colorBoxURL':'Cinema',
      'hastageText':'# India',
    },
    {
      'color'      :Colors.yellow,
      'hastageText':'# India',
      'colorBox'   :'Cinema',
      'colorBoxURL':'Cinema',
      'hastageURL' :'Indian IPL',
    },
    {
     'color'       :Colors.blue,
     'hastageURL'  :'Indian IPL',
     'colorBox'    :'Cinema',
     'colorBoxURL' :'Cinema',
     'hastageText' :'# India',
    },
    {
     'color'       :Colors.blue,
     'hastageURL'  :'Indian IPL',
     'colorBox'    :'Cinema',
     'colorBoxURL' :'Cinema',
     'hastageText' :'# India',
    },
  ];
  var selectedindex = 0;
  late Future<Newsmodel>obj;
  var bgcolor = Colors.grey[300];
  var search_ber = TextEditingController();
  var bg = Colors.grey[300];
  var imghieght = 220;
  @override
  void initState() {
    super.initState();
    obj = getNews('Indian IPL');
  }

  @override
  Widget build(BuildContext context) {

    return
    Scaffold(backgroundColor:bg ,
      appBar: AppBar(title:
      Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width*(.2),),
          Text('Renbang.ind'),
          SizedBox(width: MediaQuery.of(context).size.width*(.2),),
          Icon(Icons.alarm)
        ],
      )),

      drawer: Drawer(
        child:Icon(Icons.home)
      ),
      
      body:
        Column(
          children: [
          SizedBox(height: 8),
            SizedBox(height: 40,
              child: 
              Padding(
                padding: EdgeInsets.only(left: 8 , right: 8),
                child: Stack(
                  children: [

                    TextFormField(
                      controller: search_ber,
                        decoration:InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17)
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 90,top: 12),
                        child: Text('Find Interesting News'),
                      ),
//    Search Icon Box
                      // Icon(Icons.search , size: 40,),
                      Align(alignment: Alignment.topRight,
                        child: Padding(
                          padding:  EdgeInsets.all(4),
                          child: Container(height: 40,width: 100,
                            decoration: BoxDecoration(color: Colors.red,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: InkWell(
                              onTap: (){
                                var local = search_ber.text.toString();
                                obj = getNews(local);setState(() {});
                              },
                              child:
                                  Center(child: Text('Search'))
                              )
                            ),
                          ),
                        ),
//    Search Icon End Box

                  ],
                ),
              ),
            ),

SizedBox(height: 10,),

            SizedBox(height: 30,
              child: ListView.builder(scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 15,right: 7),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 18,right: 12),
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              obj = getNews(arr[index]['colorBoxURL']);
                              setState(() {});
                            },
                            child: Text(
                              arr[index]['colorBox'].toString(),
                            ),
                          )
                        ),
                      ),
                    ),
                  );
                  },itemCount: 5,
                ),
              ),

SizedBox(height: 10,),

                    Expanded(
                        child:
//    API
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FutureBuilder<Newsmodel>(
                          future: obj,
                          builder: (_,snapshot){
                            if(snapshot.hasData){
                              return PageView.builder(scrollDirection: Axis.vertical,
                                itemCount: snapshot.data!.articles!.length,
                                itemBuilder: (_, index) {
                                  return Column(
                                    children: [

                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                         child: Image.network(
                                          snapshot.data!.articles![index].urlToImage==null?'https://st2.depositphotos.com/5312214/10026/i/450/depositphotos_100262776-stock-photo-photo-coming-soon-note-pad.jpg':snapshot.data!.articles![index].urlToImage!,height: MediaQuery.of(context).size.height*.35,
                                        )
                                      ),

                                      Text(
                                        snapshot.data!.articles![index].title==null?'Not Title Availble':"Title : "+snapshot.data!.articles![index].title!
                                        ,style: const TextStyle(fontSize: 22,color: Colors.red),
                                      ),SizedBox(height: 10,),

                                      // Text(  
                                      //   snapshot.data!.articles![index].description==null?'Not Availble':snapshot.data!.articles![index].description!
                                      //   ,style: const TextStyle(fontSize: 18),
                                      // ),

                                      Expanded(flex: 8,
                                        child: Align(alignment: Alignment.bottomRight,
                                          child: Text(
                                            snapshot.data!.articles![index].author==null?'Not Author Availble...?':"Auther is... "+snapshot.data!.articles![index].author!
                                            ,style: const TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container())

                                    ],
                                  );
                                },
                              );
                            }else if(snapshot.hasData){
                              return Center(child: Text('${snapshot.error}'),);
                            }else{
                              return const Center(child: CircularProgressIndicator());
                            }
                          },
                        ),
                      ),
//    API

            ),
//  API Integration

//
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home  ,),label: 'Home'  , activeIcon: Icon (Icons.home  ,size: 30 )),
          BottomNavigationBarItem(icon: Icon(Icons.logout ),label: 'LogOut', activeIcon: Icon (Icons.logout,size: 30 )),
        ],
      ),
    );
  }
  Future<Newsmodel>getNews(var q)async
  {
    var mUral = "https://newsapi.org/v2/everything?q=$q&apiKey=ea5d249f546740d1882c26cd4a9b454a";
    var res = await httpClient.get(Uri.parse(mUral));
    if(res.statusCode==200)
    {
      var data = jsonDecode(res.body);
      return Newsmodel.fromJson(data);
    }
    else
    {
      return Newsmodel();
    }
  }
}
