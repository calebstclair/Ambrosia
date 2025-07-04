//
//  Image+CoreDataProperties.swift
//  Ambrosia
//
//  Created by Caleb St. Clair on 7/4/25.
//
//

import Foundation
import CoreData


extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var imageData: Data?
    @NSManaged public var type: String?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var ingredients: Ingredient?
    @NSManaged public var lists: ItemList?
    @NSManaged public var recipes: Recipe?
    @NSManaged public var step: Step?
    @NSManaged public var users: User?

}

extension Image : Identifiable {

}
