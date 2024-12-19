import 'package:flutter/material.dart';
import 'package:online_shop/components/app_image.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          width: m_w(context) * 0.9,
          height: m_w(context) * 0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.withOpacity(0.3)),
          child: Center(
            child: Row(
              children: [
                const Center(
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: 300,
                  padding: const EdgeInsets.only(bottom: 5),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Maxsulot va toiflarni qidirish",
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: m_h(context) * 0.26,
            child: PageView(
              children: [
                Column(
                  children: [
                    Expanded(flex: 9,
                      child: Container(
                        // title: const Text(data),
                             width: double.infinity,  
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(AppImage.imgs1),fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    // Expanded(
                    //   flex: 1,
                    //   child: Text(""),),
                      
                  ],
                ),
                  Container(
                  height: m_h(context) * 0.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AppImage.imgs2)),
                  ),
                ),
                 
                Container(
                  height: m_h(context) * 0.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AppImage.imgs3)),
                  ),
                ),
                Container(
                  height: m_h(context) * 0.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AppImage.imgs4)),
                  ),
                ),
              ],
            ),
          ),

      SizedBox(
        height: 200,
        
        width: double.infinity,
        child: ListView.separated(
          
          itemCount: 7,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 12),
        separatorBuilder: (context, index) {
          return SizedBox(width: 12);
        },
          itemBuilder: (context, index){
          return Column(
            children: [
              
              CircleAvatar(
               radius: 35,
                backgroundColor: Colors.red,
               // backgroundImage: NetworkImage("https://picsum.photos/id/{index}/{width}/{height}"),
                backgroundImage: AssetImage([AppImage.imgs1, AppImage.imgs2, AppImage.imgs3, AppImage.imgs4, AppImage.imgs2,AppImage.imgs2, AppImage.imgs3][index]),
                
              ),
              SizedBox(height: 4),
              Text(["Katta savat","Bodiy","Bayram uchun","Uzum avto","Kobinint","Kridet","Nimadir"][index])
            ],
          );
        },),
      ),
            ],
      ),
   
    );
    //  bady:Column(
     
    //  ),
    
  }
}
