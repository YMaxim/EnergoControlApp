//
//  MapViewController.swift
//  Energo Control
//
//  Created by Admin on 10.12.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2DMake(49.26444, 28.49336)
        let span = MKCoordinateSpanMake(0.03, 0.03)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "LLC\"Energo Control\"/ООО\"Энерго Контроль\""
        annotation.subtitle = "energy meters/счетчики электроэнергии"
        mapView.addAnnotation(annotation)
    }
}
