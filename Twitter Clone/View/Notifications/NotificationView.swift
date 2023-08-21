//
//  NotificationView.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 20/08/23.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<9) { _ in
                    NotificationCell()
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
