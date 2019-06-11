//
//  ViewController.swift
//  Local Notification
//
//  Created by Yasmine on 6/9/19.
//  Copyright © 2019 Yasmine. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController ,UNUserNotificationCenterDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        createLocalNotification()
    }
    
    
    func createLocalNotification()
    {
        // 1. define the content
        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.body = "Body"
        content.sound = UNNotificationSound.default
        
        //2. define trigger
        //  UNCalendarNotificationTrigger : With this trigger you can specify date and time for the notification.
        // UNLocationNotificationTrigger  : Here you can specify a location. When the user enters that region, the notification will be fired.
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
        // 3.define request
        let request = UNNotificationRequest(identifier: "TestIdentifier", content: content, trigger: trigger)
        
        // 4. add request
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
 
    
    


}

