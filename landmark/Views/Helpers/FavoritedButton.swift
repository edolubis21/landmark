//
//  FavoritedButton.swift
//  landmark
//
//  Created by Rekeningku on 01/04/22.
//

import SwiftUI

struct FavoritedButton: View {
    
    @Binding var isSet : Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoritedButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoritedButton(isSet: .constant(true))
    }
}
