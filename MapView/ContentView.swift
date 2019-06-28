//
//  ContentView.swift
//  MapView
//
//  Created by Edy on 6/28/19.
//  Copyright © 2019 AppMillers. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView : UIViewRepresentable {
    
    // creates and returns an empty
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    // sets the map view’s region to the correct coordinates to center the map on Apple’s headquarters
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 37.3318, longitude: -122.0312)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif








