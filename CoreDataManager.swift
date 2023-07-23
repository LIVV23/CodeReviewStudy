//
//  CoreDataManager.swift
//  Reminders
//
//  Created by 김규리 on 2023/06/07.
//

import Foundation
import CoreData

class CoreDataManager {
    
    private let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "RemindersModel")
        let description = persistentContainer.persistentStoreDescriptions.first
        
        description?.setOption(true as NSNumber, forKey: NSPersistentHistoryTokenKey)
        persistentContainer.loadPersistentStores {
            description, error in
            if let error = error {
                fatalError("Unable to initialize Core Date \(error)")
            }
        }
    }
}
