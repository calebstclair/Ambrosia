//
//  ItemList+CoreDataProperties.swift
//  Ambrosia
//
//  Created by Caleb St. Clair on 7/4/25.
//
//

import Foundation
import CoreData


extension ItemList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemList> {
        return NSFetchRequest<ItemList>(entityName: "ItemList")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var image: Image?
    @NSManaged public var recipes: Recipe?
    @NSManaged public var users: User?

}

extension ItemList : Identifiable {

}
