import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController validateSearchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Layout"),
        backgroundColor: Color.fromRGBO(43,73,77,1),
      ),

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Wrap(
                        children: [
                          Text("Discover The Best Product!",style: TextStyle(color: Color.fromRGBO(43,73,77,1),fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    )
                  ],
                ),
                SizedBox(height:10),
                TextField(
                  controller: validateSearchController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.black,),
                    suffixIcon: Icon(Icons.tune,color: Colors.black,),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "Search your products"
                  ),
                ),
                ElevatedButton(
                    onPressed: validateSearch
                    , child: Text("Search"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(43,73,77,1),
                    ),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
      )
    );
  }
  void validateSearch(){
    if(validateSearchController.text.toString().isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter something in the search field.")));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Seaching item.")));
    }
  }
}
