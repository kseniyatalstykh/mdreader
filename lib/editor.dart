import 'package:flutter/material.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:google_sign_in/google_sign_in.dart' as googleSignIn;

class EditorPage extends StatelessWidget {
  EditorPage({Key key, this.title}) : super(key: key);

  final String title;

  Future<void> signIn() async {
    final googleSignInScopes = googleSignIn.GoogleSignIn.standard(scopes: [drive.DriveApi.DriveScope]);
    final googleSignIn.GoogleSignInAccount account = await googleSignInScopes.signIn();

    print("User account $account");
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text(
          this.title, 
          style: TextStyle(
            color: Colors.white
          )
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.cloud_download,
              color: Colors.white,
            ),
            onPressed: signIn,
          )
        ],
      ),
      body: Center(
        ),
    );
  }
}
