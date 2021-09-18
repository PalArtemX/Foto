//
//  PhotoView.swift
//  FotoJSON
//
//  Created by Artem Palyutin on 05.09.2021.
//

import SwiftUI

struct PhotoView: View {
    
    let url: URL
    
    var body: some View {
        
        VStack {
            if #available(iOS 15.0, *) {
                AsyncImage(url: url) { image in
                    if let image = image {
                        image
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFit()
                    } else {
                        Image(systemName: "photo")
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFit()
                            .foregroundColor(.gray)
                    }
                    
                } placeholder: {
                    ProgressView()
                }
            } else {
               
            }
            
        }
        
    }
}










struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(url: URL(string: "https://via.placeholder.com/600/92c952")!)
    }
}
