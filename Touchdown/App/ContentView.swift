//
//  ContentView.swift
//  Touchdown
//
//  Created by Cristina on 2023-07-18.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.connectedScenes
                        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                        .first { $0.isKeyWindow }?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
               
                ScrollView {
                    VStack(spacing: 0){
                            FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 10)
                        
                            CategoryGridView()
                          
                            FooterView()
                            .padding(.horizontal)
                    } //: VSTACK
                } //: SCROLL
        } //: VSTACK
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
     }
    }


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
