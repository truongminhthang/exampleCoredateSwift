//
//  Salary+CoreDataProperties.swift
//  coredataSwift
//
//  Created by Trương Thắng on 1/2/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Salary {

    @NSManaged var date: NSTimeInterval
    @NSManaged var name: String
}
