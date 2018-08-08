//
//  ElectricityBill.swift
//  Assignment
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 Mitali. All rights reserved.
//

import Foundation
class ElectricityBill
{
    var customerID: Int!
    var customerName: String!
    var Gender: String!
    var totalUnit: Int = 0
    var billDate: Date!
    var totalPayment: Double!
    {
        if totalUnit <= 100
        {
            return (Double(totalUnit) * 0.75)
        
        }
        else if totalUnit > 100 && totalUnit <
    }
}
