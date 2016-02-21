//
//  CourseDetailsViewController.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit

class CourseDetailsViewController: UIViewController {
    var course: courseObject!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print("hello prepare for course details segue")
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func cancelToAddingDetail(segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func saveCourseDetail(segue:UIStoryboardSegue) {
        
    }

}
