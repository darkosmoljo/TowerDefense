//
//  Utils.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 13/09/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class Utils {
    
    static func delay(delay: Double, closure: ()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(),
            closure
        )
    }
    
}