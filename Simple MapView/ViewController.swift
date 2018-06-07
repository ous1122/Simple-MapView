//
//  ViewController.swift
//  Simple MapView
//
//  Created by D7703_22 on 2018. 6. 7..
//  Copyright © 2018년 s22dfg. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 위도, 경도 설정
        // 동의과학대학교
        // 부산광역시 부산진구 양정동 429-19
        // 35.165999, 129.07543
        
        let center = CLLocationCoordinate2D (latitude: 35.165999, longitude: 129.07543)
        
        // 반경
        let span = MKCoordinateSpan(latitudeDelta: 0.009, longitudeDelta: 0.009)
        
        // region
        let region = MKCoordinateRegion(center: loc, span: span)
        
        // MapKit에 설정
        myMapView.setRegion(region, animated: true)
        
        // annotation 설정
        let anno = MKPointAnnotation()
        anno.coordinate = loc
        anno.title = "DIT 동의과학대학교"
        anno.subtitle = "내 꿈이 자라는 곳"
        myMapView.addAnnotation(anno)
        
    }

    


}

