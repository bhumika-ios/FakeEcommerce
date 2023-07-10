//
//  ProductView.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 03/06/23.
//

import SwiftUI

struct ProductView: View {
    @State var pickedCategory: ProductListEndpoint
    @State private var businessBasedOnType: [[Product]] = []
   // @Binding var choosenCategory: ProductListEndpoint
    var body: some View {
        ScrollView{
            VStack{
                Category1View(choosenCategory: $pickedCategory)
                
            }
          
        }
        .offset(x:-130)
    }
    
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(pickedCategory: .electronics)
    }
}
struct Category1View: View {
    @Binding var choosenCategory: ProductListEndpoint
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
            ForEach(ProductListEndpoint.allCases, id: \.self){category in
               
//                    Button(action: {
//                        withAnimation(.spring()){
//                            choosenCategory = category
//                        }
//                    }, label: {
                        Text(category.rawValue)
                            .font(.system(size: 12)).bold()
                            .foregroundColor(.black)
                            .padding(8)
                           
//                    })
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        // prefix set limit business item display
//                        ForEach(){ business in
                           
//                            ProductListItemView(product: business)
                               
//                        }
                       
//                        .padding(.horizontal,-12)
                    }
                }
            }
        }
    }
}
