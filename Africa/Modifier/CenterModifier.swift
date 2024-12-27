//
//  CenterModifier.swift
//  Africa
//
//  Created by Vlad on 23/12/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }//HStack
    }// View
}// Struct
