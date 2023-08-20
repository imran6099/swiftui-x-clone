//
//  Home.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 20/08/23.
//

import SwiftUI

struct Home: View {
    @State var isShowCreateTweet = false
    @State var text =  ""
    
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    FeedView().tabItem {
                        Image(systemName: "house")
                    }
                    .tag(0)
                    SearchView().tabItem {
                        Image(systemName: "magnifyingglass.circle")
                    }.tag(1)
                    NotificationView().tabItem {
                        Image(systemName: "bell")
                    }.tag(2)
                    MessagesView().tabItem {
                        Image(systemName: "message")
                    }.tag(3)
                }
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            self.isShowCreateTweet.toggle()
                        }, label: {
                            Image(systemName: "bird").renderingMode(
                                .template).resizable().frame(width: 20, height: 20).padding().background(Color("bg")).foregroundColor(.white)
                                .clipShape(Circle())
                        }
                        )
                    }.padding(.trailing, 25)
                }.padding(.bottom, 75)
            }.sheet(isPresented: $isShowCreateTweet, content: {
                CreateTweetView(text: text)
            })
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
