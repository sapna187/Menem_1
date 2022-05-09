import 'package:flutter/material.dart';
import 'package:menem/constants.dart';
import 'package:menem/home_screen.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  //form key
  final _formkey = GlobalKey<FormState>();

  //editing controllers
  final TextEditingController idController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController pronounceController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    //ID field
    final iD = TextFormField(
        style: const TextStyle(
            fontFamily: "myFont",
            fontWeight: FontWeight.w600,
            color: white),
        controller: idController,
        autofocus: false,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: white,
              width: 2.0,
            ),
          ),
          fillColor: background, filled: true,
          contentPadding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
          hintText: "MeNeM ID (eg.Happy100)",
          hintStyle: const TextStyle(
              fontFamily: "myFont",
              color: white, fontSize: 16
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value) {
          RegExp regex = RegExp(r'^.{3,}$');
          if(value!.isEmpty){
            return("ID can't be empty");
          }
          if(!regex.hasMatch(value)){
            return("Please enter a valid MeNem ID(min 3 char)");
          }
          return null;
        },
        onSaved: (value)
        {
          idController.text = value!;
        },
        textInputAction: TextInputAction.next
    );

    //country field
    final country = TextFormField(
        style: const TextStyle(
            fontFamily: "myFont",
            fontWeight: FontWeight.w600,
            color: white),
        controller: countryController,
        autofocus: false,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: white,
              width: 2.0,
            ),
          ),
          fillColor: background, filled: true,
          contentPadding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
          hintText: "Country",
          hintStyle: const TextStyle(
              fontFamily: "myFont",
              color: white, fontSize: 16
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value) {
          RegExp regex = RegExp(r'^.{4,}$');
          if(value!.isEmpty){
            return ("Please enter Country/Region");
          }
          if(!regex.hasMatch(value)){
            return ("Enter valid country name");
          }
          return null;
        },
        onSaved: (value)
        {
          countryController.text = value!;
        },
        textInputAction: TextInputAction.next
    );

    //city field
    final city = TextFormField(
        style: const TextStyle(
            fontFamily: "myFont",
            fontWeight: FontWeight.w600,
            color: white),
        controller: cityController,
        autofocus: false,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: white,
              width: 2.0,
            ),
          ),
          fillColor:background, filled: true,
          contentPadding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
          hintText: "City",   //dropdown option
          hintStyle: const TextStyle(
              fontFamily: "Inter",
              color: white, fontSize: 16
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value){
          RegExp regex = RegExp(r'^.{2,}$');
          if(value!.isEmpty){
            return ("Please Enter your City");
          }
          if(!regex.hasMatch(value)){
            return ("Invalid City name");
          }
        },
        onSaved: (value)
        {
          cityController.text = value!;
        },
        textInputAction: TextInputAction.next
    );

    //dob field
    final Date = TextFormField(
        style: const TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
            color: white),
        controller: dateController,
        autofocus: false,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.calendar_today_rounded, color: white,),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: white,
              width: 2.0,
            ),
          ),
          fillColor: background, filled: true,
          contentPadding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
          hintText: "Date of Birth",
          hintStyle: const TextStyle(
              fontFamily: "Inter",
              color: white, fontSize: 16
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value) {
          if(value!.isEmpty){
            return("Please enter Date of birth");
          }
          if(!RegExp(r'^.{8,}$').hasMatch(value)){
            return("Invalid Date of birth (8 char required)");
          }
        },
        onSaved: (value)
        {
          dateController.text = value!;
        },
        textInputAction: TextInputAction.done
    );

    //pronounce field
    final Pronounce = TextFormField(
        style: const TextStyle(
            fontFamily: "myFont",
            fontWeight: FontWeight.w600,
            color: white),
        controller: pronounceController,
        autofocus: false,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: white,
              width: 2.0,
            ),
          ),
          fillColor:background, filled: true,
          contentPadding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
          hintText: "Pronounce",   //dropdown option
          hintStyle: const TextStyle(
              fontFamily: "Inter",
              color: white, fontSize: 16
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value){
          RegExp regex = RegExp(r'^.{3,}$');
          if(value!.isEmpty){
            return ("Please Enter pronunciation");
          }
          if(!RegExp(r'^.{3,}$').hasMatch(value)){
            return ("Invalid pronounce");
          }
        },
        onSaved: (value)
        {
          pronounceController.text = value!;
        },
        textInputAction: TextInputAction.next
    );


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(
                builder: (context) => const HomeScreen()));
          },
              icon: const Icon(Icons.arrow_forward_ios_outlined, color: blue,))
        ],
      ),
      backgroundColor: background,
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Align(
                    alignment: Alignment.topLeft,
                    child: BoldText("Fill your Details ", 40, blue)),
                const Align(
                    alignment: Alignment.topLeft,
                    child: BoldText("Properly", 40, blue)),
                const SizedBox(height: 50),
                iD,
                const SizedBox(height: 15),
                country,
                const SizedBox(height: 15),
                city,
                const SizedBox(height: 15),
                Date,
                const SizedBox(height: 15),
                Pronounce,
                const SizedBox(height: 35),
                Align(
                  alignment: Alignment.topRight,
                  child: MaterialButton(
                    elevation: 0,

                    color: yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(10),
                    minWidth: MediaQuery.of(context).size.width/3,

                    onPressed: () {
                      if(_formkey.currentState!.validate());
                      // Navigator.push(context,MaterialPageRoute(
                      //     builder: (context) => HomeScreen()));
                    },
                    child: const BoldText("Next", 25, background),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),

      ),
    );
  }
}