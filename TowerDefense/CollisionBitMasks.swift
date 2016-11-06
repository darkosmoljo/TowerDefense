//
//  CollisionBitMasks.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 23/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

class BitMasks {
    static let enemy: UInt32 = 0x1 << 0
    static let commandCenter: UInt32 = 0x1 << 1
    static let bullet: UInt32 = 0x1 << 2
    static let range: UInt32 = 0x1 << 3
}
