//
//  Untitled.swift
//  Cornfield
//
//  Created by Rishabh Dholakia on 10/5/24.
//
import CoreLocation
import SwiftUI

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private var locationManager = CLLocationManager()

    @Published var userLocation: CLLocation? = nil // Holds the user's location
    @Published var locationStatus: CLAuthorizationStatus?

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization() // Request location permission
    }

    // Start tracking location
    func startTrackingLocation() {
        locationManager.startUpdatingLocation()
    }

    // CLLocationManagerDelegate method for updating location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        userLocation = location // Update the user location
    }

    // Handle authorization changes
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        locationStatus = manager.authorizationStatus
    }

    // Stop tracking location if needed
    func stopTrackingLocation() {
        locationManager.stopUpdatingLocation()
    }
}
