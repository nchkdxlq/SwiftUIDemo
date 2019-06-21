//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by nchkdxlq on 2019/6/15.
//  Copyright © 2019 luoquan. All rights reserved.
//

import SwiftUI

//struct ContentView : View {
//    var body: some View {
//        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
//            Image(systemName: "phone")
//            VStack(alignment: .leading) {
//                Text("Room")
//                Text("20 people")
//                    .font(.subheadline)
//                    .foregroundColor(.secondary)
//            }
//        }
//    }
//}



@propertyDelegate struct MyState<T> {

    var value: T
    
    init(initialValue value: T) {
        self.value = value
    }
}


struct ContentView: View {
    
    @State var fovariteOnly = false
    @MyState var test = false
    
    var body: some View {
        
        VStack() {
            Toggle(isOn: $fovariteOnly) {
                Text("fovariteOnly")
            }
            if fovariteOnly {
                Text("fovariteOnly")
            } else {
                Text("SwiftUI")
            }
        }
    }
}


#if false

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            Text("Joshua Tree National Park")
                .font(.subheadline)
        }
    }
}

#endif


var body: some View {
    Image("turtlerock")
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
