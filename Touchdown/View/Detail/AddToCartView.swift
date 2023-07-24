//
//  AddToCartView.swift
//  Touchdown
//
//  Created by Cristina on 2023-07-24.
//

import SwiftUI

struct AddToCartView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: BUTTON
        .padding(15)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

// MARK: - PREVIEW
struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
