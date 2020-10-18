import 'package:flutter/material.dart';
import 'package:ecom/src/constants.dart';

class AppLogo extends StatelessWidget {


  final double height;
  AppLogo({this.height});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50),
      child: Container(
        height: height*0.2,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset('assests/images/icons/buy.png'),
            Positioned(
                bottom:0 ,

                child: Text(
                    'Buy it',style: kButItText )),






          ],
        ),
      ),
    );
  }


}




class LogCustomTextField extends StatelessWidget {

  final String hintText;
  final IconData myIcon;
  final Function function;

  LogCustomTextField({this.hintText,this.myIcon,this.function});



  String _getErrorMessege(String hintText)
  {
    switch(hintText)
    {
      case 'Enter Your Name' : return'Name Field is Empty';
      case 'Enter Your Email' : return'Email Field is Empty';
      case 'Enter Your Password' : return'Password Field is Empty';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        onSaved: function,
        obscureText: hintText=='Enter Your Password'?true:false ,
        validator: (value){
          if(value.isEmpty)
            {
              return _getErrorMessege(hintText);
            // ignore: missing_return,
            }

        },
        cursorColor: kMainColor,
        decoration: InputDecoration(
          prefixIcon:Icon(myIcon, color: kMainColor,) ,
          filled: true,
          hintText: hintText,
          fillColor: Colors.white.withOpacity(0.3),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),

        ),

      ),
    );
  }
}




class LogButton extends StatelessWidget {

  final String btnText;
  final Function function;


  LogButton({this.btnText, this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: FlatButton(onPressed: function,
          color: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          child: Text(btnText,style: TextStyle(color: Colors.white),)
      ),
    );
  }
}
