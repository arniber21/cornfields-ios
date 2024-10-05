import SwiftUI

struct JoinGameView: View {
    // Sample data for games
    let games = ["Game A", "Game B", "Game C", "Game D", "Game E"]

    var body: some View {
        NavigationView { // Wrap in NavigationView to ensure the navigation title appears
            ZStack {
                // Main background color
                Color.white // Change this to your desired background color or image
                    .ignoresSafeArea() // Make it cover the entire area

                VStack {
                    // Title for the Join Game section
                    Text("Join Game")
                        .font(.largeTitle)
                        .foregroundColor(.white) // Set text color to white
                        .padding()
                        .background(Color.red) // Red background behind the title
                        .cornerRadius(10) // Optional: rounded corners for the background
                        .padding()

                    Spacer() // Adds space above the games section

                    // Section for List of Games
                    VStack {
                        Text("Available Games") // Title for the game list
                            .font(.title2)
                            .foregroundColor(.white) // Set text color to white
                            .padding()
                            .background(Color.red) // Red background behind the title
                            .cornerRadius(10) // Optional: rounded corners for the background

                        List(games, id: \.self) { game in
                            Text(game) // Display each game in the list
                                .font(.title2)
                                .foregroundColor(.white) // Set text color to white
                                .padding() // Add padding for the list items
                                .background(Color.red) // Red background for each list item
                                .cornerRadius(10) // Rounded corners for the list items
                        }
                        .listStyle(PlainListStyle()) // Use a plain list style
                        .frame(maxHeight: 200) // Limit the height of the list
                        .padding()
                    }
                    .background(Color.white) // White background for the list section
                    .cornerRadius(10) // Rounded corners for the list section
                    .padding()

                    Spacer() // Adds space below the games section
                }
                .padding()
            }
            .navigationTitle("") // Remove the navigation title
            .navigationBarTitleDisplayMode(.inline) // Optional: make the title inline
        }
    }
}

#Preview {
    JoinGameView()
}
