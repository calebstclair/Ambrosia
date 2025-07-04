//
//  Ingredient+CoreDataProperties.swift
//  Ambrosia
//
//  Created by Caleb St. Clair on 7/4/25.
//
//

import Foundation
import CoreData


extension Ingredient {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ingredient> {
        return NSFetchRequest<Ingredient>(entityName: "Ingredient")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var expiration: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var notes: String?
    @NSManaged public var quantity: Int32
    @NSManaged public var updatedAt: Date?
    @NSManaged public var image: Image?
    @NSManaged public var recipe: Recipe?

}

extension Ingredient : Identifiable {

}
