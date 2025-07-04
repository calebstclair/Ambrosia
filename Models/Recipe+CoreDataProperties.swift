//
//  Recipe+CoreDataProperties.swift
//  Ambrosia
//
//  Created by Caleb St. Clair on 7/4/25.
//
//

import Foundation
import CoreData


extension Recipe {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipe> {
        return NSFetchRequest<Recipe>(entityName: "Recipe")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var dest: String?
    @NSManaged public var id: UUID?
    @NSManaged public var rating: Int16
    @NSManaged public var title: String?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var creator: User?
    @NSManaged public var image: Image?
    @NSManaged public var ingredients: Ingredient?
    @NSManaged public var lists: ItemList?
    @NSManaged public var steps: Step?
    @NSManaged public var users: User?

}

extension Recipe : Identifiable {

}
