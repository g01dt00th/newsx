//
//  ArticleListView.swift
//  NewsX
//
//  Created by Nikita Rossik on 11/10/21.
//

import SwiftUI

struct ArticleListView: View {
	let articles: [Article]
	
	var body: some View {
		List {
			ForEach(articles) { article in
				ArticleRowView(article)
			}
			.listRowSeparator(.hidden)
			.listRowInsets(Constant.listInsets)
		}
		.listStyle(.plain)
	}
}


struct ArticleListView_Previews: PreviewProvider {
	static var previews: some View {
		ArticleListView(articles: Article.previewData)
			.previewDisplayName("Article List")
	}
}