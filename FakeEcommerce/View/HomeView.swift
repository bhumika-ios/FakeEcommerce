//
//  HomeView.swift
//  FakeEcommerce
//
//  Created by Bhumika Patel on 02/06/23.
//

import SwiftUI

struct HomeView: View {
    @State var pickedCategory: ProductListEndpoint = .electronics
    @State private var businessBasedOnType: [[Product]] = []
    @ObservedObject var productsList: ProductsListObject
    var body: some View {
        NavigationView{
            ZStack{
                //VStack(alignment: .leading){
                VStack{
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            CategoryView(choosenCategory: $pickedCategory)
                                .onChange(of: pickedCategory, perform: { value in
                                    DispatchQueue.main.async {
                                        productsList.loadProducts(with: pickedCategory)
                                    }
                                })
                        }
                            ScrollView{
                                if productsList.products != nil {
                                    ProductList(products: productsList.products!)
                                    //.environmentObject(cart)
                                } else {
                                    //                                LoadingView(isLoading: productsList.isLoading, error: productsList.error){ productsList.loadProducts(with: pickedCategory)
                                    //                                }
                                }
                            }
                        
                        .onAppear{
                            DispatchQueue.main.async {
                                productsList.loadProducts(with: pickedCategory)
                            }
                        }
                        Spacer(minLength: 80)
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
    @ViewBuilder
    func BusinessSectionView(_ business: [Product]) -> some View{
        VStack(alignment: .leading, spacing: 15){
            VStack{
                if let firstBusiness = business.first {
                    HStack{
                        Text(firstBusiness.category)
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
//    @ViewBuilder
//    func BusinessRowView(_ business: Product) -> some View{
//       // HStack(spacing: 15){
//            ZStack{
//          
//                      VStack(alignment: .leading){
//                          Button(action: {
//                             // isDetailOpen.toggle()
//                          }, label: {
//                              VStack(alignment: .leading){
//                                  Image(business.image)
//                                      .resizable()
//                                      .clipShape(RoundedRectangle(cornerRadius: 5))
//                                      .frame(width: 200, height: 102)
//                                      .offset(x:2, y:-1)
//                                  HStack{
//                                  Text(business.title)
//                                      .font(.system(size: 14))
//                                      .fontWeight(.bold)
//                                      .padding(.horizontal)
//                                
//                                      
//                                      Spacer()
//                                     
////                                      Text(business.price)
////                                              .font(.system(size: 12))
////                                              .padding(.horizontal,-5)
////
//                                      
//                                      .padding(.horizontal)
//                                  }
//                              }
//                              .foregroundColor(.black)
//                             
//          
//                          })
//          
//          
//                          .padding(8)
//                          .padding(.vertical,-6)
//                          .padding(.horizontal,-9)
//          
//                      }.background{
//                          RoundedRectangle(cornerRadius: 5)
//                              .stroke(.gray)
//                      }
//                     
//                      .frame(width: 201, height: 180)
//                      .padding()
//                      
//                      .font(.system(size: 12)).bold()
//                      .foregroundColor(.white)
//                      .clipShape(RoundedRectangle(cornerRadius: 15))
//                      .frame(width: 65, height: 25)
//                      .background(Color("Purple")).opacity(0.9)
//                      .offset(x:-67, y:2)
//               
//                  }
//      //  }
////            .fullScreenCover(isPresented: $isDetailOpen){
////                BusinessDetailView()
////            }
//       // .frame(maxWidth: .infinity, alignment: .leading)
//    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(productsList: ProductsListObject())
    }
}
