//
//  ContentView.swift
//  Landmarks
//
//  Created by 李懿哲 on 2019/7/18.
//  Copyright © 2019 犇犇科技. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Turtle Rock")
            .font(.title)
            .foregroundColor(Color.black)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
