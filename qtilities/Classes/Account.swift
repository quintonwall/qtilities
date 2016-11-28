//
//  Account.swift
//  Pods
//
//  Created by Quinton Wall on 11/19/16.
//
//

import Foundation
import SwiftyJSON


public final class Account : SObject {
    
    public init(json: JSON) {
        super.init(objectType: SObjectType.Account)
    }
    
}


