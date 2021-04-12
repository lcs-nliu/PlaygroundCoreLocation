//
//  MapView.swift
//  PlaygroundCoreLocation (iOS)
//
//  Created by Liu, Bojun on 2021-03-24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

    @EnvironmentObject var mapData: MapViewModel
    
    func makeCoordinator() -> Coordinator {
        return MapView.Coordinator()

    }
    
    func makeUIView(context: Context) -> MKMapView {
        let view = mapData.mapView
        view.showsUserLocation = true
        view.delegate = context.coordinator
        
        return view
        
    }
    
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        
    }
}
