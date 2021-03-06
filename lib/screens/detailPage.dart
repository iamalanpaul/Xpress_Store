import 'package:flutter/material.dart';

class DetailPages extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;
  
  DetailPages({this.img, this.title, this.price, this.context});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            img,
            height: MediaQuery.of(context).size.height/1.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            ),
          IconButton(
            padding: EdgeInsets.only(left:20,top:40),
            icon: Icon(
              Icons.close,
            ),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
              child: Container(
              height: MediaQuery.of(context).size.height/2.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
              ),
              child: Column(
                children:[
                  Expanded(
                    child:SingleChildScrollView(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Text('hello'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '$title',
                                style: TextStyle(fontSize: 28),
                              ),
                              Text(
                                '$price',
                                style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('size'),
                                    SizedBox(height: 5,),
                                    Text('M',style: TextStyle(fontSize: 22),),
                                  ],
                                ), 
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children:[
                                      Text('Qty'),
                                      SizedBox(height:5),
                                      Text(
                                        '1',
                                        style: TextStyle(fontSize: 22),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(height:20),
                          Divider(thickness: 1.5,),
                          ListTile(
                            leading: Text(
                              'Details',
                              style:TextStyle(fontSize:18),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: (){},
                            ),
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          ListTile(
                            leading: Text(
                              'Shipping Details',
                              style:TextStyle(fontSize: 18),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: (){},
                            )
                          ),
                          Divider(thickness: 1.5,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.amber[50],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                        height:40,
                        width:50,
                        child: Icon(Icons.favorite_border),
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey),shape: BoxShape.circle),
                      ),
                      FlatButton.icon(
                        onPressed:(){},
                        icon:Icon(Icons.shopping_cart_outlined,), 
                        label:Text("Add to Cart",style: TextStyle(fontSize:18,color: Colors.black),),
                        color: Colors.pink[50],
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/6,vertical: 10,)
                        ),
                    ],
                    ),

                  ),

                ],
              ),
              ),
          ),
          
      ],
      ),
    );
  }
}