//
//  ViewController.swift
//  FacileHack
//
//  Created by Cesare de Cal on 14/11/15.
//  Copyright © 2015 Team. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    let userLocation = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpLocationManager()
        updateUserLocation()
    }
    
    @IBAction func updateUserLocation() {
        locationManager.startUpdatingLocation()
    }
    
    func setUpLocationManager() {
        locationManager.delegate = self
        if CLLocationManager.authorizationStatus() == .NotDetermined {
            locationManager.requestAlwaysAuthorization()
        }
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

