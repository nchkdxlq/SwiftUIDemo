//
//  MapView.swift
//  Landmarks
//
//  Created by nchkdxlq on 2019/6/15.
//  Copyright © 2019 luoquan. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    typealias UIViewType = MKMapView
    
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }

    
//    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MapView.UIViewType {
//        MKMapView(frame: .zero)
//    }
//
//    func updateUIView(_ uiView: MapView.UIViewType, context: UIViewRepresentableContext<MapView>) {
//        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
//        let region = MKCoordinateRegion(center: coordinate, span: span)
//        uiView.setRegion(region, animated: true)
//    }
    
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
#endif
