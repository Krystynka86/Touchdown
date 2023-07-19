//
//  TitleViewView.swift
//  Touchdown
//
//  Created by Cristina on 2023-07-19.
//

import SwiftUI

struct TitleViewView: View {
    // MARK: - PROPERTIES
    
    var title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

// MARK: - PREVIEW
struct TitleViewView_Previews: PreviewProvider {
    static var previews: some View {
        TitleViewView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
