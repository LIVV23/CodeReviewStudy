//
//  MyListCellView.swift
//  Reminders
//
//  Created by 김규리 on 2023/06/07.
//

import SwiftUI

struct MyListCellView: View {
    
    let vm: MyListViewModel

    
    var body: some View {
        HStack {
            Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                .foregroundColor(Color.colorFromHex(vm.colorCode))
            Text(vm.name)
            Spacer()
        }
    }
}

