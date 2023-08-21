//
//  TopBar.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 21/08/23.
//

import SwiftUI

struct TopBar: View {
    @Binding var x: CGFloat
    
    var body: some View {
        VStack {
            HStack {
                Button (action: {
                    x = 0;
                }, label: {
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 24))
                        .foregroundColor(Color("bg"))
                })
                
                Spacer(minLength: 0)
                
                Image("twitter")
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing)
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color("bg"))
                
                Spacer(minLength: 0)
                
            } .padding()
            
            Divider()
             
        }.background(.white)
    }
}
