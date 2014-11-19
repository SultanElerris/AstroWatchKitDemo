//
//  AstroDetailController.swift
//  AstroWatchKitTableDemo
//
//  Created by Nick McCardel on 11/18/14.
//  Copyright (c) 2014 Blue House Laboratories. All rights reserved.
//

import Foundation
import WatchKit

class AstroDetailController: WKInterfaceController {
    
    @IBOutlet weak var astroDetailImage: WKInterfaceImage!
    @IBOutlet weak var astroDetailLabel: WKInterfaceLabel!
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
            self.astroDetailLabel.setText(context as String!)
            
            self.astroDetailImage.setImage(UIImage(named: context as String!))
        
    }

}