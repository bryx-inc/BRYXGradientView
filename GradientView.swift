//
//  MyClass.swift
//  BRYXGradientView
//
//  Created by Adam Binsz on 9/28/15.
//  Copyright © 2015 Adam Binsz. All rights reserved.
//

import Foundation

@IBDesignable public class GradientView: UIView {
    @IBInspectable public var topColor: UIColor = UIColor.whiteColor() {
        didSet {
            if let _ = gradientLayer.colors?.first {
                gradientLayer.colors![0] = topColor.CGColor
            } else {
                gradientLayer.colors = [topColor.CGColor, bottomColor.CGColor]
            }
        }
    }
    @IBInspectable public var bottomColor: UIColor = UIColor.blackColor() {
        didSet {
            if let _ = gradientLayer.colors?.last {
                gradientLayer.colors![gradientLayer.colors!.count - 1] = bottomColor.CGColor
            } else {
                gradientLayer.colors = [topColor.CGColor, bottomColor.CGColor]
            }
        }
    }
    
    public init(topColor: UIColor, bottomColor: UIColor) {
        self.topColor = topColor
        self.bottomColor = bottomColor
        super.init(frame: CGRectZero)
        createGradient()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createGradient()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        createGradient()
    }
    
    private func createGradient() {
        gradientLayer.colors = [topColor.CGColor, bottomColor.CGColor]
    }
    
    public var gradientLayer: CAGradientLayer {
        get {
            return self.layer as! CAGradientLayer
        }
    }
    
    override class public func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }
}
