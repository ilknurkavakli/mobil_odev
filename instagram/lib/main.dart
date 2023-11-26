import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity ,
              height: 45,
              child:
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle,
                          color:Colors.black87,
                          size: 20,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          color:Colors.black87,
                          size: 20,
                          ),
                      ),
                      Padding(
                           padding: const EdgeInsets.only(top:8.0,left:8,bottom:8,right: 20),
                           child: Icon(
                             Icons.send,
                             color:Colors.black87,
                             size: 20,
                                             ),
                         ),
                    ],
                  ),
                 
                ],
              )
            ),
            Expanded(
              child: Container(
                //width: 50,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              StoryWidget("assets/images/resim_1.jpg", "İlknur Kavaklı"),
                              StoryWidget("assets/images/resim_3.jpg", "İlyas Yalçıntaş"),
                              StoryWidget("assets/images/resim_9.jpg", "Eda Aydın"),
                              StoryWidget("assets/images/resim2.jpg", "Yiğit Mahzuni"),
                              StoryWidget("assets/images/resim_1.jpg", "İlknur Kavaklı"),
                              StoryWidget("assets/images/resim_3.jpg", "İlyas Yalçıntaş"),
                              StoryWidget("assets/images/resim_9.jpg", "Eda Aydın"),
                              StoryWidget("assets/images/resim2.jpg", "Yiğit Mahzuni"),
                              StoryWidget("assets/images/resim_1.jpg", "İlknur Kavaklı"),
                              StoryWidget("assets/images/resim_3.jpg", "İlyas Yalçıntaş"),
                              StoryWidget("assets/images/resim_9.jpg", "Eda Aydın"),
                              StoryWidget("assets/images/resim2.jpg", "Yiğit Mahzuni"),
                              StoryWidget("assets/images/resim_1.jpg", "İlknur Kavaklı"),
                              StoryWidget("assets/images/resim_3.jpg", "İlyas Yalçıntaş"),
                              StoryWidget("assets/images/resim_9.jpg", "Eda Aydın"),
                              StoryWidget("assets/images/resim2.jpg", "Yiğit Mahzuni"),
                              
                             
                            ],
                          ),
                        ),
                      ),
                      PostItem("assets/images/resim_1.jpg","assets/images/resim_6.jpg","İlknur Kavaklı","İstanbul"),
                      PostItem("assets/images/resim_3.jpg","assets/images/resim_8.jpg","İlyas Yalçıntaş","İstanbul"),
                      PostItem("assets/images/resim2.jpg","assets/images/resim_7.jpg","Yiğit Mahzuni","İstanbul"), 
                      PostItem("assets/images/resim_9.jpg","assets/images/resim_4.jpg","Eda Aydın","İstanbul"),
                      PostItem("assets/images/resim_1.jpg","assets/images/resim_6.jpg","İlknur Kavaklı","İstanbul"),
                      PostItem("assets/images/resim_3.jpg","assets/images/resim_8.jpg","İlyas Yalçıntaş","İstanbul"),
                      PostItem("assets/images/resim2.jpg","assets/images/resim_7.jpg","Yiğit Mahzuni","İstanbul"),
                      PostItem("assets/images/resim_9.jpg","assets/images/resim_4.jpg","Eda Aydın","İstanbul"),                    
                    ]
                    ),
                ),                             
              ),
            ),
            Container(
              width:double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color:Colors.black12
                   ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.home,size: 28,color: Colors.black54,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.search,size: 28,color: Colors.black54,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.smart_display,size: 28,color: Colors.black54,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite,size: 28,color: Colors.black54,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.person,size: 28,color: Colors.black87,),
                  ),
                ]),
            ),
              
          ],
        ),
      ),
    );
  }

  Container PostItem(String resim , String photo ,String isim, String location) => Container(
    child: Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: Column(
        children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:AssetImage(resim, 
                        ) ,
                        radius: 20,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(isim ,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                          Text(location ,style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Image.asset(photo),
            LikeCommentBox(),
            CommentBox("Edaa","Muhteşem Görüntü"),
            
        ],
        ),
    ),
  );

  Padding LikeCommentBox() {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border,color: Colors.black87),
                  SizedBox(width: 8,),
                  Icon(Icons.comment_bank_outlined,color:Colors.black87),
                ],
              ),
              
              Icon(Icons.flag_circle_outlined,color:Colors.black87),
              
            ],),
        );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Edaa",style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color:Colors.black87,
              )),
              SizedBox(width: 5,),
              Text("Muhteşem Görüntü" , style: TextStyle(color: Colors.black54 ,fontSize: 12),),
            ],
          ),
        );
  }

  Widget StoryWidget(String avatar, String text) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
                            children: [
                              Container(
                                padding:EdgeInsets.all(3) ,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  gradient:LinearGradient(colors:[
                                  const Color.fromRGBO(214,71,130,1),
                                  const Color.fromRGBO(241,166,117,1) ]) ,
                                  shape: BoxShape.circle
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage:AssetImage(avatar) ,
                                    radius:40 ,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(text,
                               style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
    );
  }

}

