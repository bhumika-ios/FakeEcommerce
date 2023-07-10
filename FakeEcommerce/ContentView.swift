//
//  ContentView.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 02/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HomeView(productsList: ProductsListObject())
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
