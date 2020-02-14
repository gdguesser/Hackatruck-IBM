//
//  ViewController.swift
//  aulaMapKitUniville
//
//  Created by Guesser on 13/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var meuMapa: MKMapView!
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        meuMapa.showsUserLocation = true
        addGesture()
        setupLocationManager()
        
    }
    
    
    
    func setupLocationManager() {
        
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.count > 0 {
            if let location = locations.last {
                userLocation = location
                print("A localização do usuário é \(userLocation.coordinate)")
            }
        }
    }
    
    @objc func addAnnotationToMap(gestureRecognizer: UIGestureRecognizer) {
        
        let touchPoint = gestureRecognizer.location(in: meuMapa)
        let newCoordinate: CLLocationCoordinate2D = meuMapa.convert(touchPoint, toCoordinateFrom: meuMapa)
        let newAnnotation = MKPointAnnotation()
        
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "Guesser"
        newAnnotation.subtitle = String(describing: "Latitude \(newCoordinate.latitude) , Longitude \(newCoordinate.longitude)")
        
        meuMapa.addAnnotation(newAnnotation)
    }
    
    func addGesture() {
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        longPress.minimumPressDuration = 0.8
        
        meuMapa.addGestureRecognizer(longPress)
        
        
    }
    
    
}

