//
//  PreviewViewController.swift
//  Preview
//
//  Created by Robert Tolar Haining on 4/9/20.
//  Copyright © 2020 Robert Tolar Haining. All rights reserved.
//

import Foundation
import AppKit

class PreviewViewController: NSViewController {
    var screensaverView: GreenSquareScreenSaverView? = nil
    
    var timer: Timer? = nil
    
    var isAnimating: Bool = false {
        didSet {
            toggleAnimationTimer()
        }
    }
    
    override func loadView() {
        screensaverView = GreenSquareScreenSaverView(frame: CGRect.zero, isPreview: true)
        self.view = screensaverView ?? NSView()
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
        isAnimating = true
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
        
        isAnimating = false
    }
    
    private func toggleAnimationTimer() {
        if isAnimating {
            if timer == nil {
                timer = Timer.scheduledTimer(withTimeInterval: 1/30.0, repeats: true) { [weak self] (_) in
                    self?.animate()
                }
            }
        } else {
            if let timer = timer {
                timer.invalidate()
                self.timer = nil
            }
        }
    }
    
    func animate() {
        if isAnimating, let screensaverView = screensaverView {
            screensaverView.animateOneFrame()
        }
    }
}
