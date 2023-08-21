//
//  MessageCell.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 21/08/23.
//

import SwiftUI

struct MessageCell: View {
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        VStack (alignment: .leading, spacing: nil) {
            Rectangle()
                .frame(width: width, height: 1,
                       alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack  {
                    Image("profile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .cornerRadius(30)
                        .padding(.leading)
                VStack (alignment: .leading, spacing: 0) {
                    HStack {
                        Text("Shamis ").fontWeight(.bold)
                            .foregroundColor(.primary)
                        +
                        Text("@shamsi").foregroundColor(.black)
                        
                        Spacer(minLength: 0)
                        Text("6/20/23").foregroundColor(.gray).padding(.trailing)
                    }
                    Text("Hey, how you doing").foregroundColor(.gray).padding(.trailing)
                    
                    Spacer()
                }
         
            }
            .padding(.top, 2)
        } .frame(width: width, height: 85)
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell()
    }
}
