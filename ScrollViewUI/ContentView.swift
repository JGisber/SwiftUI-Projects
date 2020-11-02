//
//  ContentView.swift
//  ScrollViewUI
//
//  Created by Josue Gisber on 10/31/20.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ScrollView(.horizontal) {
			VStack(alignment: .leading) {
				HStack {
					VStack(alignment: .leading) {
						Text("Monday, Aug 20".uppercased())
							.font(.caption)
							.foregroundColor(.secondary)
						Text("Your Reading")
							.font(.system(.largeTitle, design: .rounded))
							.fontWeight(.black)
					}
					.padding(.horizontal)
					Spacer()
				}
				HStack {
					Group {
						CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
						
						CardView(image: "macos-programming", category: "mac-OS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
						
						CardView(image: "flutter-app", category: "Flutter", heading: "Buikding a Complex Layout with Flutter", author: "Lawrence Tan")
						
						CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
						
					}
					.frame(width: 300)
				}
			}
			Spacer()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
