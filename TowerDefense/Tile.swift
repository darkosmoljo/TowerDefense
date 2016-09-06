//
//  TileProtocol.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 13/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation
import SpriteKit

protocol Tile {
    
    init(index: Int, selectable: Bool, coordinate: (Int, Int), listener: TileListener)
    
    func isSelected() -> Bool
    func setSelected2(selected: Bool)
    func isSelectable() -> Bool
    func getIndex() -> Int
    func getNode() -> SKSpriteNode
    func addTower(tower: Tower)
    
    func removeDependencies()
}