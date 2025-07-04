//
//  Step+CoreDataProperties.swift
//  Ambrosia
//
//  Created by Caleb St. Clair on 7/4/25.
//
//

import Foundation
import CoreData


extension Step {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Step> {
        return NSFetchRequest<Step>(entityName: "Step")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var order: Int16
    @NSManaged public var timerDuration: Double
    @NSManaged public var updatedAt: Date?
    @NSManaged public var image: Image?
    @NSManaged public var recipe: Recipe?

}

extension Step : Identifiable {

}
