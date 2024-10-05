import SwiftUI

struct GameLobbyView: View {
    @State private var gameCode: String = generateRandomCode() // Randomly generated game code
    @State private var players: [String] = [] // List of players

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Display the game code
                Text(gameCode)
                    .font(.system(size: 60, weight: .bold, design: .rounded)) // Large font for the game code
                    .padding()
                
                // Label for the players list
                Text("Players Joined")
                    .font(.title2)
                    .padding()

                // List of players who have joined
                List(players, id: \.self) { player in
                    Text(player) // Display each player's name
                        .font(.title3)
                }
                .frame(maxHeight: 300) // Limit height of the list

                // Start Game Button
                NavigationLink(destination: GameStartedView()) {
                    Text("Start Game")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity) // Full width button
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                Spacer()
            }
            .padding()
            .navigationTitle("Game Lobby") // Navigation title for the view
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
