//
//  Manufacturer.swift
//  C0743383_MID_TERM_MAD3004
//
//  Created by Daian Aiziatov on 13/09/2018.
//  Copyright © 2018 Daian Aiziatov. All rights reserved.
//

import Foundation

class Manufacturer: IDisplay {
    
    var manufacturerId: Int?
    var manufacturerName: String?
    
    init(manufacturerId: Int, manufacturerName: String) {
        self.manufacturerId = manufacturerId
        self.manufacturerName = manufacturerName
    }
    
    func display() {
    }
    
}
