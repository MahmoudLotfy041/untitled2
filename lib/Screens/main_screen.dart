import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled2/Color_font/color.dart';
import 'package:untitled2/json/testfile.dart';


import '../Model/category_model.dart';
import 'Model.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  List catogre = [

    categoryModel(image: 'assets/image/111.png', text: 'Man Shirt'),
    categoryModel(image:  'assets/image/man bag.png', text: 'Dress'),
    categoryModel(image: "assets/image/man bag.png", text: 'Man work'),
    categoryModel(image:  'assets/image/woman bag.png', text: 'Woman'),
    categoryModel(image: 'assets/image/skirt.png', text: 'Skirt'),
    categoryModel(image: 'assets/image/woman shoes.png', text: 'Wom shoe'),
    categoryModel(image:  'assets/image/woman tshirt.png', text: 'Wom tsh'),

  ];
  List Itemflachsale=[
    itemflach(image1: 'https://assets.adidas.com/images/w_940,f_auto,q_auto/751eff6ab4e544dba6b1afb200aae673_9366/HR8833_21_model.jpg', text1: 'Salah Training', price: 150, des: 200, des2:" 24% Off"),
    itemflach(image1: 'https://assets.adidas.com/images/w_450,f_auto,q_auto/c45fac2279094a599d9dac63014d5edf_9366/GM8977_00_plp_laydown.jpg', text1: 'Salah Training', price: 200, des: 200,des2: " 24% Off"),
    itemflach(image1: 'https://e7.pngegg.com/pngimages/566/320/png-clipart-t-shirt-adidas-sportswear-sleeve-adidas-t-shirt-tshirt-white.png', text1: 'Salah Training', price: 160, des: 200,des2:" 24% Off"),
    itemflach(image1: 'https://images.yaoota.com/7qyhE0bhMNIcpsj0BIXDh1OU1vA=/trim/yaootaweb-production/media/crawledproductimages/c80fbdddca851dc8dd5a577d90a0cbdfcaacf08d.jpg', text1: 'Salah Training', price: 1710, des: 200,des2:" 24% Off"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              searchbar(),
              slider(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Category",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                        child: Text(
                          "More Category",
                          style: TextStyle(
                              color: Appcolor.primaricolor,
                              fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
              ),

              //Category
              FutureBuilder(
                future: getHttp(),
                  builder:(context,snapshot){
                 // snapshot.data!.data.data;
                  return  SizedBox(
                    height: 100,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemCount:  catogre.length,
                          itemBuilder: (context, i) {
                            return CategoryScreen(cate: catogre[i]);
                          }),
                    ),
                  );
                  } ),


              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: Row(
                  children: [
                    Text(
                      "Flash Sale",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff223263),
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "See More",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),

              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Itemflachsale.length,
                    itemBuilder: (context,i){
                      return  itemflachsale(sale:Itemflachsale[i],);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Mega Sale',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                    Spacer(flex: 1),
                    Text('See More',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.blue),),
                  ],
                ),
              ),


              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Itemflachsale.length,
                    itemBuilder: (context,i){
                      return  ItemFlachSale2(sale:Itemflachsale[i],);
                    }),
              ),


              SizedBox(
                height: 380,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    scrollDirection: Axis.horizontal,
                    itemCount: Itemflachsale.length,
                    itemBuilder: (context,i){
                      return  itemflachsale(sale:Itemflachsale[i],);
                    }),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key,required this.cate}) : super(key: key);
  final categoryModel cate;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 25.5,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              //------------------------------TODO
              child: Image.asset(
                cate.image,
                height: 25,
                width: 25,
              ),
            ),
          ),
          //------------------------------TODO
          Text(
            cate.text,
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}




class itemflachsale extends StatelessWidget {
  const itemflachsale({
    super.key, required this.sale,
  });
  final itemflach sale;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(10),
      height: 200,
      width: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black26),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            // margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black26),

              image: DecorationImage(image: NetworkImage(sale.image1),
                fit: BoxFit.cover,
              ),

            ),
          ),
          Text(sale.text1,
            overflow:TextOverflow.ellipsis
            , maxLines: 2,),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(sale.price.toString(),style: TextStyle(color: Colors.blue),)),
          
          Row(children: [
            Text(sale.des.toString()),
               SizedBox(width: 10,),
            Text(sale.des2,style: TextStyle(color: Colors.red,fontWeight: FontWeight.w700),),
          ],),


        ],),
    );
  }
}

class slider extends StatelessWidget {
  const slider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 220.0,
          autoPlay: true,
          viewportFraction: 0.9,
          autoPlayCurve: Curves.easeIn),
      items: [
        "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/enUS/Images/OG122-iwp-statement-card-5-d_tcm221-1050219.jpg",
        "https://imgeng.jagran.com/images/2023/may/Best%20Adidas%20Original%20Shoes%20For%20Men1682951431717.jpg",
        "https://www.adidas.com.eg/on/demandware.static/-/Sites-adidas-navigation-egy/default/dw1d0357fa/Men_Shoes.png",
        "https://cdn.fleetfeet.com/assets/adidas5.jpeg/dynamic:1-aspect:1.7777777777778-fit:cover-strategy:entropy/adidas5--1600.jpg",
        "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg",
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(i),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class searchbar extends StatelessWidget {
  const searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.65,
          margin: EdgeInsets.all(10),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search Product",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black87,
                ),
              ),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey,
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notification_add,
              size: 30,
              color: Colors.grey,
            ))
      ],
    );
  }
}



class ItemFlachSale2 extends StatelessWidget {
  const ItemFlachSale2({
    super.key, required this.sale,
  });
  final itemflach sale;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(10),
      height: 200,
      width: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black26),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            // margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black26),

              image: DecorationImage(image: NetworkImage(sale.image1),
                fit: BoxFit.cover,
              ),

            ),
          ),
          Text(sale.text1,
            overflow:TextOverflow.ellipsis
            , maxLines: 2,),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(sale.price.toString(),style: TextStyle(color: Colors.blue),)),


        ],),
    );
  }
}