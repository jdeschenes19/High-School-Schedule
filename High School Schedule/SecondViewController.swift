//
//  SecondViewController.swift
//  High School Schedule
//
//  Created by JAM2 on 5/29/15.
//  Copyright (c) 2015 JAM2. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var DateInFormat:String = ""
        
        func getDayOfWeek(today:String)->Int? {
            
            var todaysDate:NSDate = NSDate()
            var dateFormatter:NSDateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            var DateInFormat:String = dateFormatter.stringFromDate(todaysDate)
            
            let formatter  = NSDateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            if let todayDate = formatter.dateFromString(today) {
                let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
                let myComponents = myCalendar.components(.CalendarUnitWeekday, fromDate: todayDate)
                let weekDay = myComponents.weekday
                return weekDay
            } else {
                return nil
            }
        }
        
        if let weekday = getDayOfWeek(DateInFormat) {
            println(weekday)
        } else {
            println("bad input")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
