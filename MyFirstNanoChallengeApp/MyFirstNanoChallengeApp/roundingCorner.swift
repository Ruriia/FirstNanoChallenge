//
//  roundingCorner.swift
//  MyFirstNanoChallengeApp
//
//  Created by Alfon on 04/03/20.
//  Copyright © 2020 Alfon. All rights reserved.
//

import Foundation

import UIKit

extension UIView {
    
    func round(corners: UIRectCorner, cornerRadius: Double) {
        
        let size = CGSize(width: cornerRadius, height: cornerRadius)
        let bezierPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = self.bounds
        shapeLayer.path = bezierPath.cgPath
        self.layer.mask = shapeLayer
    }
    
    func fadeIn() {
           // Move our fade out code from earlier
        UIView.animate(withDuration: 1.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0 // Instead of a specific instance of, say, birdTypeLabel, we simply set [thisInstance] (ie, self)'s alpha
        }, completion: nil)
    }
    
    func fadeOut() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
            self.alpha = 0.0
        }, completion: nil)
    }
    
    
}
