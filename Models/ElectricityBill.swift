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
        var total: Double
        if totalUnit <= 100
        {
            total = (Double(totalUnit) * 0.75)
        }
        else if totalUnit < 150
        {
            total = Double(75) + (Double(totalUnit - 100) * 1.25)
        }
        else if totalUnit < 200
        {
            total = 137.50 + (Double(totalUnit - 150) * 1.75)
        }
        else
        {
            total = 225.00 + (Double(totalUnit - 200) * 2.25)
        }
        
        return total
    }
    
    
}
