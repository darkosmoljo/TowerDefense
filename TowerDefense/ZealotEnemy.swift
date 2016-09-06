//
//  ZealotEnemy.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 21/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class ZealotEnemy: EnemyNode {
    
    let zealot: Zealot
    var checkpoints: [(CGFloat, CGFloat)]!
    
    deinit {
        
    }
    
    init(index: Int) {
        zealot = Zealot()
        
        let texture: SKTexture = zealot.zealot_walk_side_1()
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        name = "enemy"
        id = zealot.ZEALOT_ATTACK_SIDE_1 + "_\(index)"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getSpeed() -> Int {
        return 120
    }
    
    override func startPath(checkpoints: [(CGFloat, CGFloat)]) {
        self.checkpoints = checkpoints
        
        self.checkpoints.removeAtIndex(0)
        
        goto(self.checkpoints[0])
    }
    
    func goto(checkpoint: (CGFloat, CGFloat)) {
        
        removeAllActions()
        
        let currentLocation: CGPoint = CGPoint(x: position.x, y: position.y)
        let nextLocation: CGPoint = CGPoint(x: checkpoint.0, y: checkpoint.1)
        
        let params: (Double, [SKTexture]) = self.getAnimationAndSpeed(currentLocation, nextLocation: nextLocation)
        
        let walkAction: SKAction = SKAction.moveTo(nextLocation, duration: params.0)
        let walkAnim: SKAction = SKAction.animateWithTextures(params.1, timePerFrame: 0.1)
        
        self.checkpoints.removeAtIndex(0)
        
        runAction(SKAction.repeatActionForever(walkAnim))
        
        runAction(walkAction, completion: {() -> Void in
            if (self.checkpoints.count > 0) {
                self.goto(self.checkpoints[0])
            }
        })
    }
    
    func getAnimationAndSpeed(currentLocation: CGPoint, nextLocation: CGPoint) -> (Double, [SKTexture]) {
        let speed: Double = hypot(Double(nextLocation.x) - Double(currentLocation.x), Double(nextLocation.y) - Double(currentLocation.y)) / Double(getSpeed())
        
        var anim: [SKTexture] = zealot.zealot_walk_side_()
        setScale(1)
        
        if (currentLocation.x > nextLocation.x) {
            xScale = xScale * (-1)
        }
        else if (currentLocation.y < nextLocation.y) {
            anim = zealot.zealot_walk_up_()
        }
        else if (currentLocation.y > nextLocation.y) {
            anim = zealot.zealot_walk_down_()
        }
        
        return (speed, anim)
    }
    
    override func explode() {
        
        removeAllActions()
        
        let deathAnim: SKAction = SKAction.animateWithTextures(zealot.zealot_dead_(), timePerFrame: 0.1)
        
        runAction(deathAnim, completion: {() -> Void in
            
            super.explode()
            
        })
    }
}