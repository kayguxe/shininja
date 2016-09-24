//
//  GameScene.swift
//  shi ninja
//
//  Created by hisham hawara on 2016-09-13.
//  Copyright (c) 2016 Hisham Hawara. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var movingGround: MLMovingGround!
    var hero: MLHero!
    var isStarted = false
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255, blue: 244.0/255, alpha: 1.0)
        movingGround = MLMovingGround(size: CGSize(width: view.frame.width, height: KMLGroundHeight))
        movingGround.position = CGPointMake(0, self.frame.size.height/2)
        addChild(movingGround)
         hero = MLHero()
        hero.position = CGPointMake(70, movingGround.position.y + (movingGround.frame.size.height/2) + (hero.frame.size.height/2))
        addChild(hero)
        hero.breathe()
        
        
    }
    func start() {
        isStarted = true
        hero.stop()
        hero.startRunning()
        movingGround.start()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        if !isStarted {
            start()
        }
        else {
            hero.flip()
        }

        
        

    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
