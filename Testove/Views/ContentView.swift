//
//  ContentView.swift
//  Testove
//
//  Created by Artem Leschenko on 15.05.2023.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selected1 = 1
    @State var selected2 = 1
    
    
    var body: some View {
        
            TabView {
                ForEach(1...5, id:\.self) {_ in
                    NavigationView {
                        VStack(spacing: 0) {
                            ZStack {
                                Text("Title")
                                    .font(.title3)
                                    .bold()
                                HStack {
                                    Spacer()
                                    Image(systemName: "arrow.down.circle")
                                        .foregroundColor(.blue)
                                        .font(.custom("", size: 23))
                                        .padding(.trailing, 18)
                                }
                            }.padding(.bottom, 10)
                            Divider()
                            ScrollView {
                                
                                
                                VStack(spacing: 0) {
                                    HStack {
                                        Text("Big Title")
                                            .font(.title)
                                            .padding(.top)
                                            .fontWeight(.medium)
                                        Spacer()
                                    }
                                        NavigationLink {
                                            InfoView()
                                        } label: {
                                            FileDock(smallText: "Some Text", type: .hard)
                                                .padding(.top)
                                        }
                                        
                                        Divider()
                                        NavigationLink {
                                            InfoView()
                                        } label: {
                                            FileDock(smallText: "Some Text", type: .hard)
                                        }
                                        
                                        Divider()
                                        
                                        NavigationLink {
                                            InfoView()
                                        } label: {
                                            FileDock(smallText: "Some Text", type: .hard)
                                                
                                        }
                                        Spacer()
                                    }
                                    .customVStack
                                    
                                VStack(spacing: 0) {
                                    HStack {
                                        Text("Big Title")
                                            .font(.title)
                                            .padding(.top)
                                            .fontWeight(.medium)
                                        Spacer()
                                    }
                                        NavigationLink {
                                            InfoView()
                                        } label: {
                                            FileDock(smallText: "Some Text", type: .eazy)
                                                .padding(.top)
                                        }
                                        
                                        Divider()
                                        NavigationLink {
                                            InfoView()
                                        } label: {
                                            FileDock(smallText: "Some text really long text text text text text", type: .eazy)
                                        }
                                        Divider()
                                        
                                        NavigationLink {
                                            InfoView()
                                        } label: {
                                            FileDock(smallText: "Some text really long text text text text text", type: .eazy)
                                                .padding(.bottom)
                                        }
                                    }
                                    .customVStack
                            }
                            Divider()
                        }
                    }
                        
                    }.tabItem { VStack {
                            Label(
                                title: { Text("Tab") },
                                icon: {
                                    Image(systemName: "folder")
                                        .symbolRenderingMode(.multicolor)
                                }
                            )
                        } }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

