//
//  FeedView.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 20/08/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 18) {
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: "Some random tweet....showing how implement", tweetimage: nil)
                    Divider()
                }
            }.padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        })
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
