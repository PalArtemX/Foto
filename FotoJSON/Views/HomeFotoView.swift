//
//  HomeFotoView.swift
//  FotoJSON
//
//  Created by Artem Palyutin on 04.09.2021.
//

import SwiftUI

struct HomeFotoView: View {
    
    @StateObject var viewModel = FotoViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}










struct HomeFotoView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFotoView()
    }
}
