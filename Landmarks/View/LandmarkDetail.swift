//
//  ContentView.swift
//  Landmarks
//
//  Created by nchkdxlq on 2019/6/15.
//  Copyright © 2019 luoquan. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130);
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    HStack {
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                            Spacer()
                            Text("California")
                                .font(.subheadline)
                        }
                    }
            }
            .padding(.all)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
#endif
