//
//  MapViewModel.swift
//  PlaygroundCoreLocation (iOS)
//
//  Created by Liu, Bojun on 2021-03-24.
//

import SwiftUI
import MapKit
import CoreLocation


// All Map Data Goes Here

class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var mapView = MKMapView()
    
    // Region
    
    @Published var region : MKCoordinateRegion!
    
    
    // Alert
    
    @Published var permissionDenied = false
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        switch manager.authorizationStatus {
        case .denied:
            // Alert...
            permissionDenied.toggle()
        case .notDetermined:
            // Requesting...
            manager.requestWhenInUseAuthorization()
        default:
            ()
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // Error
        print(error.localizedDescription)
    }
}
