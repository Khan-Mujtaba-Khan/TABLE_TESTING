//
//  DetailViewController.swift
//  TABLE_TESTING
//
//  Created by MUJTABA KHAN on 24/06/2021.
//

import UIKit

class DetailViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    // MARK:- OUTLETS
    @IBOutlet weak var Backbtn: UIButton!
    
    @IBOutlet weak var Img: UIImageView!
    
    {
        
        didSet{
            Img.layer.cornerRadius=22
            Img.layer.masksToBounds=true
            Img.layer.borderWidth=1
            Img.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
    }
    
    
    
    @IBOutlet weak var name: UITextField!
    {
        
        didSet{
            name.layer.cornerRadius=7
            name.layer.masksToBounds=true
            name.layer.borderWidth=1
            name.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
    }
    @IBOutlet weak var password: UITextField!
    {
        
        didSet{
            password.layer.cornerRadius=7
            password.layer.masksToBounds=true
            password.layer.borderWidth=1
            password.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
    }
    @IBOutlet weak var imgbtn: UIButton!
    {
        
        didSet{
            imgbtn.layer.cornerRadius=17
            imgbtn.layer.masksToBounds=true
            imgbtn.layer.borderWidth=1
            imgbtn.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
    }
    
    
    @IBOutlet weak var savebtn: UIButton!
    
    {
        
        didSet{
            savebtn.layer.cornerRadius=7
            savebtn.layer.masksToBounds=true
            savebtn.layer.borderWidth=1
            savebtn.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
    }
    
    
    // MARK:- VARIABLE
    var name_Vari:String?=""
    var passwor_Vari :String?=""
    var imag_Vari=UIImage()
    // MARK:- ACTION BUTTON
    
    @IBAction func ClickBackbtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
  
    @IBAction func clickambtn(_ sender: Any) {
    
        if  UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum)
        {
            let imagepicker=UIImagePickerController()
            
            imagepicker.delegate=self
            imagepicker.allowsEditing=false
            imagepicker.sourceType = .savedPhotosAlbum
            present(imagepicker, animated: true, completion: nil)
            
        }
        
    
    }
    
    
    @IBAction func ClickSaveBtn(_ sender: UIButton) {
   
        let  vc:TableViewController=self.storyboard?.instantiateViewController(identifier: "TableViewController") as! TableViewController
        
        
        
//        vc.array1.count
        
        vc.name_cell = name.text ?? ""
        
        vc.pasword_cell = password.text ?? ""
        
        vc.imag_cell = Img.image ?? UIImage()
        
//        vc.arraydata.append(password.text ?? "")
//
//        vc.arraydata.append(name.text ?? "")
////        vc.arraydata.append(Img.image  UIImage())
            
//        vc.Tableview.beginUpdates()
//  vc.Tableview.insertRows(at: [(NSIndexPath(row:          vc.arraydata.count-1, section: 0) as IndexPath)], with: .automatic)
//        vc.Tableview.endUpdates()

        
        
//        vc.arraydata.append(name.text!)
//        let indexPath = IndexPath(row: vc.arraydata.count - 1, section: 0)
//vc.Tableview.beginUpdates()
//               vc.Tableview.insertRows(at: [indexPath], with: .automatic)
//               vc.Tableview.reloadData()
//               vc.Tableview.endUpdates()
//
//                name.text=""
//               view.endEditing(true)

//        vc.self.arraydata.append(  "ali" )
//        vc.self.Tableview.reloadData()
        
//    vc.arraydata.insert("arraydata", at: 0)
//        vc.Tableview.insertRows(at: [IndexPath(row: 0, section: 0)], with: .right)

//        let indexPath = IndexPath(row: .count+1, section: 0)
//        vc.Tableview.beginUpdates()
//        vc.Tableview.insertRows(at: [indexPath], with: .automatic)
//        vc.Tableview.endUpdates()
//            view.endEditing(true)
     
        self.navigationController?.pushViewController(vc, animated: true)
        
    
    }
    
    // MARK:- LIFE_CYCLE
    
    
    
    // MARK:- API'S
    
    
    
   
    
    
    
    // MARK:- TABLE_VIEW
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
    }
    

    
    
    
    
    // MARK:- FUNCTIONS
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        {
            
            self.Img.image=image
            
        }
        
        
        
    }
    

}
