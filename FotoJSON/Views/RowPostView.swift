//
//  RowPostView.swift
//  FotoJSON
//
//  Created by Artem Palyutin on 05.09.2021.
//

import SwiftUI

struct RowPostView: View {
    
    let title: String
    let url: URL
    
    var body: some View {
        HStack {
            PhotoView(url: url)
            Text(title)
        }
        .frame(height: 45)
        .font(.headline)
        .foregroundColor(.colorTheme.text)
    }
}










struct RowPostView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RowPostView(title: "Title", url: URL(string: "https://via.placeholder.com/600/92c952")!)
                .previewLayout(.sizeThatFits)
            RowPostView(title: "Title", url: URL(string: "https://via.placeholder.com/600/92c952")!)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
