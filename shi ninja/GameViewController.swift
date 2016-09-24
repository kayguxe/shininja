//
//  GameViewController.swift
//  shi ninja
//
//  Created by hisham hawara on 2016-09-13.
//  Copyright (c) 2016 Hisham Hawara. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    var scene: GameScene!
    override func viewDidLoad() {
        super.viewDidLoad()
        let Skview = view as! SKView
        Skview.multipleTouchEnabled = false
        scene = GameScene(size: Skview.bounds.size)
        scene.scaleMode = .AspectFill
        Skview.presentScene(scene)

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
}
