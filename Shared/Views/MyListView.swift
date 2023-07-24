//
//  MyListView.swift
//  Reminders
//
//  Created by 김규리 on 2023/06/07.
//

import SwiftUI

struct MyListView: View {
    
    let myLists: [MyListViewModel]
    
    var body: some View {
        List(myLists) { myList in
            MyListCellView(vm: myList)
            
        }
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView(myLists: [])
    }
}
