//
//  Home.swift
//  PlaygroundCoreLocation (iOS)
//
//  Created by Liu, Bojun on 2021-03-24.
//

import SwiftUI
import CoreLocation

struct Home: View {
    @StateObject var mapData = MapViewModel()
    // Location Manager
    @State var locationManager = CLLocationManager()
    
     
    var body: some View {
        ZStack {
            // MapView...
            MapView()
                .environmentObject(mapData)
                .ignoresSafeArea(.all, edges: .all)
            
        }
        .onAppear(perform: {
            
            // Setting Delegate
            
            locationManager.delegate = mapData
            locationManager.requestWhenInUseAuthorization()
            
        })
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
