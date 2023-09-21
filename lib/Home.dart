// import 'dart:convert';

// import 'package:api_rev_news/Models/news_models.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as myhttpClient;
// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   late Future<Newsmodel>obj;
//   var containerColor = Colors.white;
//   var textColor = Colors.black;
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
//   var bgcolor = Colors.grey[900];
//   var a = TextEditingController();
//   int fontno = 15;
//   @override
//   void initState() {
//     super.initState();
//     // obj = getNews('Kareena kapoor');
//     // obj = getNews('car');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(backgroundColor: bgcolor,

//         appBar: AppBar(title: Text('App'),),
//         drawer:Text('Hello'),
//         body:
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [

//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(Icons.newspaper,color: Colors.white,size: 40),
//                     Icon(Icons.more_vert,color: Colors.white,size: 40),
//                   ],
//                 ),
//               ),

//     //    Color Container

//             SizedBox(height: 30,
//               child: ListView.builder(scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(left: 15,right: 7),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(60)
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 18,right: 12),
//                         child: Center(
//                           child: Text(
//                             arr[index]['colorBox'].toString(),
//                             style: TextStyle(color:Colors.white , fontSize:fontno.toDouble())
//                           )
//                         ),
//                       ),
//                     ),
//                   );
//                   },itemCount: 5,
//                 ),
//               ),

//               // Expanded(

//               //           child:
//               //           FutureBuilder<Newsmodel>(
//               //             future: obj,
//               //             builder: (_,snapshot){
//               //               if(snapshot.hasData){
//               //                 return PageView.builder(
//               //                   itemCount: snapshot.data!.articles!.length,
//               //                   itemBuilder: (_, index) {
//               //                     return Stack(
//               //                       children: [
//               //                         ClipRRect(
//               //                           borderRadius: BorderRadius.circular(20),
//               //                           child: Image.network(
//               //                             snapshot.data!.articles![index].urlToImage==null?'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg':snapshot.data!.articles![index].urlToImage!
//               //                           )
//               //                         ),
//               //                         Text(
//               //                           snapshot.data!.articles![index].title==null?'Not Title Availble':"Title : "+snapshot.data!.articles![index].title!
//               //                           ,style: const TextStyle(fontSize: 20,color: Colors.white),
//               //                         ),
//               //                         Align(alignment: Alignment.center,
//               //                           child: Text(
//               //                             snapshot.data!.articles![index].description==null?'Not Availble':snapshot.data!.articles![index].description!
//               //                             ,style: const TextStyle(fontSize: 20,color: Colors.white),
//               //                           ),
//               //                         ), 
//               //                         Align(alignment: Alignment.bottomCenter,
//               //                           child: Text(
//               //                             snapshot.data!.articles![index].author==null?'Not Author Availble':"Auther is "+snapshot.data!.articles![index].author!
//               //                             ,style: const TextStyle(fontSize: 20,color: Colors.blue),
//               //                           ),
//               //                         ),
//               //                       ],
//               //                     );
//               //                   },
//               //                 );
//               //               }else if(snapshot.hasData){
//               //                 return Center(child: Text('${snapshot.error}'),);
//               //               }else{
//               //                 return const Center(child: CircularProgressIndicator());
//               //               }
//               //             },
//               //           ),
//               // )

//               Expanded(
//                 child: PageView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(height: 50,width: 380,
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(40)
//                         ),
//                       ),
//                     );
//                   },
//                   itemCount: 5,
//                 ),
//               )

//             ],
//           ),
//         )
//       ),
//     );
//   }
//   //   Future<Newsmodel>getNews(var q)async
//   // {
//   //   var mUral = "https://newsapi.org/v2/everything?q=$q&apiKey=ea5d249f546740d1882c26cd4a9b454a";
//   //   var res = await myhttpClient.get(Uri.parse(mUral));
//   //   if(res.statusCode==200)
//   //   {
//   //     var data = jsonDecode(res.body);
//   //     return Newsmodel.fromJson(data);
//   //   }
//   //   else
//   //   {
//   //     return Newsmodel();
//   //   }
//   // }
// }
