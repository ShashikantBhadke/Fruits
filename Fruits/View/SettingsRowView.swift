//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Shashikant Bhadke on 15/09/22.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel,
                          let linkDestination = linkDestination {
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer",
                        content: "John / Jane")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
    }
}