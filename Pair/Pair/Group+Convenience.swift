//
//  Group+Convenience.swift
//  Pair
//
//  Created by Thorsten Boldin on 04/11/2016.
//  Copyright © 2016 Thorsten Boldin. All rights reserved.
//

import Foundation
import CoreData

extension Group {
    @discardableResult convenience init?(name: String,
                                         context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.name = name
    }
}
