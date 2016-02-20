//
//  homeworkObject.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit

class homeworkObject: NSObject {
    var title: String?
    var dueBy: NSDate?
    var done = false
    var website: [String]?
    
    init(title: String, dueBy: NSDate){
        self.title = title
        self.dueBy = dueBy
    }
    
}
