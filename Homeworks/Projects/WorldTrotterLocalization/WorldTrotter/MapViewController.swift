//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by IvánMS on 29/05/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController{

    var mapView: MKMapView!
    override func loadView() {
        /* Se crea el objeto mapa  */
        mapView = MKMapView()
        /* Se configura como la vista del controlador */
        view = mapView
//        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        /* Se internacionalizan los strings */
        let standardString = NSLocalizedString("Standard", comment: "Standard map view")
        let satelliteString
            = NSLocalizedString("Satellite", comment: "Satellite map view")
        let hybridString = NSLocalizedString("Hybrid", comment: "Hybrid map view")
        let segmentedControl
            = UISegmentedControl(items: [standardString, satelliteString, hybridString])
        
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        segmentedControl.addTarget(self,action: #selector(MapViewController.mapTypeChanged(_:)),for: .valueChanged)
        
        /*Constrains para la vista, los comentados son los que dependen de la vista antecesor (view) */
//        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.topAnchor)
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor,constant: 8)
//        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
//        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        let margins = view.layoutMarginsGuide
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        view.addSubview(segmentedControl)
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
    }
    /*Mètodo que se lanza cuando el valor del segmented control cambia.*/
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }

    override func viewDidLoad() {
        print("MapViewController loaded its view.")
    }
}
