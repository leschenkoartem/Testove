//
//  InfoView.swift
//  Testove
//
//  Created by Artem Leschenko on 16.05.2023.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selected1 = 1
    @State var selected2 = 1
    
    var body: some View {
        Divider()
        ScrollView {
            VStack {
                FileDock(smallText: "Import music from your files", type: .eazy)
                Divider()
                
                FileDock(smallText: "Some text really long text text text text text", type: .eazy)
                Divider()
                
                FileDock(smallText: "Some text really long text text text text text", type: .eazy)
                Divider()
                
                FileDock(smallText: "Some text", type: .eazy)
            }
        }.padding()
            .navigationTitle("Navigation Title")
            .navigationBarItems(trailing: HStack {
                
                Menu {
                    Section {
                        Button {
                            print("1")
                        } label: {
                            HStack {
                                Text("Action")
                                Spacer()
                                Image(systemName: "folder")
                            }
                        }
                    }
                    
                    Section {
                        Picker(selection:  $selected1, label: Text("Sorting options")) {
                            Text("Item 1").tag(1)
                            Text("Item 2").tag(2)
                            Text("Item 3").tag(3)
                        }
                    }
                    
                    Section {
                        Picker(selection:  $selected2, label: Text("Sorting options")) {
                            HStack {
                                Text("Action")
                                Spacer()
                                Image(systemName: "list.bullet")
                            }.tag(1)
                            HStack {
                                Text("Action")
                                Spacer()
                                Image(systemName: "square.grid.2x2")
                            }.tag(2)
                        }
                    }
                    
                    Section {
                        Button(role: .destructive) {
                            self.presentationMode.wrappedValue.dismiss()
                        } label: {
                            HStack {
                                Text("Destruct")
                                Spacer()
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                            }
                        }
                    }
                    
                } label: {
                    Text("Action")
                }

                Button {
                    print("...")
                } label: {
                    Image(systemName: "ellipsis.circle")
                }

            } )
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
