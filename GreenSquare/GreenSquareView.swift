//
//  GreenSquareView.swift
//  GreenSquare
//
//  Created by Robert Tolar Haining on 4/9/20.
//  Copyright © 2020 Robert Tolar Haining. All rights reserved.
//

import AppKit

class GreenSquareView: NSView {
    init() {
        super.init(frame: .zero)
        wantsLayer = true
        layer?.backgroundColor = NSColor.green.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }    
}
