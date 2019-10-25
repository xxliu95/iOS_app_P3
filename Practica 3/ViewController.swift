//
//  ViewController.swift
//  Practica 3
//
//  Created by Xinxin Liu on 24/10/2019.
//  Copyright © 2019 Xinxin Liu. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segCtrl: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.sendActions(for: .valueChanged)
        segCtrl.sendActions(for: .valueChanged)
    }


    @IBAction func updateCibeles(_ sender: UIButton) {
        msgLabel.text = "CIBELES"
        
        let center = CLLocationCoordinate2D(latitude: 40.41925, longitude: -3.69327)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)    }
    
    @IBAction func updateTeleco(_ sender: UIButton) {
        msgLabel.text = "TELECO"
        
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateTiananmen(_ sender: UIButton) {
        msgLabel.text = "TIAN AN MEN 天安门"
        
        let center = CLLocationCoordinate2D(latitude: 39.90668, longitude: 116.391331)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func setMapType(_ sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        
        switch index {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        case 2:
            mapView.mapType = .hybrid
        default:
            mapView.mapType = .standard
        }
    }
}

