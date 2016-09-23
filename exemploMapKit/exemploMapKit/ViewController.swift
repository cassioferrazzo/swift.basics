//
//  ViewController.swift
//  exemploMapKit
//
//  Created by Student on 9/21/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class ViewController: UIViewController {

    var locationManager =  CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.checkLocationAuthorizationStatus()
    }

    func checkLocationAuthorizationStatus(){
        
        if CLLocationManager.authorizationStatus() != .AuthorizedWhenInUse {
            self.locationManager.requestWhenInUseAuthorization()
            
        }
        self.locationManager.startUpdatingLocation()
    }
}

