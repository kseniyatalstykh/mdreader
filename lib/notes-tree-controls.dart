import 'package:flutter/material.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:google_sign_in/google_sign_in.dart' as googleSignIn;

class NotesTreeControls extends StatelessWidget {

  Future<void> signIn() async {
    final googleSignInScopes = googleSignIn.GoogleSignIn.standard(scopes: [drive.DriveApi.DriveScope]);
    final googleSignIn.GoogleSignInAccount account = await googleSignInScopes.signIn();

    print("User account $account");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          children: [
             IconButton(
              icon: Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              onPressed: signIn,
            )
          ],
        )
      ]
    );
  }
}

