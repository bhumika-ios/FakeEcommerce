//
//  ShowProduct.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 03/06/23.
//

import SwiftUI

struct ShowProduct: View {
//    var cat: [String: [Product]]{
//        Dictionary(grouping:Category , by: { $0.category.rawValue})
//    }
    @State private var businessBasedOnType: [[Product]] = []
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                LazyVStack{
                    VStack{
                        //  Section{
                        ForEach(businessBasedOnType, id:\.self) { business in
                        
                                BusinessSectionView(business)
                          
                          
                            //   }
                        }
                        // .offset(y:220)
                    }
                    
                }
            }
        }
    }
    @ViewBuilder
    func BusinessSectionView(_ business: [Product]) -> some View{
        VStack(alignment: .leading, spacing: 15){
            VStack{
                if let firstBusiness = business.first {
                    HStack{
                        Text(firstBusiness.cat.rawValue)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.vertical,-8)
                        Spacer()
                        NavigationLink{
                      
                        } label: {
                            HStack{
                                Text("View All")
                                    .font(.system(size: 12))
                                    .fontWeight(.bold)
                                Image(systemName: "arrow.right.circle.fill")
                            }
                            .foregroundColor(Color("Purple"))
                        }
                       
                    }
                }
            }
            .padding(.vertical,-16)
//            ScrollView(.horizontal, showsIndicators: false){
//                HStack{
//                    // prefix set limit business item display
//                    ForEach(business.prefix(4)){ business in
//
//                        BusinessRowView(business)
//
//                    }
//
//                    .padding(.horizontal,-12)
//                }
//            }
            .padding(.vertical,-36)
        }
        .padding(15)
        .padding(.vertical,-2)
    }
}

struct ShowProduct_Previews: PreviewProvider {
    static var previews: some View {
        ShowProduct()
    }
}
