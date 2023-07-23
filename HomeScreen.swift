//
//  ContentView.swift
//  Reminders
//
//  Created by 김규리 on 2023/06/07.
//

import SwiftUI

struct HomeScreen: View {
    @State private var isPresented: Bool = false
    @StateObject private var vm: HomeViewModel
    
    init(vm: HomeViewModel) {
        _vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        NavigationView{
            VStack {
                
                MyListView(myLists: vm.myLists)
                Divider()
                Button("Add List") {
                    isPresented = true
                }.frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
                    .sheet(isPresented: $isPresented) {
                        AddNewListView {
                            newListName, colorCode in
                            vm.saveNewList(newListName: newListName, colorCode: colorCode)
                        }
                    }
            }
            .navigationTitle("My Lists")
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = HomeViewModel()
        HomeScreen(vm: vm)
    }
}
