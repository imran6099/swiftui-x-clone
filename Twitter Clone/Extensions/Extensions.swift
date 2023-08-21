//
//  Extensions.swift
//  Twitter Clone
//
//  Created by Imran Abdullah on 21/08/23.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    static var edges: UIEdgeInsets  {
            let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            return scene?.windows.first?.safeAreaInsets ?? .zero
        }

}
