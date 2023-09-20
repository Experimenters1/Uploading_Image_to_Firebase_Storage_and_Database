# Uploading_Image_to_Firebase_Storage_and_Database
## [Uploading_Image_to_Firebase_Storage_and_Database](https://stackoverflow.com/questions/44060518/uploading-image-to-firebase-storage-and-database) <br><br>

![Screenshot 2023-09-20 at 3 56 36 PM](https://github.com/Experimenters1/Uploading_Image_to_Firebase_Storage_and_Database/assets/64000769/88d8f72a-aaf2-43b4-ac0f-863e741af7fe)

```swift
rules_version = '2';

// Craft rules based on data in your Firestore database
// allow write: if firestore.get(
//    /databases/(default)/documents/users/$(request.auth.uid)).data.isAdmin;
service firebase.storage {
  match /b/{bucket}/o {
    match /{allPaths=**} {
      allow read, write
    }
  }
}

```
