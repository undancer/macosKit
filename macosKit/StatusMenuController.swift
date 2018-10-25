//
//  StatusMenuController.swift
//  macosKit
//
//  Created by undancer on 2018/10/25.
//  Copyright © 2018 undancer. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    
    @IBOutlet weak var statusMenu: NSMenu!
    var statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength);
    
    var preferences : PreferencesWindowController!;
    
    override init() {
        print("Status Menu Init ...")
    }
    
    override func awakeFromNib() {
        let button = statusItem.button!
        button.title = "button"
        statusItem.menu = statusMenu;
        
        preferences = (NSStoryboard.main!.instantiateController(withIdentifier: "Preferences") as! PreferencesWindowController);
    }
    
    @IBAction func openPreferences(_ sender: Any) {
        print("open it");
        preferences.showWindow(nil);
    }
    
    @IBAction func quitApp(_ sender: Any) {
   
        NSApplication.shared.terminate(self);
    
    }
    
}
