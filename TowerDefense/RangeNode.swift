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
    
    var tower: Tower
    
    func getRange() -> CGFloat {
        return frame.width
    }
    
    func getNode() -> SKShapeNode {
        return self
    }
    
    init(tower: Tower, range: Int) {
        
        self.tower = tower
        
        super.init()
        
        if let _:SKNode = tower.getNode() {
            let diameter: Int = range * 2
            let point: CGPoint = CGPoint(x: -range, y: -range)
            self.path = CGPathCreateWithEllipseInRect(CGRect(origin: point, size: CGSize(width: diameter, height: diameter)), nil)
            fillColor = UIColor.darkGrayColor()
            strokeColor = UIColor.blackColor()
            alpha = 0
            
            setupPhysicsBody()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPhysicsBody() {
        physicsBody = SKPhysicsBody(circleOfRadius: frame.size.width / 2)
        physicsBody?.affectedByGravity = false
        physicsBody?.categoryBitMask = BitMasks.range
        physicsBody?.collisionBitMask = 0
        physicsBody?.contactTestBitMask = BitMasks.enemy
    }
    
    func getTower() -> Tower {
        return self.tower
    }
}
