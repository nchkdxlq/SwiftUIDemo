//
//  LandmarkList.swift
//  Landmarks
//
//  Created by nchkdxlq on 2019/6/16.
//  Copyright © 2019 luoquan. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
//    @State var showFavoritesOnly = false
    
    @EnvironmentObject var userData: UserData
    
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone XS Max"].identified(by: \.self)) { deviceName in
            LandmarkList()
                .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
