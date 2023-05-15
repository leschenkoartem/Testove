//
//  FileDock.swift
//  Testove
//
//  Created by Artem Leschenko on 15.05.2023.
//

import SwiftUI

struct FileDock: View {
    var smallText: String
    var mainText: String = "Some Title"
    @State var isPressed = false
    var type: TypeFileView
    
    var body: some View {
        
        HStack {
            Image("ImageFile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(mainText)
                    .font(.title3)
                    .fontWeight(.medium)
                if isPressed && type == .hard {
                    ProgressView(value: 0.5)
                }
                Text(smallText)
                    .font(.caption2)
                    .opacity(0.5)
                    .multilineTextAlignment(.leading)
            }.frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 80)
            
            Spacer()
            
            if isPressed || type == .eazy {
                Text(Image(systemName: "chevron.right"))
                    .padding(.leading, 40)
                    .opacity(0.3)
            } else {
                ///Зроблено не через батон задля анімації без "мигання"
                Text("Action")
                    .font(.title2)
                    .foregroundColor(.blue)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 22)
                    .background(Color(.systemGray5))
                    .cornerRadius(24)
                    .onTapGesture {
                        withAnimation {
                            isPressed.toggle()
                        }
                    }
            }
        }
            
    }
}

struct FileDock_Previews: PreviewProvider {
    static var previews: some View {
        FileDock(smallText: "Some text really long text text text text", type: .eazy)
    }
}

enum TypeFileView {
    case eazy
    case hard
}
