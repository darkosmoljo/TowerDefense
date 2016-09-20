//
//  Range.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 25/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

protocol Range {
    
    func getRange() -> CGFloat
    func getNode() -> SKShapeNode
    func getTower() -> Tower
    
}
