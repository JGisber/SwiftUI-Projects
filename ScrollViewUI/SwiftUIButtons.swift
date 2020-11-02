//
//  SwiftUIButtons.swift
//  ScrollViewUI
//
//  Created by Josue Gisber on 10/31/20.
//

import SwiftUI

struct SwiftUIButtons: View {
	var body: some View {
		VStack {
			Button(action: {
				print("Delete button tapped!")
			}) {
				HStack {
					Image(systemName: "square.and.arrow.up")
						.font(.title)
					Text("Delete")
						.fontWeight(.semibold)
						.font(.title)
				}
			}
//			.buttonStyle(GradientBackgroundStyle())
			
			Button(action: {
				print("Delete button tapped!")
			}) {
				HStack {
					Image(systemName: "square.and.pencil")
						.font(.title)
					Text("Delete")
						.fontWeight(.semibold)
						.font(.title)
				}
			}
//			.buttonStyle(GradientBackgroundStyle())
			
			Button(action: {
				print("Delete button tapped!")
			}) {
				HStack {
					Image(systemName: "trash")
						.font(.title)
					Text("Delete")
						.fontWeight(.semibold)
						.font(.title)
				}
			}
//			.buttonStyle(GradientBackgroundStyle())
		}
		.buttonStyle(GradientBackgroundStyle())
	}
}

struct GradientBackgroundStyle: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.frame(minWidth: 0, maxWidth: .infinity)
			.padding()
			.foregroundColor(.white)
			.background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
			.cornerRadius(40)
			.padding(.horizontal, 20)
			.scaleEffect(configuration.isPressed ? 0.9 : 1.0)
	}
}

//struct SwiftUIButtons_Previews: PreviewProvider {
//	static var previews: some View {
//		SwiftUIButtons()
//	}
//}
