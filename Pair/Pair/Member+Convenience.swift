//
//  Member+Convenience.swift
//  Pair
//
//  Created by Thorsten Boldin on 04/11/2016.
//  Copyright © 2016 Thorsten Boldin. All rights reserved.
//

import Foundation
import CoreData

extension Member {
    @discardableResult convenience init?(surName: String,
                                         firstName: String,
                                         context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.surName = surName
        self.firstName = firstName
    }
}
