//
//  Chanson.swift
//  youtubeS
//
//  Created by soufiane on 21/07/18.
//  Copyright © 2018 ES. All rights reserved.
//

import Foundation

class Chanson {
    private var _artist: String
    private var _title: String
    private var _code: String
    private var _baseUrl = "https://www.youtube.com/embed/"
    private var _baseUrlMini = "http://i.ytimd.com/vi/"
    private var _finUrlMini = "/maxresdeault.jpg"
    
    var artist: String {
        return _artist
    }
    
    var title: String {
        return _title
    }
    var videoUrl: String {
        return _baseUrl + _code
    }
    var miniUrl: String {
        return _baseUrlMini + _code + _finUrlMini
    }
    
    init(artist: String, title: String, code: String) {
        self._artist = artist
        self._title = title
        self._code = code
    }
    
}
