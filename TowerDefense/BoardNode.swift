//
//  BoardNode.swift
//  TestGaem1
//
//  Created by Darko Smoljo on 16/12/15.
//  Copyright © 2015 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

public protocol BoardListener {
    func tileSelected(selected: Bool)
    func ccHealthStatus(currentHealth: Int)
    func enemyDestroyed(enemyValue: Int)
    func allEnemiesDestroyed()
}

public class BoardNode: SKSpriteNode, Board, TileListener, CommandCenterListener {
    
    var map: Map!
    var tiles: [Tile]
    var boardListener: BoardListener!
    var selectedTile: Tile!
    var commandCenter: CommandCenter!
    var shouldCheckForEnemies: Bool = false
    
    deinit {
        print("board deinited")
    }
    
    func removeDependencies() {
        
        for tile in self.tiles {
            tile.removeDependencies()
        }
        
        self.tiles.removeAll()
        
        self.commandCenter.removeDependencies()
        
        self.boardListener = nil
        
        self.map = nil
    }
    
    init(boardListener: BoardListener) {
        
        let image: UIImage = UIImage(named: "background_pink.png")!
        
        self.tiles = [Tile] ()
        self.boardListener = boardListener
        
        super.init(texture: SKTexture(image: image), color: UIColor.whiteColor(), size: image.size)
        
        print(image.size)
        
        name = "board"
        zPosition = 0
    }
    
    func setupMap(map: Map) {
        self.map = map
        
        setupTile(map.getPath())
        
        // setup command center at the last checkpoint for enemies
        setupCommandCenter(tiles[map.getCheckpoints()[map.getCheckpoints().count - 1]])
    }
    
    func setupCommandCenter(tile: Tile){
        self.commandCenter = CommandCenter()
        self.commandCenter.listener = self
        
        self.commandCenter.position = CGPoint(x: tile.getNode().position.x, y: tile.getNode().position.y)
        self.commandCenter.zPosition = 1
        
        addChild(commandCenter)
        
        boardListener.ccHealthStatus(commandCenter.healt)
    }
    
    func setupTile(path: [Int]) {
        let tileImg = UIImage(named: "tile_default.png")
        
        let maxRows:Int = Int(ceil(self.frame.height / (tileImg?.size.height)!))
        let maxCols:Int = Int(ceil(self.frame.width / (tileImg?.size.width)!))
        
        var index: Int = 0
        
        for i in 0...maxRows {
            
            for j in 0...maxCols {
                
                let tile: Tile = DefaultTile(index: index, selectable: !path.contains(index), coordinate: (i, j), listener: self)
                
                let x = (CGFloat(j) * tile.getNode().size.width) + (tile.getNode().size.width / 2)
                let y = (CGFloat(i) * tile.getNode().size.height) + (tile.getNode().size.height / 2)
                
                tile.getNode().position = CGPoint(x: x, y: y)
                
                tiles.append(tile)
                self.addChild(tile.getNode())
                
                index = index + 1
            }
        }
    }
    
    func toggleStateSelected(tile: Tile) {
        if (tile.isSelected()) {
            for tile1 in tiles where tile.getIndex() != tile1.getIndex() && tile.isSelected() {
                tile1.setSelected2(false)
            }
            
            selectedTile = tile
        } else {
            selectedTile = nil
        }
        
        toggleTowersPopup(tile)
    }
    
