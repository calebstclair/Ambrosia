//
//  User+CoreDataProperties.swift
//  Ambrosia
//
//  Created by Caleb St. Clair on 7/4/25.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var role: String?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var createdrecipes: Recipe?
    @NSManaged public var image: Image?
    @NSManaged public var lists: ItemList?
    @NSManaged public var recipes: Recipe?

}

extension User : Identifiable {

}
