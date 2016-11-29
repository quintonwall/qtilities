//
//  AccountTableCellView.swift
//  Standard layout for account info in a table cell
//
//  Created by QUINTON WALL on 11/29/16.
//
//

import Foundation
import UIKit



class AccountTableViewCell : UIView {
    
    var account : Account!
    
    @IBOutlet var accountName: UILabel!
    @IBOutlet var socialImageView: UIImageView!
    @IBOutlet var streetAddress: UILabel!
    @IBOutlet var cityStateZip: UILabel!
    @IBOutlet var lastUpdated: UILabel!
    
    @IBOutlet var locationButton: UIImageView!
    @IBOutlet var phoneButton: UIImageView!
    
    
    
    
    
    func bind() {
        
    }

}