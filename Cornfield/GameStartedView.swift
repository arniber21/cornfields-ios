import SwiftUI

struct GameStartedView: View {
    var body: some View {
        NavigationView { // Wrap in NavigationView to ensure the navigation title appears
            VStack {
                Text("Take a Picture!") // Main text displayed in the view
                    .font(.system(size: 40, weight: .bold)) // Set larger and bold font
                    .padding()

                Spacer() // Adds space above the button

                // Large Square Button to Take a Picture
                Button(action: {
                    // Action to take a picture
                    
                }) {
                    Image(systemName: "camera.fill") // Camera icon
                        .font(.system(size: 100)) // Increase icon size
                        .frame(width: 150, height: 150) // Make the button square and larger
                        .background(Color.blue) // Button background color
                        .foregroundColor(.white) // Icon color
                        .cornerRadius(15) // Rounded corners
                        .shadow(color: .gray, radius: 10, x: 0, y: 5) // Add shadow for prominence
                }
                .padding()

                Spacer() // Adds space below the button
            }
            .padding()
            .navigationTitle("Game Started!") // Set the navigation title to "Game Started!"
            .navigationBarTitleDisplayMode(.inline) // Optional: make the title inline
        }
    }
}

#Preview {
    GameStartedView()
}
