import SwiftUI

struct GameLobbyView: View {
    @State private var gameCode: String = generateRandomCode() // Randomly generated game code
    @State private var players: [String] = [] // List of players

    var body: some View {
        NavigationView {
            ZStack {
                // Main background color
                Color.white // Change this to your desired background color or image
                    .ignoresSafeArea() // Make it cover the entire area

                VStack(spacing: 20) {
                    // Display the game code
                    Text(gameCode)
                        .font(.system(size: 60, weight: .bold, design: .rounded)) // Large font for the game code
                        .foregroundColor(.white) // Set text color to white
                        .padding()
                        .background(Color.red) // Red background behind the game code
                        .cornerRadius(10) // Rounded corners for the background

                    // Label for the players list
                    Text("Players Joined")
                        .font(.title2)
                        .foregroundColor(.white) // Set text color to white
                        .padding()
                        .background(Color.red) // Red background behind the title
                        .cornerRadius(10) // Rounded corners for the background

                    // List of players who have joined
                    List(players, id: \.self) { player in
                        Text(player) // Display each player's name
                            .font(.title3)
                            .foregroundColor(.white) // Set text color to white
                            .padding() // Add padding for the list items
                            .background(Color.red) // Red background for each list item
                            .cornerRadius(10) // Rounded corners for the list items
                    }
                    .frame(maxHeight: 300) // Limit height of the list
                    .listStyle(PlainListStyle()) // Use plain list style
                    .background(Color.white) // White background for the list section
                    .cornerRadius(10) // Rounded corners for the list section

                    // Start Game Button
                    NavigationLink(destination: GameStartedView()) {
                        Text("Start Game")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity) // Full width button
                            .background(Color.red) // Set background color to red
                            .foregroundColor(.white) // Set text color to white
                            .cornerRadius(10) // Rounded corners
                    }
                    .padding()

                    Spacer()
                }
                .padding()
            }
            .navigationTitle("") // Remove the navigation title
            .navigationBarTitleDisplayMode(.inline) // Optional: make the title inline
        }
    }

    // Function to generate a random 6-character alphanumeric code
    private static func generateRandomCode() -> String {
        let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<6).map{ _ in characters.randomElement()! })
    }
}

#Preview {
    GameLobbyView()
}
