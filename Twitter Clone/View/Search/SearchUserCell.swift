//
//  SearchUserCell.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 21/08/23.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack {
            Image("profile")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading, content: {
                Text("Shamis").fontWeight(.heavy)
                Text("@shamsi")
                
            })
            Spacer(minLength: 0)
        }
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
