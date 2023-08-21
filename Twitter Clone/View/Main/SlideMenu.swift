//
//  SlideMenu.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 21/08/23.
//

import SwiftUI

struct SlideMenu: View {
    
    @State var show = false
    
    struct MenuItem: Hashable {
        var title: String
        var image: String
    }
    
    var menu: [MenuItem] = [MenuItem(title: "Profile", image: "person"), MenuItem(title: "Lists", image: "list.bullet"), MenuItem(title: "Topics", image: "rectangle.3.group.bubble.left"), MenuItem(title: "Bookmarks", image: "bookmark"), MenuItem(title: "Moments", image: "sparkles")]
    var edges = UIApplication.edges
    
    var width = UIScreen.main.bounds.width
    
    var body: some View {
    
        VStack {
            HStack (spacing: 0) {
                VStack (alignment: .leading, content: {
                    
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    HStack {
                        VStack (alignment: .leading, spacing: 5){
                            Text("Shamsi ")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("@shamsi")
                                .foregroundColor(.gray)
                            
                            HStack (spacing: 20, content: {
                                FollowView(count: 100, title: "Following")
                                FollowView(count: 400, title: "Follower")
                            }) .padding(.top, 10)
                            
                            Divider()
                                .padding(.top, 10)
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            withAnimation {
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName:  show ? "chevron.up" : "chevron.down" )
                                .foregroundColor(Color("bg"))
                        })
                    }
                    
                    
                    VStack (alignment: .leading, content: {
                        ForEach(menu, id:\.self) { item in
                            MenuButton(title: item.title, image: item.image)
                        }
                        
                        Divider()
                            .padding(.top)
                        
                        Button(action: {
                            
                        }, label: {
                            MenuButton(title: "Twitter Ads", image: "waveform.and.mic")
                            
                        })
                        
                        Divider()
                        
                        Button(action: {
                            
                        }, label: {
                            MenuButton(title: "Settings & Privacy", image: "gearshape")
                            
                        }) .padding(.top, 10)
                        
    
                        Button(action: {
                            
                        }, label: {
                            MenuButton(title: "Help Center", image: "questionmark.circle")
                            
                        })  .padding(.top, 5)
                        
                        Spacer(minLength: 0)
                        Divider().padding(.bottom)
                        
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "lightbulb"
                                ).resizable()
                                    .frame(width: 25, height: 25)
                                .foregroundColor(Color("bg"))
                                    
                            })
                            
                            Spacer(minLength: 0)
                            
                            Image(systemName: "qrcode"
                            ).resizable()
                                .frame(width: 50, height: 50)
                            .foregroundColor(Color("bg"))
                        }
                        
                        
                        
                    })
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 1)
                    
                    
                    VStack(alignment: .leading, content: {
                        Button(action: {
                            
                        }, label: {
                            Text("Create new account")
                                .foregroundColor(Color("bg"))
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Add an existing account")
                                .foregroundColor(Color("bg"))
                        })
                        
                        Spacer(minLength: 0)
                    })
                    .opacity(!show ? 1 : 0)
                    .frame(height: !show ? nil : 1)
                })
                .padding(.horizontal, 20)
                .padding(.top, edges.top == 0 ? 15 : edges.top)
                .padding(.bottom, edges.bottom == 0 ? 15 : edges.bottom)
                .frame(width: width - 90)
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
                
            }
        }
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu()
    }
}
