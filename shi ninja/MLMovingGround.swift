//
//  MLMovingGround.swift
//  shi ninja
//
//  Created by hisham hawara on 2016-09-13.
//  Copyright © 2016 Hisham Hawara. All rights reserved.
//

import Foundation
import SpriteKit

class MLMovingGround: SKSpriteNode{
    let NUMBER_OF_SEGMENTS = 30
    let COLOR_ONE = UIColor(red: 88.0/255, green: 148.0/255, blue: 87.0/255, alpha: 1.0)
    let COLOR_TWO = UIColor(red: 120/255, green: 195/255, blue: 118/255, alpha: 1.0)
    
     init(size: CGSize){
        super.init(texture: nil, color: UIColor.brownColor(), size: CGSize(width: size.width*2, height: size.height))
        anchorPoint = CGPointMake(0, 0.5)
        for i in 0 ..< NUMBER_OF_SEGMENTS {
            var segment_color = UIColor!()
            if i % 2 == 0 {
                segment_color = COLOR_ONE
            }
            else {
                segment_color = COLOR_TWO
            }
            let segment = SKSpriteNode(color: segment_color, size: CGSize(width: self.size.width/CGFloat(NUMBER_OF_SEGMENTS), height: self.size.height))
            segment.anchorPoint = CGPointMake(0, 0.5)
            segment.position = CGPointMake(CGFloat(i)*segment.size.width, 0)
            addChild(segment)
        
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func start() {
    
    let moveLeft = SKAction.moveByX(-frame.size.width/2, y: 0, duration: 1.0)
        let resetPosition = SKAction.moveToX(0, duration: 0)
        let moveSequence = SKAction.sequence([moveLeft, resetPosition])
        runAction(SKAction.repeatActionForever(moveSequence))
        

        
    }
}
