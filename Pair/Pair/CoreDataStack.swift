//
//  CoreDataStack.swift
//  Pair
//
//  Created by Thorsten Boldin on 04/11/2016.
//  Copyright © 2016 Thorsten Boldin. All rights reserved.
//

import Foundation

import Foundation
import CoreData

class CoreDataStack {
    
    static let container: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "Pair")
        container.loadPersistentStores() { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    static var context: NSManagedObjectContext { return container.viewContext }
}
