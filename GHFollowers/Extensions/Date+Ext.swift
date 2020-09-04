//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Dima Shelkov on 9/2/20.
//  Copyright © 2020 Dima Shelkov. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
