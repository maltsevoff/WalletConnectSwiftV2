//
//  QueryParameters.swift
//  WalletApp
//
//  Created by Aleksandr Maltsev on 24.05.2023.
//

import Foundation

extension URL {
	var queryParameters: [AnyHashable: Any] {
		let urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: false)
		guard let queryItems = urlComponents?.queryItems else { return [:] }
		var queryParams: [AnyHashable: Any] = [:]
		queryItems.forEach {
			queryParams[$0.name] = $0.value
		}
		return queryParams
	}
}
