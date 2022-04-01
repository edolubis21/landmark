//
//  LandmarkList.swift
//  landmark
//
//  Created by Rekeningku on 01/04/22.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData : ModelData
    @State private var showfavoriteOnly = true
    
    var filteredLandmarks : [Landmark] {
        modelData.landmarks.filter{
            landmark in (!showfavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
           NavigationView {
               List {
                   Toggle(isOn: $showfavoriteOnly) {
                       Text("Favorites only")
                   }
                   ForEach(filteredLandmarks) { landmark in
                       NavigationLink {
                           LandmarkDetail(landmark: landmark)
                       } label: {
                           LandmarkRow(landmark: landmark)
                       }
                   }
                   .navigationTitle("Landmarks")
               }
           }
       }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
