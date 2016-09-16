//
//  RangeNode.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 25/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class RangeNode: SKShapeNode, Range {
    
    var tower: Tower!
    
    func setTower(tower: Tower) {
        self.tower = tower
    }
    
    func getRange() -> CGFloat {
        return frame.width
    }
    
    func getNode() -> SKShapeNode {
        return self
    }
    
    override init() {
        super.init()
        
        fillColor = UIColor.darkGrayColor()
        strokeColor = UIColor.blackColor()
        alpha = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPhysicsBody() {
        physicsBody = SKPhysicsBody(circleOfRadius: frame.size.width / 2)
        physicsBody?.affectedByGravity = false
        physicsBody?.categoryBitMask = CollisionBitMasks.range
        physicsBody?.collisionBitMask = 0
        physicsBody?.contactTestBitMask = CollisionBitMasks.enemy
    }
    
    func getTower() -> Tower {
        return self.tower
    }
}