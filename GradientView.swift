//
//  MyClass.swift
//  BRYXGradientView
//
//  Created by Adam Binsz on 9/28/15.
//  Copyright © 2015 Adam Binsz. All rights reserved.
//

import Foundation

@IBDesignable public class GradientView: UIView {
    @IBInspectable public var topColor: UIColor = UIColor.white {
        didSet {
            if let _ = gradientLayer.colors?.first {
                gradientLayer.colors![0] = topColor.cgColor
            } else {
                gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
            }
        }
    }
    @IBInspectable public var bottomColor: UIColor = UIColor.black {
        didSet {
            if let _ = gradientLayer.colors?.last {
                gradientLayer.colors![gradientLayer.colors!.count - 1] = bottomColor.cgColor
            } else {
                gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
            }
        }
    }
    
    public init(topColor: UIColor, bottomColor: UIColor) {
        self.topColor = topColor
        self.bottomColor = bottomColor
        super.init(frame: CGRect.zero)
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
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
    }
    
    public var gradientLayer: CAGradientLayer {
        get {
            return self.layer as! CAGradientLayer
        }
    }
    
    override public class var layerClass: Swift.AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
}
