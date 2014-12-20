//
//  ViewController.swift
//  DemoProject
//
//  Created by Артем Шапет on 17.12.14.
//  Copyright (c) 2014 Артем Шапет. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.showsUserLocation = true
        
        var location = CLLocationCoordinate2D(latitude: 32.074573, longitude: 34.79181)
        var span = MKCoordinateSpanMake(0.1, 0.1)
        var region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        var annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Azrieli Center"
        annotation.subtitle = "Super Azrieli"
        //annotation.
        
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

