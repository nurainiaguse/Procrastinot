//
//  ViewController.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit
import AFNetworking
import Parse
import Bolts

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var courseTableView: UITableView!
    
    var courses: [courseObject]?

    override func viewDidLoad() {
        super.viewDidLoad()
        courseTableView.dataSource = self
        courseTableView.delegate = self
        courseTableView.reloadData()
        //example.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{

        if let courses = courses { // if semesters is not nil, assign it to sem
            return courses.count // and return the number of elems
        }
        return 0 // else there are no elems
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let course = courses![indexPath.row]
        let courseCell = tableView.dequeueReusableCellWithIdentifier("coursecell", forIndexPath: indexPath) as! CourseCellTableViewCell
        //courseCell.course = courseObject.init()
        return courseCell
    }

}

