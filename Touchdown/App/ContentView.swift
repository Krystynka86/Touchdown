//
//  ContentView.swift
//  Touchdown
//
//  Created by Cristina on 2023-07-18.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
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
                            
                                TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridlayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                } //: LOOP
                            }) // : GRID
                                .padding(.horizontal, 15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                              
                                FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    } //: SCROLL
            } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
    } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
     }
    }


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
            
    }
}
