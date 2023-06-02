//
//  HomeView.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 02/06/23.
//

import SwiftUI

struct HomeView: View {
    @State var pickedCategory: ProductListEndpoint = .electronics
    var body: some View {
        NavigationView{
            ZStack{
                //VStack(alignment: .leading){
                VStack{
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            CategoryView(choosenCategory: $pickedCategory)
                        }
                    }
                    .padding()
                    Spacer()
                    
                }
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                            }) {
                                Label("", systemImage: "person.circle")
                            }
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                                  Button(action: {
                                   
                                  }) {
                                    Label("", systemImage: "arrow.clockwise")
                                  }
                                }
                    }
                //}
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
