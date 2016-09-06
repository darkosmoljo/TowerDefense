//
//  Tile.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 30/12/15.
//  Copyright © 2015 Darko Smoljo. All rights reserved.
//

import Foundation

import SpriteKit

class DefaultTile: SKSpriteNode, Tile {
    
    let index: Int
    var coordinate: (Int, Int)!
    var selected: Bool
    var selectable: Bool
    var listener: TileListener!
    
    deinit {
        
    }
    
    func removeDependencies() {
        self.listener = nil
    }
    
    required init(index: Int, selectable: Bool, coordinate: (Int, Int), listener: TileListener) {
        
        self.index = index
        self.coordinate = coordinate
        self.selected = false
        self.selectable = selectable
        self.listener = listener
        
        let image: UIImage = UIImage(named: selectable == true ? "tile_grass.png" : "tile_dirt.png")!
        
        super.init(texture: SKTexture(image: image), color: UIColor.clearColor(), size: image.size)
        
        name = "tile_\(index)"
        alpha = 1
        zPosition = 1
        userInteractionEnabled = selectable
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print(index)
        toggleState(!selected, listener: listener)
    }
    
    func toggleState(state: Bool, listener: TileListener?) {
        
        selected = state
        
        alpha = selected == true ? 0.6 : 1
        
        listener?.toggleStateSelected(self)
    }
    
    func addTower(tower: Tower) {
        let towerSprite: SKSpriteNode = tower.getNode()
        
        towerSprite.name = "tower_\(index)"
        
        addChild(towerSprite)
        
        self.selectable = false
    }
    
    func isSelected() -> Bool {
        return selected
    }
    
    func setSelected2(selected: Bool) {
        toggleState(selected, listener: nil)
    }
    
    func isSelectable() -> Bool {
        return selectable
    }
    
    func getIndex() -> Int {
        return index
    }
    
    func getNode() -> SKSpriteNode {
        return self
    }
}