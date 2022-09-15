//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Shashikant Bhadke on 15/09/22.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    private let wikipeadiaUrl: URL = {
        let urlString = "https://wikipeadia.com"
        return URL(string: urlString)!
    }()
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: wikipeadiaUrl)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
