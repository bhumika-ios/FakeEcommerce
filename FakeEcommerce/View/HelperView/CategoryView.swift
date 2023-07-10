//
//  CategoryView.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 02/06/23.
//

import SwiftUI

struct CategoryView: View {
    @Binding var choosenCategory: ProductListEndpoint
    var body: some View {
        VStack{
            HStack{
            ForEach(ProductListEndpoint.allCases, id: \.self){category in
               
                    Button(action: {
                        withAnimation(.spring()){
                            choosenCategory = category
                        }
                    }, label: {
                        Text(category.rawValue)
                            .font(.system(size: 12)).bold()
                            .foregroundColor(.black)
                            .padding(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    })
                }
            }
        }
    }
}

//struct CategoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryView(choosenCategory: .constant(.electronics))
//    }
//}
