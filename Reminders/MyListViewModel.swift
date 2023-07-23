//
//  MyListViewModel.swift
//  Reminders
//
//  Created by 김규리 on 2023/06/07.
//

import SwiftUI
import CoreData

struct MyListViewModel: Identifiable {
    private let myList: MyList
    init(myList: MyList) {
        self.myList = myList
    }
    
    var id: NSManagedObjectID {
        myList.objectID
    }
    
    var name: String {
        myList.name ?? ""
    }
    
    var colorCode: String {
        myList.colorCode ?? ""
    
    }
}
