//
//  MyServiceModels.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 31/03/2023.
//

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Codable {
    var status, copyright: String?
    var numResults: Int?
    var results: [NewsItem]?

    enum CodingKeys: String, CodingKey {
        case status, copyright
        case numResults = "num_results"
        case results
    }
}

// MARK: - NewsItem
struct NewsItem: Codable {
    var uri: String?
    var url: String?
    var id, assetID: Int?
    var source, publishedDate, updated, section: String?
    var subsection, nytdsection, adxKeywords, byline: String?
    var type, title, abstract: String?
    var desFacet: [String]?
    var media: [Media]?

    enum CodingKeys: String, CodingKey {
        case uri, url, id
        case assetID = "asset_id"
        case source
        case publishedDate = "published_date"
        case updated, section, subsection, nytdsection
        case adxKeywords = "adx_keywords"
        case byline, type, title, abstract
        case desFacet = "des_facet"
        case media
    }
}

// MARK: - Media
struct Media: Codable {
    var type, subtype, caption, copyright: String?
    var approvedForSyndication: Int?
    var mediaMetadata: [MediaMetadatum]?

    enum CodingKeys: String, CodingKey {
        case type, subtype, caption, copyright
        case approvedForSyndication = "approved_for_syndication"
        case mediaMetadata = "media-metadata"
    }
}

// MARK: - MediaMetadatum
struct MediaMetadatum: Codable {
    var url: String?
    var format: String?
    var height, width: Int?
}
