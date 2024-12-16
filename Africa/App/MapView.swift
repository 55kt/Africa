//
//  MapView.swift
//  Africa
//
//  Created by Vlad on 13/12/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Properties
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - Body
    var body: some View {
        // MARK: - No1 Basic map
//        Map(coordinateRegion: $region)
        
        // MARK: - No2 Advanced map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            // (A) PIN: Old style (always static)
//            MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) MARKER: New style (always static)
//            MapMarker(coordinate: item.location, tint: .accent)
            
            // (C) Custom basic annotation (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }// MapAnnotation
        })// Map
    }// Body
}// View

// MARK: - Preview
#Preview {
    MapView()
}
