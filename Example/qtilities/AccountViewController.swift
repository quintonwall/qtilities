//
//  AccountViewController.swift
//  qtilities
//
//  Created by QUINTON WALL on 11/28/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import SwiftlySalesforce
import FCAlertView
import PromiseKit
import qtilities
import SwiftyJSON

class AccountViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshControl?.addTarget(self, action: #selector(AccountViewController.handleRefresh), forControlEvents: UIControlEvents.ValueChanged)
        loadData()
        
    }
    
    func loadData() {
        
        
        firstly {
             SalesforceAPI.Query(soql: "select AccountNumber, AccountSource, AnnualRevenue, BillingAddress, BillingGeocodeAccuracy, CleanStatus, CreatedById, CreatedDate,  DandbCompanyId, Description, DunsNumber, Fax, Id, Industry, IsDeleted, Jigsaw, JigsawCompanyId, LastActivityDate, LastModifiedById, LastModifiedDate, LastReferencedDate, LastViewedDate, MasterRecordId, NaicsCode, NaicsDesc, Name, NumberOfEmployees,  OwnerId, Ownership, ParentId, Phone, PhotoUrl, Rating, ShippingAddress, ShippingGeocodeAccuracy, Sic, SicDesc, Site, SystemModstamp, TickerSymbol, Tradestyle, Type, Website, YearStarted from Account").request()
            
        }.then {
            ( result) -> () in
                var allAccounts: [Account] = []
                let j = JSON(result["records"] as! NSArray)
            
                for (_, subJson) in j {
                    allAccounts.append(Account(json: subJson))
                }
        }.always {
                self.tableView.reloadData()
                self.refreshControl?.endRefreshing()
            
        }.error { _ in
                let fcdialog = FCAlertView()
                fcdialog.showAlertInView(self, withTitle: "Kaboom!", withSubtitle: "Something gone bust.", withCustomImage: UIImage(named: "close-x"), withDoneButtonTitle: "OK", andButtons: nil)
                fcdialog.colorScheme = fcdialog.flatGreen
                fcdialog.dismissOnOutsideTouch = true
        }
    }
    
    func handleRefresh(refreshControl: UIRefreshControl) {
        loadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}