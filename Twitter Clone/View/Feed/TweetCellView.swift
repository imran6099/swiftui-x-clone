//
//  TweetCellView.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 21/08/23.
//

import SwiftUI

struct TweetCellView: View {
    let sampleText = "Some random tweet....showing how implement"
    let tweet: String
    let tweetimage: String?
    
    var body: some View {
        VStack {
            HStack (alignment: .top, spacing: 10, content: {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack (alignment: .leading, spacing: 10){
                    Text("Shamsi ")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    +
                    Text("@shamsi")
                        .foregroundColor(.gray)
                    
                    Text (tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetimage {
                        GeometryReader { proxy in
                            Image(image).resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                              
                        } .frame(height: 250)
                    }
                }
                
               
                
            })
            
            // Cell Bottom
            
            HStack (spacing: 20) {
                
                // Retweet
                Button(action: {
                }, label: {
                    Image(systemName: "message").resizable().frame(width: 16, height: 16).padding().foregroundColor(.gray)
                }
                )
                
                // Retweet
                Button(action: {
                }, label: {
                    Image(systemName: "arrow.triangle.2.circlepath").resizable().frame(width: 16, height: 16).padding().foregroundColor(.gray)
                }
                )
                
                // Like Button
                Button(action: {
                }, label: {
                    Image(systemName: "heart.fill").resizable().frame(width: 16, height: 16).padding().foregroundColor(.gray)
                }
                )
                
                // Upload
                Button(action: {
                }, label: {
                    Image(systemName: "square.and.arrow.up").resizable().frame(width: 16, height: 16).padding().foregroundColor(.gray)
                }
                )
                
            } .padding(.top, 4)
                .padding(.leading, 30)
        }
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: "Some random tweet....showing how implement", tweetimage: nil)
    }
}
