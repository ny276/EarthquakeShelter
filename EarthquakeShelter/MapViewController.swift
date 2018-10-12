//
//  MapViewController.swift
//  EarthquakeShelter
//
//  Created by D7703_17 on 2018. 10. 12..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
      
      @IBOutlet weak var mapView: MKMapView!
      @IBOutlet weak var segment: UISegmentedControl!
      
      var locationManager = ""
      override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
}
    
      @IBAction func segmentSelected(_ sender: Any) {
//            let center = locationManager.location?.coordinate
//
//            if segment.selectedSegmentIndex == 0 {
//                  let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//                  let region = MKCoordinateRegionMake(center!, span)
//                  mapView.setRegion(region, animated: true)
//                  //DustMapView.selectAnnotation(minDistAnno!, animated: true)
//
//
//            } else if segment.selectedSegmentIndex == 1 {
//                  let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//                  let region = MKCoordinateRegionMake(center!, span)
//                  mapView.setRegion(region, animated: true)
//                  //DustMapView.selectAnnotation(minDistAnno!, animated: true)
//
//
//            } else if segment.selectedSegmentIndex == 2 {
//                  let span = MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
//                  let region = MKCoordinateRegionMake(center!, span)
//                  mapView.setRegion(region, animated: true)
//                  //DustMapView.selectAnnotation(minDistAnno!, animated: true)
//            } else {
//                  let span = MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25)
//                  let region = MKCoordinateRegionMake(center!, span)
//                  mapView.setRegion(region, animated: true)
//                  //DustMapView.selectAnnotation(minDistAnno!, animated: true)
//            }
//      }
      }
}
