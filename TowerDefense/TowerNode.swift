//
//  TowerNode.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 25/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

class TowerNode: SKSpriteNode, Tower {

    var bullet: Bullet!
    var enemiesInRange: [Enemy] = []
    var range: Range? = nil
    var cooldown: Bool = false
    var cooldownDelay: Double = 0.1
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        
        name = "tower"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getIconString() -> String {
        return ""
    }
    
    func getNode() -> SKSpriteNode {
        return self
    }
    
    func createTower() -> Tower {
        return TowerNode()
    }
    
    func getRange() -> Range? {
        return range
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        toggleRangeVisibility()
    }
    
    func toggleRangeVisibility() {
        if (range?.getNode().alpha == 0) {
            showRange()
        } else {
            hideRange()
        }
    }
    
    private func showRange() {
        range?.getNode().alpha = 0.2
    }
    
    private func hideRange() {
        range?.getNode().alpha = 0
    }
    
    func didEnterRegion(enemy: Enemy)  {
        enemiesInRange.append(enemy)
        
        if (enemiesInRange.count > 0) {
            showRange()
        }
    }
    
    func didExitRegion(enemy: Enemy) {
        if let index = enemiesInRange.indexOf({return $0.getId() == enemy.getId()}) {
            enemiesInRange.removeAtIndex(index)
        }
        
        if (enemiesInRange.count <= 0) {
            hideRange()
        }
    }
    
    func recalibrate() -> Bullet? {
        
        if bullet?.getTarget()?.getNode() == nil {
            
        } else {
            bullet?.recalibrate()
        }
        
        return bullet
    }
    
    func getBullet() -> Bullet? {
        return bullet
    }
    
    func setBullet(bullet: Bullet?) {
        self.bullet = bullet
    }
    
    func fireOrRecalibrate() -> Bullet? {
        if (getBullet() != nil) {
            
            recalibrate()
            
        } else if (enemiesInRange.count > 0 && cooldown == false) {
            
            setBullet(createBullet())
            
            fire(enemiesInRange[0])
            
            return getBullet()
        }
        
        return nil;
    }
    
    func fire(enemy: Enemy) {
        bullet?.setTower(self)
        bullet?.setTarget(enemy)
        bullet?.fire()
        
        cooldown = true
        
        Utils.delay(cooldownDelay, closure: {
            self.cooldown = false
        })
    }
    
    func createBullet() -> Bullet? {
        return BulletNode()
    }
    
    func getPrice() -> Int {
        return 0
    }
}