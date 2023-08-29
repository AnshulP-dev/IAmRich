//
//  ContentView.swift
//  IAmRich
//
//  Created by Anshul parashar on 27/07/23.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ZStack {
			Color.green.edgesIgnoringSafeArea(.all)
			VStack {
				Image("chiesa")
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 150, height: 150)
					.clipShape(Circle())
					.overlay(
						Circle().stroke(.white, lineWidth: 5)
					)
				Text("Fedrico Chiesa")
					.font(.largeTitle)
					.foregroundColor(.white)
				Text("Juventus Footballer")
					.font(.subheadline)
					.foregroundColor(.white)
				Divider()

				InfoView(text: "+91 987 654 3211", imageName: "phone.fill")
				InfoView(text: "fredrico.chiesa@juv.com", imageName: "envelope.fill")


			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

struct InfoView: View {
	let text: String
	let imageName: String

	var body: some View {
		RoundedRectangle(cornerRadius: 50)
			.foregroundColor(.white)
			.frame(height: 50)
			.padding(.all)
			.overlay(
				HStack {
					Image(systemName: imageName)
						.foregroundColor(.green)
					Text(text)
				}
			)
	}
}
