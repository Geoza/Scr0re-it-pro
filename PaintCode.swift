//
//  PaintCode.swift
//  Sc0re it
//
//  Created by GeorgeZaimis on 12/07/16.
//  Copyright (c) 2016 geoza. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

open class PaintCode : NSObject {

    //// Cache

    fileprivate struct Cache {
        static var openedLightedBlue: UIColor = UIColor(red: 0.248, green: 0.831, blue: 0.810, alpha: 1.000)
        static var lightYellow: UIColor = UIColor(red: 1.000, green: 0.962, blue: 0.491, alpha: 1.000)
        static var semiTrasparentBlack: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 0.408)
        static var color: UIColor = UIColor(red: 1.000, green: 0.944, blue: 0.743, alpha: 1.000)
        static var lightGrey: UIColor = UIColor(red: 0.667, green: 0.667, blue: 0.667, alpha: 1.000)
    }

    //// Colors

    open class var openedLightedBlue: UIColor { return Cache.openedLightedBlue }
    open class var lightYellow: UIColor { return Cache.lightYellow }
    open class var semiTrasparentBlack: UIColor { return Cache.semiTrasparentBlack }
    open class var color: UIColor { return Cache.color }
    open class var lightGrey: UIColor { return Cache.lightGrey }

    //// Drawing Methods

    open class func drawSc0reButton(_ buttonRadius: CGFloat, textMess: String, pressedIn: Bool) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let color2 = UIColor(red: 0.667, green: 0.667, blue: 0.667, alpha: 0.337)

        //// Gradient Declarations
        let openedLightedBlueWight = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [PaintCode.openedLightedBlue.cgColor, PaintCode.openedLightedBlue.blendedColorWithFraction(0.5, ofColor: UIColor.white).cgColor, UIColor.white.cgColor] as CFArray , locations: [0, 0.6, 1])

        //// Rectangle Drawing
        let rectangleRect = CGRect(x: 0, y: 0, width: 163, height: 28)
        let rectanglePath = UIBezierPath(roundedRect: rectangleRect, cornerRadius: buttonRadius)
        context?.saveGState()
        rectanglePath.addClip()
        context?.drawLinearGradient(openedLightedBlueWight!, start: CGPoint(x: 81.5, y: -0), end: CGPoint(x: 81.5, y: 28), options: [])
        context?.restoreGState()
        PaintCode.lightGrey.setStroke()
        rectanglePath.lineWidth = 0.5
        rectanglePath.stroke()
        let rectangleStyle = NSMutableParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        rectangleStyle.alignment = NSTextAlignment.center

        let rectangleFontAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.systemFontSize), NSForegroundColorAttributeName: UIColor.black, NSParagraphStyleAttributeName: rectangleStyle]

        let rectangleTextHeight: CGFloat = NSString(string: textMess).boundingRect(with: CGSize(width: rectangleRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: rectangleFontAttributes, context: nil).size.height
        context?.saveGState()
        context?.clip(to: rectangleRect);
        NSString(string: textMess).draw(in: CGRect(x: rectangleRect.minX, y: rectangleRect.minY + (rectangleRect.height - rectangleTextHeight) / 2, width: rectangleRect.width, height: rectangleTextHeight), withAttributes: rectangleFontAttributes)
        context?.restoreGState()


        if (pressedIn) {
            //// Pressed Drawing
            let pressedPath = UIBezierPath(roundedRect: CGRect(x: 0.25, y: 0.25, width: 163, height: 28), cornerRadius: buttonRadius)
            color2.setFill()
            pressedPath.fill()
            PaintCode.lightGrey.setStroke()
            pressedPath.lineWidth = 0.5
            pressedPath.stroke()
        }
    }

    open class func drawRate() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()


        //// Gradient Declarations
        let lightYellowSemiTransparentBlack = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [PaintCode.lightYellow.cgColor, PaintCode.lightYellow.blendedColorWithFraction(0.5, ofColor: PaintCode.semiTrasparentBlack).cgColor, PaintCode.semiTrasparentBlack.cgColor] as CFArray , locations: [0, 0.73, 1])

        //// Star Drawing
        let starPath = UIBezierPath()
        starPath.move(to: CGPoint(x: 40, y: 0))
        starPath.addLine(to: CGPoint(x: 54.11, y: 20.58))
        starPath.addLine(to: CGPoint(x: 78.04, y: 27.64))
        starPath.addLine(to: CGPoint(x: 62.83, y: 47.42))
        starPath.addLine(to: CGPoint(x: 63.51, y: 72.36))
        starPath.addLine(to: CGPoint(x: 40, y: 64))
        starPath.addLine(to: CGPoint(x: 16.49, y: 72.36))
        starPath.addLine(to: CGPoint(x: 17.17, y: 47.42))
        starPath.addLine(to: CGPoint(x: 1.96, y: 27.64))
        starPath.addLine(to: CGPoint(x: 25.89, y: 20.58))
        starPath.close()
        context?.saveGState()
        starPath.addClip()
        context?.drawLinearGradient(lightYellowSemiTransparentBlack!, start: CGPoint(x: 33.09, y: 1.85), end: CGPoint(x: 52.76, y: 75.24), options: [])
        context?.restoreGState()
        PaintCode.color.setStroke()
        starPath.lineWidth = 1
        starPath.stroke()
    }

    open class func drawPhotoIcon() {
        //// Color Declarations
        let grey = UIColor(red: 0.502, green: 0.502, blue: 0.502, alpha: 1.000)

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 20, height: 15))
        PaintCode.lightGrey.setFill()
        rectanglePath.fill()
        grey.setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.stroke()
    }

    open class func drawCameraIcon(_ frame: CGRect, strokeNum: CGFloat, strokeNum2: CGFloat, strokeMun3: CGFloat) {
        //// Color Declarations
        let black = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)


        //// Subframes
        let group: CGRect = CGRect(x: frame.minX + 4, y: frame.minY + 0.25, width: frame.width - 8, height: floor((frame.height - 0.25) * 0.97603) + 0.5)


        //// Group
        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(roundedRect: CGRect(x: group.minX + floor(group.width * 0.00000 + 0.5), y: group.minY + floor(group.height * 0.12277 + 0.25) + 0.25, width: floor(group.width * 1.00000 + 0.5) - floor(group.width * 0.00000 + 0.5), height: floor(group.height * 0.99777 + 0.25) - floor(group.height * 0.12277 + 0.25)), byRoundingCorners: [UIRectCorner.topLeft, UIRectCorner.bottomLeft], cornerRadii: CGSize(width: 15, height: 15))
        rectangle4Path.close()
        black.setStroke()
        rectangle4Path.lineWidth = strokeNum
        rectangle4Path.stroke()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: group.minX + 0.10276 * group.width, y: group.minY + 0.07143 * group.height))
        bezierPath.addLine(to: CGPoint(x: group.minX + 0.10276 * group.width, y: group.minY + 0.00000 * group.height))
        bezierPath.addLine(to: CGPoint(x: group.minX + 0.22546 * group.width, y: group.minY + 0.00000 * group.height))
        bezierPath.addLine(to: CGPoint(x: group.minX + 0.22546 * group.width, y: group.minY + 0.07143 * group.height))
        bezierPath.lineCapStyle = CGLineCap.square;

        bezierPath.lineJoinStyle = CGLineJoin.round;

        UIColor.black.setStroke()
        bezierPath.lineWidth = strokeNum2
        bezierPath.stroke()


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: group.minX + floor(group.width * 0.10404 - 0.25) + 0.75, y: group.minY + floor(group.height * 0.29464 + 0.5), width: floor(group.width * 0.47050 - 0.25) - floor(group.width * 0.10404 - 0.25), height: floor(group.height * 0.83036 + 0.5) - floor(group.height * 0.29464 + 0.5)))
        black.setStroke()
        ovalPath.lineWidth = strokeNum2
        ovalPath.stroke()


        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: group.minX + floor(group.width * 0.13509 - 0.25) + 0.75, y: group.minY + floor(group.height * 0.33929 + 0.5), width: floor(group.width * 0.43944 - 0.25) - floor(group.width * 0.13509 - 0.25), height: floor(group.height * 0.78571 + 0.5) - floor(group.height * 0.33929 + 0.5)))
        black.setStroke()
        oval2Path.lineWidth = strokeNum2
        oval2Path.stroke()


        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: group.minX + floor(group.width * 0.25311 - 0.25) + 0.75, y: group.minY + floor(group.height * 0.51786 + 0.5), width: floor(group.width * 0.31522 - 0.25) - floor(group.width * 0.25311 - 0.25), height: floor(group.height * 0.60714 + 0.5) - floor(group.height * 0.51786 + 0.5)))
        black.setStroke()
        oval3Path.lineWidth = strokeNum2
        oval3Path.stroke()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: group.minX + floor(group.width * 0.58230 - 0.25) + 0.75, y: group.minY + floor(group.height * 0.57143 + 0.5), width: floor(group.width * 0.99845 - 0.25) - floor(group.width * 0.58230 - 0.25), height: floor(group.height * 1.00000 + 0.5) - floor(group.height * 0.57143 + 0.5)))
        black.setStroke()
        rectangle2Path.lineWidth = strokeNum2
        rectangle2Path.stroke()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: group.minX + floor(group.width * 0.58230 - 0.25) + 0.75, y: group.minY + floor(group.height * 0.12500 + 0.5), width: floor(group.width * 0.78727 - 0.25) - floor(group.width * 0.58230 - 0.25), height: floor(group.height * 0.57143 + 0.5) - floor(group.height * 0.12500 + 0.5)))
        black.setStroke()
        rectangle3Path.lineWidth = strokeNum2
        rectangle3Path.stroke()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: group.minX + 0.58436 * group.width, y: group.minY + 0.82589 * group.height))
        bezier2Path.addLine(to: CGPoint(x: group.minX + 0.68865 * group.width, y: group.minY + 0.76339 * group.height))
        bezier2Path.addLine(to: CGPoint(x: group.minX + 0.86350 * group.width, y: group.minY + 0.87500 * group.height))
        bezier2Path.addLine(to: CGPoint(x: group.minX + 0.98926 * group.width, y: group.minY + 0.82589 * group.height))
        bezier2Path.lineCapStyle = CGLineCap.round;

        bezier2Path.lineJoinStyle = CGLineJoin.bevel;

        UIColor.black.setStroke()
        bezier2Path.lineWidth = strokeNum2
        bezier2Path.stroke()


        //// Oval 4 Drawing
        let oval4Rect = CGRect(x: group.minX + floor(group.width * 0.55745 - 0.25) + 0.75, y: group.minY + floor(group.height * 0.25893 + 0.5), width: floor(group.width * 0.61335 - 0.25) - floor(group.width * 0.55745 - 0.25), height: floor(group.height * 0.33929 + 0.5) - floor(group.height * 0.25893 + 0.5))
        let oval4Path = UIBezierPath()
        oval4Path.addArc(withCenter: CGPoint(x: oval4Rect.midX, y: oval4Rect.midY), radius: oval4Rect.width / 2, startAngle: -90 * CGFloat(M_PI)/180, endAngle: 90 * CGFloat(M_PI)/180, clockwise: true)
        oval4Path.addLine(to: CGPoint(x: oval4Rect.midX, y: oval4Rect.midY))
        oval4Path.close()

        black.setStroke()
        oval4Path.lineWidth = strokeMun3
        oval4Path.stroke()


        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: group.minX + 0.62423 * group.width, y: group.minY + 0.29464 * group.height))
        bezier4Path.addLine(to: CGPoint(x: group.minX + 0.66718 * group.width, y: group.minY + 0.29464 * group.height))
        bezier4Path.addLine(to: CGPoint(x: group.minX + 0.66718 * group.width, y: group.minY + 0.29464 * group.height))
        bezier4Path.addLine(to: CGPoint(x: group.minX + 0.66718 * group.width, y: group.minY + 0.29464 * group.height))
        black.setStroke()
        bezier4Path.lineWidth = strokeMun3
        bezier4Path.stroke()


        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: group.minX + 0.61196 * group.width, y: group.minY + 0.33929 * group.height))
        bezier5Path.addCurve(to: CGPoint(x: group.minX + 0.64877 * group.width, y: group.minY + 0.38393 * group.height), controlPoint1: CGPoint(x: group.minX + 0.64877 * group.width, y: group.minY + 0.38393 * group.height), controlPoint2: CGPoint(x: group.minX + 0.64877 * group.width, y: group.minY + 0.38393 * group.height))
        black.setStroke()
        bezier5Path.lineWidth = strokeMun3
        bezier5Path.stroke()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: group.minX + 0.61196 * group.width, y: group.minY + 0.25893 * group.height))
        bezier3Path.addCurve(to: CGPoint(x: group.minX + 0.64264 * group.width, y: group.minY + 0.20536 * group.height), controlPoint1: CGPoint(x: group.minX + 0.64264 * group.width, y: group.minY + 0.20536 * group.height), controlPoint2: CGPoint(x: group.minX + 0.64264 * group.width, y: group.minY + 0.20536 * group.height))
        UIColor.black.setStroke()
        bezier3Path.lineWidth = strokeMun3
        bezier3Path.stroke()


        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.24099 * group.height))
        bezier6Path.addCurve(to: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.17858 * group.height), controlPoint1: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.17338 * group.height), controlPoint2: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.17858 * group.height))
        bezier6Path.addLine(to: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.17858 * group.height))
        black.setStroke()
        bezier6Path.lineWidth = strokeMun3
        bezier6Path.stroke()


        //// Bezier 7 Drawing
        let bezier7Path = UIBezierPath()
        bezier7Path.move(to: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.41956 * group.height))
        bezier7Path.addCurve(to: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.35716 * group.height), controlPoint1: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.35196 * group.height), controlPoint2: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.35716 * group.height))
        bezier7Path.addLine(to: CGPoint(x: group.minX + 0.58742 * group.width, y: group.minY + 0.35716 * group.height))
        black.setStroke()
        bezier7Path.lineWidth = strokeMun3
        bezier7Path.stroke()


        //// Bezier 8 Drawing
        let bezier8Path = UIBezierPath()
        bezier8Path.move(to: CGPoint(x: group.minX + 0.81748 * group.width, y: group.minY + 0.51339 * group.height))
        bezier8Path.addLine(to: CGPoint(x: group.minX + 0.96472 * group.width, y: group.minY + 0.51339 * group.height))
        bezier8Path.addLine(to: CGPoint(x: group.minX + 0.92791 * group.width, y: group.minY + 0.39732 * group.height))
        bezier8Path.addLine(to: CGPoint(x: group.minX + 0.89724 * group.width, y: group.minY + 0.46875 * group.height))
        bezier8Path.addLine(to: CGPoint(x: group.minX + 0.86043 * group.width, y: group.minY + 0.31696 * group.height))
        bezier8Path.addLine(to: CGPoint(x: group.minX + 0.81748 * group.width, y: group.minY + 0.51339 * group.height))
        bezier8Path.addLine(to: CGPoint(x: group.minX + 0.81748 * group.width, y: group.minY + 0.51339 * group.height))
        bezier8Path.lineCapStyle = CGLineCap.round;

        bezier8Path.lineJoinStyle = CGLineJoin.round;

        UIColor.black.setStroke()
        bezier8Path.lineWidth = strokeMun3
        bezier8Path.stroke()
    }

    open class func drawCanvas1(_ frame: CGRect) {
        //// Color Declarations
        let black = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: frame.minX + 0.5, y: frame.minY + 5, width: 19, height: 12.5), byRoundingCorners: [UIRectCorner.topLeft, UIRectCorner.bottomLeft], cornerRadii: CGSize(width: 3, height: 3))
        rectanglePath.close()
        black.setStroke()
        rectanglePath.lineWidth = 0.7
        rectanglePath.stroke()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 3.45, y: frame.minY + 4.4))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 3.45, y: frame.minY + 3.4))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 5.6, y: frame.minY + 3.4))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 5.6, y: frame.minY + 4.4))
        UIColor.black.setStroke()
        bezierPath.lineWidth = 0.4
        bezierPath.stroke()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: frame.minX + 10.75, y: frame.minY + 11.25, width: 8.75, height: 6.25))
        black.setStroke()
        rectangle2Path.lineWidth = 0.5
        rectangle2Path.stroke()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: frame.minX + 10.75, y: frame.minY + 4.95, width: 4.5, height: 6.3))
        black.setStroke()
        rectangle3Path.lineWidth = 0.5
        rectangle3Path.stroke()


        //// Oval Drawing
        let ovalRect = CGRect(x: frame.minX + 10, y: frame.minY + 7, width: 1.75, height: 2)
        let ovalPath = UIBezierPath()
        ovalPath.addArc(withCenter: CGPoint(x: 0.0, y: 0.0), radius: ovalRect.width / 2, startAngle: 270 * CGFloat(M_PI)/180, endAngle: 90 * CGFloat(M_PI)/180, clockwise: true)
        ovalPath.addLine(to: CGPoint(x: 0.0, y: 0.0))
        ovalPath.close()

        var ovalTransform = CGAffineTransform(translationX: ovalRect.midX, y: ovalRect.midY)
        ovalTransform = ovalTransform.scaledBy(x: 1, y: ovalRect.height / ovalRect.width)
        ovalPath.apply(ovalTransform)

        black.setStroke()
        ovalPath.lineWidth = 0.3
        ovalPath.stroke()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: frame.minX + 11, y: frame.minY + 5.7))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 11, y: frame.minY + 6.7), controlPoint1: CGPoint(x: frame.minX + 11, y: frame.minY + 6.2), controlPoint2: CGPoint(x: frame.minX + 11, y: frame.minY + 6.7))
        black.setStroke()
        bezier2Path.lineWidth = 0.3
        bezier2Path.stroke()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: frame.minX + 11, y: frame.minY + 9.3))
        bezier3Path.addCurve(to: CGPoint(x: frame.minX + 11, y: frame.minY + 10.3), controlPoint1: CGPoint(x: frame.minX + 11, y: frame.minY + 9.8), controlPoint2: CGPoint(x: frame.minX + 11, y: frame.minY + 10.3))
        black.setStroke()
        bezier3Path.lineWidth = 0.3
        bezier3Path.stroke()


        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: frame.minX + 12, y: frame.minY + 8))
        bezier4Path.addCurve(to: CGPoint(x: frame.minX + 13.1, y: frame.minY + 8), controlPoint1: CGPoint(x: frame.minX + 13.1, y: frame.minY + 8), controlPoint2: CGPoint(x: frame.minX + 13.1, y: frame.minY + 8))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 13.1, y: frame.minY + 8))
        black.setStroke()
        bezier4Path.lineWidth = 0.3
        bezier4Path.stroke()


        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: frame.minX + 11.8, y: frame.minY + 7.2))
        bezier5Path.addCurve(to: CGPoint(x: frame.minX + 12.43, y: frame.minY + 6.57), controlPoint1: CGPoint(x: frame.minX + 12.03, y: frame.minY + 6.97), controlPoint2: CGPoint(x: frame.minX + 12.25, y: frame.minY + 6.75))
        bezier5Path.addCurve(to: CGPoint(x: frame.minX + 12.8, y: frame.minY + 6.2), controlPoint1: CGPoint(x: frame.minX + 12.65, y: frame.minY + 6.35), controlPoint2: CGPoint(x: frame.minX + 12.8, y: frame.minY + 6.2))
        black.setStroke()
        bezier5Path.lineWidth = 0.3
        bezier5Path.stroke()


        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: frame.minX + 11.8, y: frame.minY + 8.8))
        bezier6Path.addCurve(to: CGPoint(x: frame.minX + 12.8, y: frame.minY + 9.8), controlPoint1: CGPoint(x: frame.minX + 12.8, y: frame.minY + 9.8), controlPoint2: CGPoint(x: frame.minX + 12.8, y: frame.minY + 9.8))
        bezier6Path.addLine(to: CGPoint(x: frame.minX + 12.8, y: frame.minY + 9.8))
        black.setStroke()
        bezier6Path.lineWidth = 0.3
        bezier6Path.stroke()


        //// Bezier 7 Drawing
        let bezier7Path = UIBezierPath()
        bezier7Path.move(to: CGPoint(x: frame.minX + 16.62, y: frame.minY + 10))
        bezier7Path.addLine(to: CGPoint(x: frame.minX + 18.5, y: frame.minY + 10))
        bezier7Path.addLine(to: CGPoint(x: frame.minX + 17.88, y: frame.minY + 8))
        bezier7Path.addLine(to: CGPoint(x: frame.minX + 17.25, y: frame.minY + 9))
        bezier7Path.addLine(to: CGPoint(x: frame.minX + 16.62, y: frame.minY + 7))
        bezier7Path.addLine(to: CGPoint(x: frame.minX + 16, y: frame.minY + 10))
        bezier7Path.addLine(to: CGPoint(x: frame.minX + 16.62, y: frame.minY + 10))
        bezier7Path.addLine(to: CGPoint(x: frame.minX + 16.62, y: frame.minY + 10))
        bezier7Path.lineCapStyle = CGLineCap.round;

        bezier7Path.lineJoinStyle = CGLineJoin.round;

        black.setStroke()
        bezier7Path.lineWidth = 0.3
        bezier7Path.stroke()


        //// Bezier 8 Drawing
        let bezier8Path = UIBezierPath()
        bezier8Path.move(to: CGPoint(x: frame.minX + 10.75, y: frame.minY + 15.55))
        bezier8Path.addLine(to: CGPoint(x: frame.minX + 13.73, y: frame.minY + 14.3))
        bezier8Path.addLine(to: CGPoint(x: frame.minX + 16.72, y: frame.minY + 15.55))
        bezier8Path.addLine(to: CGPoint(x: frame.minX + 19.7, y: frame.minY + 14.3))
        bezier8Path.lineCapStyle = CGLineCap.round;

        bezier8Path.lineJoinStyle = CGLineJoin.round;

        UIColor.black.setStroke()
        bezier8Path.lineWidth = 0.5
        bezier8Path.stroke()


        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: frame.minX + 2.25, y: frame.minY + 7.7, width: 7.25, height: 7.25))
        UIColor.black.setStroke()
        oval2Path.lineWidth = 0.4
        oval2Path.stroke()


        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: frame.minX + 3.25, y: frame.minY + 8.7, width: 5.25, height: 5.25))
        UIColor.black.setStroke()
        oval3Path.lineWidth = 0.4
        oval3Path.stroke()


        //// Oval 4 Drawing
        let oval4Path = UIBezierPath(ovalIn: CGRect(x: frame.minX + 5.4, y: frame.minY + 10.8, width: 1, height: 1))
        UIColor.black.setStroke()
        oval4Path.lineWidth = 0.4
        oval4Path.stroke()
    }

    //// Generated Images

    open class func imageOfCanvas1(_ frame: CGRect) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
            PaintCode.drawCanvas1(frame)

        let imageOfCanvas1 = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return imageOfCanvas1
    }

}



extension UIColor {
    func blendedColorWithFraction(_ fraction: CGFloat, ofColor color: UIColor) -> UIColor {
        var r1: CGFloat = 1.0, g1: CGFloat = 1.0, b1: CGFloat = 1.0, a1: CGFloat = 1.0
        var r2: CGFloat = 1.0, g2: CGFloat = 1.0, b2: CGFloat = 1.0, a2: CGFloat = 1.0

        self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
        color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)

        return UIColor(red: r1 * (1 - fraction) + r2 * fraction,
            green: g1 * (1 - fraction) + g2 * fraction,
            blue: b1 * (1 - fraction) + b2 * fraction,
            alpha: a1 * (1 - fraction) + a2 * fraction);
    }
}

@objc protocol StyleKitSettableImage {
    func setImage(_ image: UIImage!)
}

@objc protocol StyleKitSettableSelectedImage {
    func setSelectedImage(_ image: UIImage!)
}
