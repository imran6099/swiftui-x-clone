//
//  UserProfile.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 22/08/23.
//

import SwiftUI

struct UserProfile: View {
    @State var offset: CGFloat = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                GeometryReader {
                    proxy -> AnyView in
                    let minY = proxy.frame(in: .global).minY
                    DispatchQueue.main.async {
                        self.offset = minY
                    }
                    return AnyView(
                    Image("man")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: minY > 0 ? 0 : 180 + minY, alignment: .center)
                        .cornerRadius(0)
                    )
                }
            }
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
