//
//  Compras+CoreDataProperties.swift
//  Shoping
//
//  Created by DAMII on 3/12/24.
//
//

import Foundation
import CoreData


extension Compras {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Compras> {
        return NSFetchRequest<Compras>(entityName: "Compras")
    }

    @NSManaged public var articulos: String?
    @NSManaged public var fecha: Date?
    @NSManaged public var comprado: Bool
    @NSManaged public var id: UUID?

}

extension Compras : Identifiable {

}
