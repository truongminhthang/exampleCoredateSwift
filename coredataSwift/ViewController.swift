//
//  ViewController.swift
//  coredataSwift
//
//  Created by Trương Thắng on 1/2/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {


    var lable = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        let now = NSDate()
        let salary = insertNewObjectToEntity(Salary) as! Salary
        salary.date = now.timeIntervalSince1970
        
        let job = NSEntityDescription.insertNewObjectForEntityForName("Job", inManagedObjectContext: AppDelegate.shareInstance().managedObjectContext) as! Job
        job.title = "framgia "
        
        AppDelegate.shareInstance().saveContext()
        
        setupLabel()
    }
    
    func setupLabel(){
        lable.frame = view.frame
        print(fetchRequest(Salary) as! [Salary])
        print(fetchRequest(Job)as! [Job])
    }
    
    func insertNewObjectToEntity(c: AnyClass) -> NSManagedObject {
        return NSEntityDescription.insertNewObjectForEntityForName(String(c), inManagedObjectContext: AppDelegate.shareInstance().managedObjectContext)
    }
    
    func fetchRequest<T>(t: T) -> [AnyObject] {
        let fetch = NSFetchRequest(entityName: String(t))
        var arr = [AnyObject]()
        do  {
            arr = try AppDelegate.shareInstance().managedObjectContext.executeFetchRequest(fetch)
            
        } catch {
            
        }
        return arr
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

