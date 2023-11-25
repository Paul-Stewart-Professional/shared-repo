//
//  extensions.swift
//  yearLongProject
//
//  Created by Paul Stewart on 10/5/23.
//

import UIKit

extension UIImageView {
    
    func makeRounded() {
        
        layer.borderWidth = 2
        layer.masksToBounds = false
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = self.frame.height / 2
        clipsToBounds = true
    }
    func givePicBorder() {
        layer.borderWidth = 2
        layer.masksToBounds = false
        layer.borderColor = UIColor.black.cgColor
        clipsToBounds = true
    }
}
extension UIView {
    func giveBorder() {
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
    }
}

extension UISegmentedControl {
    func setHeight() {
        let segmentedControl = UISegmentedControl(items: ["Segment1", "Segment2"])
            segmentedControl.frame.size.height = 50.0
    }
}
