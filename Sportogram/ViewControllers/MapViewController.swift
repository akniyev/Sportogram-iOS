//
//  MapViewController.swift
//  Sportogram
//
//  Created by Hasan Akniyev on 25/09/2017.
//  Copyright © 2017 Hasan Akniyev. All rights reserved.
//

import UIKit
import MapKit

extension MapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is GymAnnotation {
            let annotationView = GymAnnotationView(annotation: annotation, reuseIdentifier: "Gym")
            annotationView.canShowCallout = true
            
            let badge = UILabel()
            badge.text = "\((annotationView.annotation as? GymAnnotation)?.count ?? 0)"
            badge.frame = annotationView.bounds
            
            annotationView.addSubview(badge)
            
            return annotationView
        } else {
            return nil
        }
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        self.performSegue(withIdentifier: "showGymsOnMap", sender: self)
        mapView.deselectAnnotation(view.annotation, animated: true)
    }
}

class MapViewController : UIViewController, CLLocationManagerDelegate {
    var locationManager: CLLocationManager!
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func btnFindMeTouched(_ sender: Any) {
        determineCurrentLocation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let annotation1 = GymAnnotation(coordinate: CLLocationCoordinate2DMake(42.9661, 47.5126), title: "Test gym", subtitle: "test", count: 2)
        let annotation2 = GymAnnotation(coordinate: CLLocationCoordinate2DMake(42.96696, 47.513), title: "Test gym", subtitle: "test", count: 2)
        let annotation3 = GymAnnotation(coordinate: CLLocationCoordinate2DMake(42.96646, 47.511), title: "Test gym", subtitle: "test", count: 2)
        let annotation4 = GymAnnotation(coordinate: CLLocationCoordinate2DMake(42.9661, 47.5120), title: "Test gym", subtitle: "test", count: 2)
        
        mapView.addAnnotation(annotation1)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        initLocationManager()
    }
    
    func initLocationManager() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
    }
    
    var locationUpdatedCounter = 0
    let maxLocationUpdates = 2
    
    func determineCurrentLocation() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
        self.locationUpdatedCounter = 0
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation: CLLocation = locations[0] as CLLocation
        
        if locationUpdatedCounter > maxLocationUpdates {
            manager.stopUpdatingLocation()
        }
        
        locationUpdatedCounter += 1
        
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
        
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState) {
        print("Moved")
    }
}
