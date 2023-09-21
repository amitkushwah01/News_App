// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as httpClient;
// import 'Models/news_models.dart';

// class Just extends StatefulWidget
// {
//   @override
//   State<Just> createState() => _JustState();
// }

// class _JustState extends State<Just> {
//   var arr=[
//     {   
//       'color'      :Colors.red,
//       'hastageURL ':'Indian IPL',
//       'colorBox'   :'All',
//       'colorBoxURL':'Threads',
//       'hastageText':'# India',
//     },
//     {
//       'color'      :Colors.orange,
//       'hastageURL' :'Indian Politics',
//       'colorBox'   :'Politics',
//       'colorBoxURL':'Indian Politics',
//       'hastageText':'# India',
//     },
//     {   
//       'color'      :Colors.yellow,  
//       'hastageURL' :'Indian IPL',
//       'colorBox'   :'Cinema',
//       'colorBoxURL':'Indian Army',
//       'hastageText':'# India',
//     },
//     {   
//       'color'      :Colors.blue,
//       'hastageURL' :'Indian IPL',
//       'colorBox'   :'Cinema',
//       'colorBoxURL':'Cinema',
//       'hastageText':'# India',
//     },
//     {
//       'color'      :Colors.red,
//       'hastageURL' :'Indian IPL',
//       'colorBox'   :'Cinema',
//       'colorBoxURL':'Cinema',
//       'hastageText':'# India',
//     },
//     {
//       'color'      :Colors.orange,
//       'hastageURL' :'Indian IPL',
//       'colorBox'   :'Cinema',
//       'colorBoxURL':'Cinema',
//       'hastageText':'# India',
//     },
//     {
//       'color'      :Colors.yellow,
//       'hastageText':'# India',
//       'colorBox'   :'Cinema',
//       'colorBoxURL':'Cinema',
//       'hastageURL' :'Indian IPL',
//     },
//     {
//      'color'       :Colors.blue,
//      'hastageURL'  :'Indian IPL',
//      'colorBox'    :'Cinema',
//      'colorBoxURL' :'Cinema',
//      'hastageText' :'# India',
//     },
//     {
//      'color'       :Colors.blue,
//      'hastageURL'  :'Indian IPL',
//      'colorBox'    :'Cinema',
//      'colorBoxURL' :'Cinema',
//      'hastageText' :'# India',
//     },
//   ];
//   var containerColor = Colors.white;
//   var textColor = Colors.black;

//   var selectedindex = 0;
//   var bg = Colors.grey[200];
//   var drowerbg = Colors.grey[800];
//   late Future<Newsmodel>obj;

//   @override
//   void initState() {
//     super.initState();
//     obj = getNews('bike');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return 
//     Scaffold(backgroundColor: bg,
//       appBar: AppBar(title:  
//       Row(
//         children: [
//           SizedBox(width: 75,),
//           Text('Renbang.ind'),
//           SizedBox(width: 100,),
//           Icon(Icons.alarm)
//         ],
//       )),

//       drawer: Drawer(
//         child:Icon(Icons.home)
//       ),
      
//       body:
//         Column(
//           children: [
//           SizedBox(height: 8),
//             SizedBox(height: 40,
//               child: 
//               Padding(
//                 padding: EdgeInsets.only(left: 8 , right: 8),
//                 child: Stack(
//                   children: [

//                     TextFormField(
//                         decoration:InputDecoration(
//                           filled: true,
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(17)
//                           )
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(left: 90,top: 12),
//                         child: Text('Find Interesting News'),
//                       ),
// //    Search Icon Box
//                       Icon(Icons.search , size: 40,),
//                       Align(alignment: Alignment.topRight,
//                         child: Padding(
//                           padding:  EdgeInsets.all(4),
//                           child: Container(height: 40,width: 100,
//                             decoration: BoxDecoration(color: Colors.red,
//                               borderRadius: BorderRadius.circular(20)
//                             ),
//                             child: InkWell(
//                               onTap: (){},
//                               child:
//                                   Center(child: Text('Search'))
//                               )
//                             ),
//                         ),
//                         ),
// //    Search Icon End Box

//                   ],
//                 ),
//               ),
//             ),

// SizedBox(height: 10,),

//             SizedBox(height: 30,
//               child: ListView.builder(scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.only(left: 15,right: 7),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(60)
//                       ),
//                       child: Padding(
//                         padding:  EdgeInsets.only(left: 18,right: 12),
//                         child: Center(
//                           child: Text(
//                             arr[index]['colorBox'].toString(),
//                           )
//                         ),
//                       ),
//                     ),
//                   );
//                   },itemCount: 5,
//                 ),
//               ),

// SizedBox(height: 10,),

//             Expanded(
//               child: PageView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding:  EdgeInsets.all(8.0),
//                     child: Container(height: 50,width: 380,
//                       decoration: BoxDecoration(
//                         color: Colors.blue,
//                          borderRadius: BorderRadius.circular(25)
//                         ),
//                      ),
//                   );
//                 },
//                 itemCount: 10,
//               ),
//             ),
// //  API Integration

// //
//           ],
//         ),
//       bottomNavigationBar: BottomNavigationBar(backgroundColor: bg,
//         currentIndex: selectedindex,
//         onTap: (value) {
//           selectedindex = value;
//           setState(() {});
//         },
//         items:  [
//           BottomNavigationBarItem(icon: Icon(Icons.home  ,), label: 'Home'  , activeIcon: Icon (Icons.home  ,size: 30 )),
//           BottomNavigationBarItem(icon: Icon(Icons.logout  ),label: 'LogOut', activeIcon: Icon (Icons.logout,size: 30 )),
//         ],
//       ),
//     );
//   }
//     Future<Newsmodel>getNews(String q)async
//   {
//     // var mUral = "https://newsapi.org/v2/everything?q=car&apiKey=ea5d249f546740d1882c26cd4a9b454a";
//     var mUral = "https://api.pexels.com/v1/search?query=nature&per_page=1";
//     var res = await httpClient.get(Uri.parse(mUral) , headers: {"Authorization":"GYJm0cNufW4Kyb11oaox1HyiCUdi9Gf3SDC4tFAsXBa65gVqS6RFvqp6"});

//     if(res.statusCode==200)
//     {
//       var data = jsonDecode(res.body);
//       return Newsmodel.fromJson(data);
//     }
//     else
//     {
//       return Newsmodel();
//     }
//   }
// }