//
//  AppDelegate.swift
//  Preview
//
//  Created by Robert Tolar Haining on 4/9/20.
//  Copyright © 2020 Robert Tolar Haining. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var window: NSWindow!
    var previewViewController: PreviewViewController?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let previewViewController = PreviewViewController()
        self.previewViewController = previewViewController
        
        // Create the window and set the content view.
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 800, height: 600),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = previewViewController.view
        window.makeKeyAndOrderFront(nil)
    }
}


