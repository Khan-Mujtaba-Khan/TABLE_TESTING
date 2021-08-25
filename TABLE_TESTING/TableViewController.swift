//
//  TableViewController.swift
//  TABLE_TESTING
//
//  Created by MUJTABA KHAN on 24/06/2021.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    // MARK:- OUTLETS
    
    @IBOutlet weak var backbtn: UIButton!
    
    @IBOutlet weak var Nextbtn: UIButton!
    
    @IBOutlet weak var Tableview: UITableView!
    // MARK:- VARIABLE
    
    
    var array1: [String] = []
    var arraydata=[String]() 
    
    var name_cell:String?=""
    var pasword_cell:String?=""
    var imag_cell = UIImage()
    
    

    // MARK:- ACTION BUTTON
    
    @IBAction func ClickBackbtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
@IBAction func ClickNextBtn(_ sender: UIButton) {
 
    let vc:DetailViewController=self.storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
    
    self.navigationController?.pushViewController(vc, animated: true)
}
    
    // MARK:- LIFE_CYCLE
    
    
    
    // MARK:- API'S
    
    
    
    // MARK:- FUNCTIONS
    
    
    
    
    func showview()
    
    {
        Tableview.delegate=self
        Tableview.dataSource=self
        Tableview.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
    }
////
//    func numberOfSections(in tableView: UITableView) -> Int {
//     
//        
//        return  2
//    }
//  
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

            
            return array1.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell=Tableview.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.namelblcell.text=name_cell ?? ""
        cell.passwordlblcell.text=pasword_cell ?? ""
        cell.imgcell.image=imag_cell 
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if  editingStyle == .delete
        {
            array1.remove(at: indexPath.item)
            array1.remove(at: indexPath.item)
            arraydata.remove(at: indexPath.item)
            Tableview.deleteRows(at: [indexPath], with:.automatic)

        }

    }
    
//    func Tableview(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        Tableview.removeAtIndex(indexPath.row)
//        Tableview.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
//    }

    
    
    
    // MARK:- TABLE_VIEW
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showview()
        Tableview.dataSource = self
        
        
        
        array1.append(pasword_cell ?? "")
        
        array1.append(name_cell ?? "")
        
        
//       array1.append(imag_cell.images,UIImage())
       // arraydata.append(pasword_cell)
        
        Tableview.tableFooterView=UIView.init(frame: .zero)
       
        
        
    }
    

}
