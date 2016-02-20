//
//  DatePickerController.swift
//  Procrastinot
//
//  Created by Izz Irfan on 20/02/2016.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit

class DatePickerController: NSObject {
    @IBOutlet var datePicker:UIDatePicker!
    @IBOutlet var timePicker:UIDatePicker!
    @IBOutlet var dateTimeDisplay:UILabel!
    
    @IBAction func datePickerChanged(sender: AnyObject){
        setDateAndTime()
    }
    
    @IBAction func timePickerChanged(sender: AnyObject){
        setDateAndTime()
    }
    
    let dateFormatter = NSDateFormatter()
    let timeFormatter = NSDateFormatter()
    
    func setDateAndTime(){
            dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
            timeFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
            dateTimeDisplay.text = dateFormatter.stringFromDate(datePicker.date) + " " + timeFormatter.stringFromDate(timePicker.date)
        var date = datePicker.date;
        
    }
    
}
