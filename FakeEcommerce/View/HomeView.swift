//
//  HomeView.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 02/06/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                //VStack(alignment: .leading){
                    Text("hello")
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
