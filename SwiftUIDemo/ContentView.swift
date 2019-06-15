//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by nchkdxlq on 2019/6/15.
//  Copyright © 2019 luoquan. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Image(systemName: "phone")
            VStack(alignment: .leading) {
                Text("Room")
                Text("20 people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
