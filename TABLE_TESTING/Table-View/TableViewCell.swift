//
//  TableViewCell.swift
//  TABLE_TESTING
//
//  Created by MUJTABA KHAN on 24/06/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK:- OUTLETS
    
    @IBOutlet weak var BackView: UIView!
    
    
    
    @IBOutlet weak var imgcell: UIImageView!
    
    {
        didSet{imgcell.layer.cornerRadius=18
            imgcell.layer.masksToBounds=true
        
            imgcell.layer.borderWidth=0.2
            imgcell.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    @IBOutlet weak var namelblcell: UILabel!
    {
        didSet{namelblcell.layer.cornerRadius=7
            namelblcell.layer.masksToBounds=true
            namelblcell.layer.borderWidth=0.2
            namelblcell.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
    }
    
    
    
    @IBOutlet weak var passwordlblcell: UILabel!
    {
        didSet{passwordlblcell.layer.cornerRadius=7
            passwordlblcell.layer.masksToBounds=true
            passwordlblcell.layer.borderWidth=0.2
            passwordlblcell.layer.borderColor=#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
    }
    
    
    // MARK:- VARIABLES
    
    
    
    // MARK:- ACTION_BUTTONS
    
    
    
    // MARK:- LIFE_CYCLE
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if isSelected==true {BackView.backgroundColor=#colorLiteral(red: 0, green: 0.4996242523, blue: 1, alpha: 1)
        
            BackView.layer.cornerRadius=11
            BackView.layer.masksToBounds=true
        }
        else {
            
            BackView.backgroundColor=#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
      
    }
    
    
}
}
