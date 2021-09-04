//
//  Foto.swift
//  FotoJSON
//
//  Created by Artem Palyutin on 04.09.2021.
//

import Foundation


struct Foto: Identifiable, Codable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String
    var thumbnailUrl: String
}








// MARK: - JSON

//{
//  "albumId": 1,
//  "id": 1,
//  "title": "accusamus beatae ad facilis cum similique qui sunt",
//  "url": "https://via.placeholder.com/600/92c952",
//  "thumbnailUrl": "https://via.placeholder.com/150/92c952"
//}
