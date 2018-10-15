//
//  MapViewController.swift
//  EarthquakeShelter
//
//  Created by D7703_17 on 2018. 10. 12..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
      
      @IBOutlet weak var mapView: MKMapView!
      @IBOutlet weak var segment: UISegmentedControl!
      
      var locationManager = CLLocationManager()
      var myViewController = MapViewController()
      
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
       // 초기 맵 region 설정
      func zoomToRegion() {
            
            print("zoom to Location")
            // 부산지도 구글 중심정 35.163246, 129.066297
            let location = CLLocationCoordinate2D(latitude: 35.118002, longitude: 129.121017)
            let span = MKCoordinateSpan(latitudeDelta: 0.27, longitudeDelta: 0.27)
            let region = MKCoordinateRegion(center: location, span: span)
            mapView.setRegion(region, animated: true)
            
            // anno test
            // add annotaton
            //        let annotation = MKPointAnnotation()
            //        annotation.coordinate = location
            //        annotation.title = "동의과학대학교"
            //        annotation.subtitle = "DIT"
            //        DustMapView.addAnnotation(annotation)
            //        DustMapView.delegate = self
      }
       // 현재 위치정보 트랙킹(currnet location tracking)
      func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            let userLocation: CLLocation = locations[0]
            
            let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
            print("center = \(center)")
            
            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.21, longitudeDelta: 0.21))
            
           mapView.setRegion(region, animated: true)
            
      }
}
