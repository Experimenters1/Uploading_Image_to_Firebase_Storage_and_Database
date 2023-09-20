# Uploading_Image_to_Firebase_Storage_and_Database
## [Uploading_Image_to_Firebase_Storage_and_Database](https://stackoverflow.com/questions/44060518/uploading-image-to-firebase-storage-and-database) <br><br>
### [Uploading files to FireBase storage from iOS apps](https://iq.opengenus.org/upload-files-to-firebase-storage-ios-app/) <br><br>


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
![Screenshot 2023-09-20 at 3 56 04 PM](https://github.com/Experimenters1/Uploading_Image_to_Firebase_Storage_and_Database/assets/64000769/b5203047-6e8b-433c-b960-95416ec138ac)
![Screenshot 2023-09-20 at 4 08 01 PM](https://github.com/Experimenters1/Uploading_Image_to_Firebase_Storage_and_Database/assets/64000769/f70dc079-43d2-432d-8127-1e3ac4164d41)
![Screenshot 2023-09-20 at 4 08 11 PM](https://github.com/Experimenters1/Uploading_Image_to_Firebase_Storage_and_Database/assets/64000769/2c3165f4-1dcb-4d54-a914-05cdc9fcb5a5)

