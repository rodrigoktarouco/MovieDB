//
//  ContentView.swift
//  MovieDB
//
//  Created by Rodrigo Kroef Tarouco on 25/03/21.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State var pesquisa: String = ""

    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("MovieDB").font(.system(size: 34)).bold()
                    Spacer(minLength: 0)
                }.padding()
                Spacer(minLength: 0)
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width: .infinity, height: 40)
                        .padding(.horizontal)
                        .overlay(
                            
                            HStack{
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .frame(width: 20, height: 20, alignment: .leading)
                                    .foregroundColor(.gray)
                                    .padding(.leading,10)
                                
                                TextField("Search a movie here", text: $pesquisa)
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .accentColor(.black)
                                    .padding(.trailing)
                            }.frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                        )
                }
                
                Spacer(minLength: 20)
                Divider()
                Spacer(minLength: 0)
                
                HStack{
                    Text("Now playing").font(.system(size: 20)).bold()
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    Text("See all").font(.footnote)
                }.padding()
                
                Spacer(minLength: 0)
                
                ScrollView(showsIndicators: false){
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach (1..<5) { index in
                                    VStack{
                                        Image("Crisis")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 160, height: 270, alignment: .center)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                       
                                        HStack{
                                            Text("Crisis")
                                                .font(.system(size: 12)).bold()
                                            Spacer()
                                        }
                                        
                                        Spacer(minLength: 1)
                                        
                                        HStack{
                                            Image(systemName: "star")
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 15, height: 15, alignment: .leading)
                                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                                .foregroundColor(.gray)
                                            Text("3/5")
                                                .font(.caption2)
                                                .foregroundColor(.gray)
                                            Spacer()
                                        }
                                    }.padding(.leading)
                                }
                            }
                        }
                    }
                    
                    Spacer(minLength: 15)
                    Divider().padding(.horizontal)
                    Spacer(minLength: 15)
                    
                    HStack{
                        Text("Popular Movies")
                            .font(.title3).bold()
                        Spacer()
                    }.padding(.leading)
                    
                    Spacer(minLength: 15)
                    
                    ForEach (1..<10) { index in
                        HStack{
                            VStack{
                                Image("Nobody")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 130, alignment: .leading)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            
                            VStack (alignment: .leading){
                                Text("Nobody")
                                    .font(.system(size: 16)).bold()
                                
                                Text("Hutch Mansell, a suburban dad, overlooked husband, nothing neighbor — a \"nobody.\" When two thieves break into his home one night, Hutch's unknown long-simmering rage is ignited and propels him on a brutal path that will uncover dark secrets he fought to leave behind.")
                                    .font(.system(size: 12))
                                    .foregroundColor(.gray)
                                    .padding(.trailing)
                                    .padding(.top,1)
                                
                                HStack{
                                    Image(systemName: "star")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 15, height: 15, alignment: .leading)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .foregroundColor(.gray)
                                    Text("5/5")
                                        .font(.caption2)
                                        .foregroundColor(.gray)
                                }
                            }.padding(.trailing)
                            Spacer()
                        }.padding(.leading)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

