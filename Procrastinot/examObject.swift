//
//  examObject.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit

class examObject: NSObject {
    var location: String?
    var date: NSDate?
    
    init(date: NSDate, location: String){
        self.location = location
        self.date = date
    }
    
}
