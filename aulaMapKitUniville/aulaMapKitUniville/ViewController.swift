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
    var userManager = CLLocation()
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    func setupLocationManager() {
        
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        
    }
    
    
}

