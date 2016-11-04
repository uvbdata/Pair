//
//  MemberController.swift
//  Pair
//
//  Created by Thorsten Boldin on 04/11/2016.
//  Copyright © 2016 Thorsten Boldin. All rights reserved.
//

import Foundation
import CoreData

class MemberController {
    
    static let sharedController = MemberController()
    
    static func create(memberWithSurname mySurname: String, myFirstname: String, group: Group) {
        let _ = Member(surName: mySurname, firstName: myFirstname, context: group.managedObjectContext!)
        PairController.sharedController.saveToPersistentStore()
    }
    
    static func delete(member: Member) {
        if let moc = member.managedObjectContext {
            moc.delete(member)
            PairController.sharedController.saveToPersistentStore()
        }
    }

}
