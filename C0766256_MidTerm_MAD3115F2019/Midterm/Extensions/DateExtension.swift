//
//  DateExtension.swift
//  C0769647_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//


import Foundation
extension Date
{   // From Lambton Moodle and Google
        func dateFormat() -> String {
        let dateFormatterPrint=DateFormatter()
        dateFormatterPrint.dateFormat="EEEE, dd MMMM, yyyy"
        let formattedDate = dateFormatterPrint.string(from: self)
        return formattedDate
        
    }
}
