//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Cristina on 2023-07-18.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack{
          Button(action: {}, label: {
            Image(systemName: "magnifyingglass")
                  .font(.title)
                  .foregroundColor(.black)
          }) //: BUTTON
            
          Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                } //: ZSTACK
            }) //: BUTTON
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
