//
//  CreditView.swift
//  Africa
//
//  Created by Vlad on 23/12/24.
//

import SwiftUI

struct CreditView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright © AlbanianDevelopers
    All right reserved
    Better Apps ♡ Less Code
    """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }// VStack
        .padding()
        .opacity(0.4)
    }// Body
}// View

// MARK: - Preview
#Preview {
    CreditView()
}
