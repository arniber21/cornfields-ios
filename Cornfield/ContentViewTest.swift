//
//  ContentViewTest.swift
//  Cornfield
//
//  Created by Rishabh Dholakia on 10/4/24.
//

import SwiftUI

struct ContentViewTest: View {
    var body: some View {
        VStack {
            // Text to describe the button's action
            HStack {
                Image(systemName: "pawprint")
                    .font(.title)
                    .foregroundColor(.red)
                Text("Cornfield")
                    .font(.title)
                Image(systemName: "map")
                    .font(.title)
            }
            .padding()
            
            // Button that runs the function when pressed
            Button(action: runMyFunction) {
                // Label for the button
                Label("Create Game", systemImage: "plus")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity) // Make the button expand to full width
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal) // Add horizontal padding
            }
            
            Button(action: runMyFunction) {
                // Label for the button
                Label("Join Game", systemImage: "plus.circle")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity) // Make the button expand to full width
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal) // Add horizontal padding
            }
        }
        .padding()
    }

    // Function that runs when the button is pressed
    private func runMyFunction() {
        print("Button pressed, function is running!")
    }
}

#Preview {
    ContentViewTest()
}
