//
//  MyList+Extensions.swift
//  Reminders
//
//  Created by 김규리 on 2023/06/07.
//

import Foundation
import CoreData

extension MyList {
    static var all: NSFetchRequest<MyList> {
        let request = MyList.fetchRequest()
        request.sortDescriptors = []
        return request
    }
    
    func save() throws {
       try CoreDataManager.shared.context.save()
    }
}
