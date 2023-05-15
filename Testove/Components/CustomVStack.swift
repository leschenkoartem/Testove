//
//  CustomVStack.swift
//  Testove
//
//  Created by Artem Leschenko on 16.05.2023.
//

import Foundation
import SwiftUI

extension View {
    var customVStack: some View {
        self
            .foregroundColor(Color(.label))
            .padding()
            .navigationBarTitleDisplayMode(.large)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .frame(height: 300)
            .navigationViewStyle(StackNavigationViewStyle())
            .cornerRadius(16)
            .padding()
            .shadow(radius: 12)
    }
}
