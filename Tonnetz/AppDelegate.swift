//
//  AppDelegate.swift
//  Tonnetz
//
//  Created by Thom Jordan on 8/8/19.
//  Copyright © 2019 Thom Jordan. All rights reserved.
//

import Cocoa
import SwiftUI


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 1024, height: 748),
            styleMask: [.titled, .closable, .miniaturizable],
            backing: .buffered, defer: false)
        
        window.center()
        
        window.setFrameAutosaveName("Main Window")
        
        window.contentView = NSHostingView(rootView: tonnetzView59() )

        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

