//
//  AnimatedButton.swift
//  ScrollViewUI
//
//  Created by Josue Gisber on 11/2/20.
//

import SwiftUI

struct AnimatedButton: View {
    var body: some View {
		Button(action: {
			
		}, label: {
			Image(systemName: "plus")
				
				
		})
		.buttonStyle(Effect())
    }
}

struct Effect: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.font(.system(size: 80))
			.foregroundColor(.white)
			.padding()
			.background(Color.purple)
			.cornerRadius(50)
			.rotationEffect(Angle.degrees(configuration.isPressed ? 45 : 0))
			.scaleEffect(configuration.isPressed ? 0.9 : 1.0)
	}
}

struct AnimatedButton_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedButton()
    }
}