    func toggleTowersPopup(tile: Tile) {
        boardListener.tileSelected(tile.isSelected())
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateFrame() {
        enumerateChildNodesWithName("tower", usingBlock: {
            node, stop in
            
            if node is Tower {
                
                let tower: Tower = node as! Tower
                
                if let bullet = tower.fireOrRecalibrate() {
                    self.putBullet(bullet, from: tower)
                }
            }
        })
        
        checkForEnemies()
    }
    
    func checkForEnemies() {
        if (shouldCheckForEnemies && childNodeWithName("enemy") == nil) {
            shouldCheckForEnemies = false
            
            boardListener.allEnemiesDestroyed()
        }
    }
    
    func getNode() -> SKSpriteNode {
        return self
    }
    
    func getMap() -> Map {
        return map
    }
    
    func ccHealthChange(currentHealth: Int) {
        boardListener.ccHealthStatus(currentHealth)
    }
    
    func putTower(tower: Tower) {
        selectedTile?.setSelected2(false)
        
        if (selectedTile != nil) {
            tower.getNode().position = CGPoint(x: selectedTile.getNode().position.x, y: selectedTile.getNode().position.y)
            tower.getNode().zPosition = 3
            
            tower.getRange().getNode().position = CGPoint(x: selectedTile.getNode().position.x, y: selectedTile.getNode().position.y)
            tower.getRange().getNode().zPosition = 2
            
            addChild(tower.getNode())
            addChild(tower.getRange().getNode())
            
            (tower.getRange() as? RangeNode)?.setupPhysicsBody()
        
            toggleStateSelected(selectedTile)
        }
    }
    
    func putEnemy(enemy: Enemy) {
        
        if let enemyNode: SKNode = enemy.getNode() {
        
            let startingTile = tiles[getMap().getCheckpoints()[0]]
            
            enemyNode.position = CGPoint(x: startingTile.getNode().position.x, y: startingTile.getNode().position.y)
            enemyNode.zPosition = 2
            
            addChild(enemyNode)
            
            enemy.setCheckpoints(calculateCheckpoints(getMap().getCheckpoints()))
            enemy.startPath()
            
            shouldCheckForEnemies = true
        }
    }
    
    func removeEnemy(enemy: Enemy, killed: Bool) {
        
        enumerateChildNodesWithName("tower", usingBlock: {
            node, stop in
            
            if node is Tower {
                
                let tower: Tower = node as! Tower
                
                tower.didExitRegion(enemy)
            }
        })
        
        if (killed) {
            boardListener.enemyDestroyed(enemy.getValue())
        }
        
        enemy.explode()
        
        checkForEnemies()
    }
    
    func putBullet(bullet: Bullet, from tower: Tower) {
        
        if (bullet.isAOE()) {
            bullet.getNode().position = CGPoint(x: (bullet.getTarget()?.getNode()!.position.x)!, y: (bullet.getTarget()?.getNode()!.position.y)!)
        } else {
            bullet.getNode().position = CGPoint(x: tower.getNode().position.x, y: tower.getNode().position.y)
        }
        
        bullet.getNode().zPosition = 4
        
        addChild(bullet.getNode())
    }
    
    func calculateCheckpoints(checkpoints: [Int]) -> [CGPoint] {
        
        var calculated:[CGPoint] = []
        
        for checkpoint in checkpoints {
            let tile: Tile = tiles[checkpoint]
            
            let point: CGPoint = CGPoint(x: CGRectGetMidX(tile.getNode().frame), y: CGRectGetMidY(tile.getNode().frame))
            
            calculated.append(point)
        }
        
        return calculated
    }
    
    public func didBeginContact(contact: SKPhysicsContact) {
        
        if (contact.bodyB.categoryBitMask == CollisionBitMasks.commandCenter) {
            print("b: command center")
        }
        
        if (contact.bodyA.categoryBitMask == CollisionBitMasks.range) {
            print("a: range")
        }
        
        if (contact.bodyB.categoryBitMask == CollisionBitMasks.bullet) {
            print("b: bullet")
        }
        
        if (contact.bodyA.categoryBitMask == CollisionBitMasks.bullet) {
            print("a: bullet")
        }
        
        if (contact.bodyA.categoryBitMask == CollisionBitMasks.enemy) {
            print("a: enemy")
        }
        
        if (contact.bodyA.categoryBitMask == CollisionBitMasks.commandCenter &&
            contact.bodyB.categoryBitMask == CollisionBitMasks.enemy) {
            
            if let enemy: Enemy = contact.bodyB.node as? Enemy {
                
                if let cc: CommandCenter = contact.bodyA.node as? CommandCenter {
                
                    cc.enemyAttack(enemy.damage())
                    removeEnemy(enemy, killed: false)
                }
            }
        }
        
        if (contact.bodyA.categoryBitMask == CollisionBitMasks.enemy &&
            contact.bodyB.categoryBitMask == CollisionBitMasks.range) {
            
            if let enemy: Enemy = contact.bodyA.node as? Enemy {
                
                if let range: Range = contact.bodyB.node as? Range {
                
                    let tower: Tower = range.getTower()
            
                    tower.didEnterRegion(enemy)
                }
            }
        }
        
        if (contact.bodyA.categoryBitMask == CollisionBitMasks.enemy &&
            contact.bodyB.categoryBitMask == CollisionBitMasks.bullet) {
            
            if let bullet: Bullet = contact.bodyB.node as? Bullet {
                
                if let enemy: Enemy = contact.bodyA.node as? Enemy {
                
                    if bullet.isAOE() || enemy.getId() == bullet.getTarget()?.getId() {
                        enemy.takeDamage(bullet.getDamage())
                        bullet.explode()
                        
                        if (enemy.getHealth() <= 0) {
                            removeEnemy(enemy, killed: true)
                        }
                    }
                }
            }
        }
    }
    
    public func didEndContact(contact: SKPhysicsContact) {
        if (contact.bodyA.categoryBitMask == CollisionBitMasks.enemy &&
            contact.bodyB.categoryBitMask == CollisionBitMasks.range) {
            
            print("leaving")
            
            let enemy: Enemy = contact.bodyA.node as! Enemy
            
            (contact.bodyB.node as! Range).getTower().didExitRegion(enemy)
        }
    }
}