//
//  GameViewController.swift
//  TowerDefense
//
//  Created by Darko Smoljo on 30/12/15.
//  Copyright (c) 2015 Darko Smoljo. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, SpriteListener {
    
    @IBOutlet weak var sceneView: SKView!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var towerSelectionView: UIView!
    @IBOutlet weak var towersCollection: UICollectionView!
    @IBOutlet weak var goldLabel: UILabel!
    @IBOutlet weak var mapLabel: UILabel!
    @IBOutlet weak var levelsLabel: UILabel!
    @IBOutlet weak var lifeRemaining: UILabel!
    
    var scene: GameScene!
    var currentGold: Int = 100
    
    deinit {
        print("controller deinit")
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        self.scene = GameScene()
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scene.setSpriteListener(self)
        
        scene.getSKScene().scaleMode = .AspectFill
        
        sceneView.presentScene(scene.getSKScene())
        
        sceneView.showsFPS = true
        sceneView.showsNodeCount = true
        sceneView.ignoresSiblingOrder = false
        
        resetCurrentGold()
    }
    
    override func viewDidAppear(animated: Bool) {
        scene.getSKScene().size = sceneView.bounds.size
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        self.exit()
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return scene.getTowerList().count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell: PortraitViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("portraitCell", forIndexPath: indexPath) as! PortraitViewCell
        
        let tower: Tower = scene.getTowerList()[indexPath.row]
        
        cell.setImage(tower.getIconString())
        cell.setPriceLabelText(tower.getPrice())
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let selectedTower: Tower = scene.getTowerList()[indexPath.row]
            
        if (selectedTower.getPrice() <= currentGold) {
            
            scene.getListener().putTower(selectedTower.createTower())
            
            currentGold = currentGold - selectedTower.getPrice()
            
            resetCurrentGold()
        }
    }
    
    func toggleTowerList(toggle: Bool) {
        towerSelectionView.hidden = !toggle
    }
    
    func exit() {
    
        if (self.sceneView?.paused == false) {
            self.sceneView?.paused = true
        }
        
        self.scene.removeAllActions()
        self.scene.removeAllChildren()
        self.scene.removeFromParent()
        self.scene.removeDependencies()
        self.sceneView.removeFromSuperview()
        self.sceneView.presentScene(nil)
        self.sceneView = nil
        self.scene = nil
        
        self.dismissViewControllerAnimated(true, completion: {
            print("lets release it")
            
        })
    }
    
    func healthStatus(currentHealth: Int) {
        
        if (currentHealth <= 0) {
            lifeRemaining.text = "0"
            
            self.sceneView?.paused = true
            
            let alert = UIAlertController(title: "Game Over!", message:"Your command center was destroyed.", preferredStyle: .Alert)
            let quit = UIAlertAction(title: "Quit", style: .Default) { _ in
                self.exit()
            }
            
            alert.addAction(quit)
            self.presentViewController(alert, animated: true){}
        } else {
            lifeRemaining.text = "\(currentHealth)"
        }
    }
    
    func addValue(value: Int) {
        currentGold = currentGold + value
        
        resetCurrentGold()
    }
    
    func resetCurrentGold() {
        goldLabel.text = "\(currentGold)"
    }
    
    func playingLevel(levelOutOfLevels: (Int, Int)) {
        let currentLevel: Int = levelOutOfLevels.0
        let allLevels: Int = levelOutOfLevels.1
        
        print("init11 \(levelOutOfLevels)")
        
        levelsLabel.text = "\(currentLevel)/\(allLevels)"
    }
    
    func playingMap(mapStr: String) {
        mapLabel.text = mapStr
    }
    
    func declareWinner() {
        let score: String = lifeRemaining.text!
        let alert = UIAlertController(title: "Victory!", message:"Your score %: \(score)", preferredStyle: .Alert)
        let quit = UIAlertAction(title: "Ok", style: .Default) { _ in
            self.exit()
        }
        
        alert.addAction(quit)
        self.presentViewController(alert, animated: true){}
    }
}
