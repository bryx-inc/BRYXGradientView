//
//  GradientView.swift
//  
//
//  Created by Adam Binsz on 8/7/15.
//
//

import UIKit

@IBDesignable class GradientView: UIView {
    @IBInspectable var topColor: UIColor = UIColor.whiteColor() {
        didSet {
            if let _ = gradientLayer.colors?.first {
                gradientLayer.colors![0] = topColor.CGColor
            } else {
                gradientLayer.colors = [topColor.CGColor, bottomColor.CGColor]
            }
        }
    }
    @IBInspectable var bottomColor: UIColor = UIColor.blackColor() {
        didSet {
            if let _ = gradientLayer.colors?.last {
                gradientLayer.colors![gradientLayer.colors!.count - 1] = bottomColor.CGColor
            } else {
                gradientLayer.colors = [topColor.CGColor, bottomColor.CGColor]
            }
        }
    }
    
    init(topColor: UIColor, bottomColor: UIColor) {
        self.topColor = topColor
        self.bottomColor = bottomColor
        super.init(frame: CGRectZero)
        createGradient()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createGradient()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createGradient()
    }

    private func createGradient() {
        gradientLayer.colors = [topColor.CGColor, bottomColor.CGColor]
    }
    
    var gradientLayer: CAGradientLayer {
        get {
            return self.layer as! CAGradientLayer
        }
    }
    
    override class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }
}
