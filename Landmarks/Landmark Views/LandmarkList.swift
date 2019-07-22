//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 李懿哲 on 2019/7/20.
//  Copyright © 2019 犇犇科技. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone SE"], id: \.self) { deviceName in
            LandmarkList() .previewDevice(PreviewDevice.init(rawValue: deviceName))
        }
    }
}
#endif
