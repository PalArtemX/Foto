//
//  HomePhotoView.swift
//  FotoJSON
//
//  Created by Artem Palyutin on 04.09.2021.
//

import SwiftUI

struct HomePhotoView: View {
    
    @StateObject var viewModel = PhotoViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.photos) { photo in
                Text(photo.title)
            }
        }
    }
}










struct HomePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        HomePhotoView()
    }
}
