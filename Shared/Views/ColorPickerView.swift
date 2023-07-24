//
//  ColorPickerView.swift
//  Reminders
//
//  Created by 김규리 on 2023/06/07.
//

import SwiftUI

struct ColorPickerView: View {
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .pink]
    @Binding var selectedColor: Color
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Image(systemName: selectedColor == color ? Constants.Icons.recordCircleFill: Constants.Icons.circleFill)
                    .foregroundColor(color)
                    .clipShape(Circle())
                    .onTapGesture {
                        print(color)
                        selectedColor = color
                    }
            }
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedColor: .constant(.green))
    }
}
