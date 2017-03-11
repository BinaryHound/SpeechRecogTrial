//
//  CircleButton.swift
//  ScribeSpeechTrial
//
//  Created by Lennard Neuwirth on 3/11/17.
//  Copyright © 2017 Lionsreach Studios, LLC. All rights reserved.
//

import UIKit
@IBDesignable
class CircleButton: UIButton {

	@IBInspectable var cornerRadius: CGFloat = 30.0 {
		didSet {
			setupView()
		}
	}
	
	override func prepareForInterfaceBuilder() {
		setupView()
	}

	func setupView() {
		layer.cornerRadius = cornerRadius
	}
	
}
