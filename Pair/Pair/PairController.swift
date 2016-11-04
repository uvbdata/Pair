//
//  PairController.swift
//  Pair
//
//  Created by Thorsten Boldin on 04/11/2016.
//  Copyright © 2016 Thorsten Boldin. All rights reserved.
//

import Foundation
import CoreData


class PairController {
    
    static let sharedController = PairController()

    var groups: [Group] {
        
        let request: NSFetchRequest<Group> = Group.fetchRequest()
        return (try? CoreDataStack.context.fetch(request)) ?? []
    }
    
    var members: [Member] {
        
        let request: NSFetchRequest<Member> = Member.fetchRequest()
        return (try? CoreDataStack.context.fetch(request)) ?? []
    }
    
    func create(groupWithName name: String) {
        Group(name: name)
    }
    
    func delete(_ group: Group) {
        if let moc = group.managedObjectContext {
            moc.delete(group)
            saveToPersistentStore()
        }
    }
    

    func saveToPersistentStore() {
        let moc = CoreDataStack.context
        do {
            try moc.save()
        } catch let error {
            print("There was a problem saving to the persistent store: \(error)")
        }
    }
}


