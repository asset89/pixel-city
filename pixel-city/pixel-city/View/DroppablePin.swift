//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Asset Ryskul on 10/5/20.
//  Copyright © 2020 Asset Ryskul. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var annotation: String
    init(coordinate: CLLocationCoordinate2D, annotation: String) {
        self.coordinate = coordinate
        self.annotation = annotation
        super.init()
    }
}
