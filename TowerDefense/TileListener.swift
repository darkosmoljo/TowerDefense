//
//  TileListener.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 15/05/16.
//  Copyright © 2016 Darko Smoljo. All rights reserved.
//

import Foundation

protocol TileListener {
    func toggleStateSelected(tile: Tile)
}