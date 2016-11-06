//
//  CommandCenter.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 23/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

protocol CommandCenterListener {
    func ccHealthChange(currentHealth: Int)
}

class CommandCenter: SKSpriteNode {
    
    var healt: Int
    
    var listener: CommandCenterListener!
    
    deinit {
        print("command center deinited")
    }
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        
        let image: UIImage = UIImage(named: "command_center.png")!
        
        let texture: SKTexture = SKTexture(image: image)
        
        healt = 100
        
        super.init(texture: texture, color: UIColor.whiteColor(), size: image.size)
        
        physicsBody = SKPhysicsBody(rectangleOfSize: image.size)
        physicsBody?.affectedByGravity = false
        physicsBody?.categoryBitMask = BitMasks.commandCenter
        physicsBody?.collisionBitMask = 0
        physicsBody?.contactTestBitMask = BitMasks.enemy
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func enemyAttack(damage: Int) {
        self.healt = self.healt - damage
        
        self.listener?.ccHealthChange(self.healt)
    }
    
    func removeDependencies() {
        self.listener = nil
    }
    
}
