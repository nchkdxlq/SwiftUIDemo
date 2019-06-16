//
//  LandmarkList.swift
//  Landmarks
//
//  Created by nchkdxlq on 2019/6/16.
//  Copyright © 2019 luoquan. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationButton(destination: LandmarkDetail()) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
