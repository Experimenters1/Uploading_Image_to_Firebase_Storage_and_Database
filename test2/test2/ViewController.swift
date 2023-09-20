//
//  ViewController.swift
//  test2
//
//  Created by Huy Vu on 9/20/23.
//

import UIKit
import FirebaseStorage


class ViewController: UIViewController {


    @IBOutlet weak var imgUI: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: Any) {
        let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary // You can use .camera for the camera
            imagePicker.allowsEditing = false
            present(imagePicker, animated: true, completion: nil)
    }
    
    
    
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.originalImage] as? UIImage {
            // Do something with the selected image
            
            print("Selected image info: \(info)")
            // Hiển thị ảnh đã chọn trên UIImageView
            imgUI.image = selectedImage
            
//            self.UploadImage(image: selectedImage)
            self.uploadImage(image: selectedImage)
            self.imgUI.image = selectedImage
            self.dismiss(animated: true, completion: nil)
        }
        
        picker.dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
//    func UploadImage(image: UIImage)
//        {
//            let storageref = Storage.storage().reference()
//            let imagenode = storageref.child("\(UUID().uuidString)")
//
//            imagenode.putData(image.pngData()!)
//
//
//
//        }
    
    func uploadImage(image: UIImage) {
        let storageRef = Storage.storage().reference()
        let imagesRef = storageRef.child("images") // Tạo thư mục "images"
        
        let imageName = UUID().uuidString
        let imageRef = imagesRef.child("\(imageName).png") // Đặt tên cho ảnh
        
        if let imageData = image.pngData() {
            let metadata = StorageMetadata()
            metadata.contentType = "image/png"
            
            // Đẩy ảnh lên Firebase Storage
            imageRef.putData(imageData, metadata: metadata) { (metadata, error) in
                if let error = error {
                    print("Error uploading image: \(error.localizedDescription)")
                } else {
                    print("Image uploaded successfully")
                    // Handle success, if needed
                }
            }
        } else {
            print("Failed to convert image to data")
        }
    }
    
    
    
}
