//
//  UserData.swift
//  Landmarks
//
//  Created by 李懿哲 on 2019/7/25.
//  Copyright © 2019 犇犇科技. All rights reserved.
//

import SwiftUI
import Combine

class UserData: BindableObject {
    let willChange = PassthroughSubject<Void, Never>()
    
    var showFavoritesOnly = false {
        willSet {
            willChange.send()
        }
    }
    var landmarks = landmarkData {
           willSet {
               willChange.send()
           }
       }
}
