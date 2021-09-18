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
        NavigationView {
            List {
                ForEach(viewModel.photos) { photo in
                    VStack {
                        RowPostView(title: photo.title, url: URL(string: photo.url)!)
                        
                    }
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Photos")
        }
    }
}










struct HomePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        HomePhotoView()
    }
}
