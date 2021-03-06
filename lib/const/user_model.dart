
import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
   String? uid;
   String? email;
   String? firstName;
   String? lastName;
//contractor
   UserModel({this.uid, this.email, this.firstName, this.lastName});

// receiving data from server
   factory UserModel.fromMap(map){
      return UserModel(
         uid: map['uid'],
         email: map['email'],
         firstName: map['firstname'],
         lastName: map['lastName'],
      );
   }
// sending data to our server
   Map <String, dynamic> toMap(){
      return {
         'uid':uid,
         'email':email,
         'firstName':firstName,
         'lastName':lastName,
      };
   }
}



