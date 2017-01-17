//
//  Player1ImageViewButton.swift
//  Sc0re it Pro
//
//  Created by George on 12/07/16.
//  Copyright © 2016 George Zaimis. All rights reserved.
//

import UIKit

class Player1ImageViewButton: UIView {
    
    override func draw(_ rect: CGRect) {
        PaintCode.imageOfCanvas1()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

        testTouches(touches as NSSet!)
        
    }
    
    func testTouches(_ touches: NSSet!) {
        // Get the first touch and its location in this view controller's view coordinate system
        let touch = touches.allObjects[0] as! UITouch
        let touchLocation = touch.location(in: self)
        
        // Convert the location of the obstacle view to this view controller's view coordinate system
        let obstacleViewFrame = self.convert(frame, from: superview)
        
        // Check if the touch is inside the obstacle view
        if obstacleViewFrame.contains(touchLocation) {
            let prefs:UserDefaults = UserDefaults.standard
            prefs.set(1, forKey: "Pass?")
            prefs.synchronize()
        }
        
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
