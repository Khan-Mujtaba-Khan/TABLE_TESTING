//
//  ViewController.swift
//  TABLE_TESTING
//
//  Created by MUJTABA KHAN on 24/06/2021.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    // MARK:- OUTLETS
    
    @IBOutlet weak var name: UITextField!
    {
        didSet{
            name.layer.cornerRadius=7
            name.layer.masksToBounds=true
            name.layer.shadowOffset = CGSize(width: 20, height: 20)
            name.layer.borderWidth=1
            name.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    
    @IBOutlet weak var password: UITextField!
    {
        didSet{
            password.layer.cornerRadius=7
            password.layer.masksToBounds=true
            password.layer.shadowOffset = CGSize(width: 20, height: 20)
            password.layer.borderWidth=1
            password.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    @IBOutlet weak var img1: UIImageView!
    
    {
        didSet{
            img1.layer.cornerRadius=30
            img1.layer.masksToBounds=true
            img1.layer.shadowOffset = CGSize(width: 20, height: 20)
            img1.layer.borderWidth=1
            img1.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    @IBOutlet weak var imgbtn: UIButton!
    
    {
        didSet{
            imgbtn.layer.cornerRadius=18
            imgbtn.layer.masksToBounds=true
            imgbtn.layer.shadowOffset = CGSize(width: 20, height: 20)
            imgbtn.layer.borderWidth=1
            imgbtn.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    @IBOutlet weak var nextbtn: UIButton!
    @IBOutlet weak var savebtn: UIButton!
    
    {
        didSet{
            savebtn.layer.cornerRadius=7
            savebtn.layer.masksToBounds=true
            //img1.layer.shadowOffset = CGSize(width: 20, height: 20)
            savebtn.layer.borderWidth=1
            savebtn.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    // MARK:- VARIABLE
    
    
    
    // MARK:- ACTION BUTTON
    
    @IBAction func ClickNextbtn(_ sender: UIButton) {
   
        let vc:TableViewController=self.storyboard?.instantiateViewController(identifier: "TableViewController") as! TableViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
        
    }
    
    @IBAction func clickimgbtn(_ sender: Any) {
//
        
//        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum)
//
//        let imagepicker = UIImagePickerController()
//        imagepicker.delegate=self
//        imagepicker.sourceType = .photoLibrary
//        imagepicker.allowsEditing=false
//        present(imagepicker, animated: true,completion: nil )  {
//
//        }
        
        
        
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum)
        { let imagepicker=UIImagePickerController()
        imagepicker.delegate=self
            imagepicker.sourceType = .photoLibrary
        imagepicker.allowsEditing = true
        present(imagepicker, animated: true, completion: nil)
        }
        
    }
//
//        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum)
//        { let imagepick=UIImagePickerController()
//        imagepick.delegate=self
//        imagepick.allowsEditing=false
//        imagepick.sourceType = .photoLibrary
//        present(imagepick, animated: true, completion: nil)
//        }
//
        
//        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
////            print("Button capture")
//
//            let imagePicker = UIImagePickerController()
//            imagePicker.delegate = self
//            imagePicker.sourceType = .savedPhotosAlbum
//            imagePicker.allowsEditing = false
//
//            present(imagePicker, animated: true, completion: nil)
//        }}
//
//        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
//
//            print("Button capture")
//                let imagePicker = UIImagePickerController()
//                imagePicker.delegate = self
//                imagePicker.sourceType = UIImagePickerController.SourceType.camera
//                imagePicker.allowsEditing = false
//                present(imagePicker, animated: true, completion: nil)
//            }

        
    
    
    // MARK:- LIFE_CYCLE
    
    
    // MARK:- API'S
    
    
    
   

    // MARK:- TABLE_VIEW
    
    @IBAction func goBtn(_ sender : Any){
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(identifier: "HomeVC") as HomeVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
    }





// MARK:- FUNCTIONS

//    func imagePickerController(_ picker: UIImagePickerController,
//                               didFinishPickingMediaWithInfo info:
//                                [UIImagePickerController.InfoKey : Any])
//    {
//        if let img = info[UIImagePickerController.InfoKey.originalImage] as?
//        UIImage
//        {
//
//            self.img1.image=img
//
//       }
//       picker.dismiss(animated: true, completion: nil)
//   }

        
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info : [UIImagePickerController.InfoKey : Any])
        
        
        {
           
            picker.dismiss(animated: true, completion: nil)
            if let img = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            {
                self.img1.image=img
                
            
            }
            
            
        }
        
//
//        func  imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo: [UIImagePickerController.InfoKey : Any])
//
//        {
//           picker.dismiss(animated: true, completion: nil)
//            if let imgg = UIImagePickerController.InfoKey.originalImage as? UIImage
//
//
//
//            {
//
//                self.img1.image=imgg
//            }
//
//
//        }
        

//        func  imagePickerController(_ picker : UIImagePickerController, didFinishPickingMediaWithInfo: [UIImagePickerController.InfoKey : Any])
//        {
//            picker.dismiss(animated: true, completion: nil)
//
//            if let img = [UIImagePickerController.InfoKey.originalImage ] as? UIImage
//            {
//                self.img1.image=img
//
//
//            }
//
//        }
//
        

//func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
////       picker.dismiss(animated: true, completion: nil)
//       if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
//
//        self.img1.image=image
//       }

    

    
    
        
    
}


