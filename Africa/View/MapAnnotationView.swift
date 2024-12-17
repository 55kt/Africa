//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Vlad on 17/12/24.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - Preview
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accent)
                .frame(width: 54, height: 54, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Circle()
                .stroke(Color.accent, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }// ZStack
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }// Body
}// View

// MARK: - Preview
#Preview {
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    MapAnnotationView(location: locations.randomElement()!)
}
