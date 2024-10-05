import SwiftUI

struct HomeView: View {
    @State private var navigateToCreateGame: Bool = false
    @State private var navigateToJoinGame: Bool = false

    var body: some View {
        NavigationStack {
            ZStack {
                // Static Background Image
                Image("Cornell_Background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack {
                    // Title Section
                    HStack {
                        Image(systemName: "pawprint")
                            .font(.system(size: 50)) // Increased font size
                            .foregroundColor(.white) // Set color to white
                        Text("Cornfield")
                            .font(.system(size: 50, weight: .bold)) // Increased font size and made it bold
                            .foregroundColor(.white) // Set color to white
                        Image(systemName: "map")
                            .font(.system(size: 50)) // Increased font size
                            .foregroundColor(.white) // Set color to white
                    }
                    .padding(.vertical, 20) // Adjust vertical padding to move it up
                    .background(Color.red) // Set background color to red
                    .cornerRadius(10) // Add corner radius for rounded edges
                    .padding(.horizontal) // Add padding on the sides

                    Spacer() // Add spacer to push content down

                    // Create Game Button
                    Button(action: {
                        navigateToCreateGame = true // Navigate to CreateGameView
                    }) {
                        Label("Create Game", systemImage: "plus")
                            .font(.title2)
                            .padding()
                            .frame(width: 250) // Set a fixed width for buttons
                            .background(Color.red) // Set background color to red
                            .foregroundColor(.white) // Set text color to white
                            .cornerRadius(10)
                            .padding(.bottom, 10) // Add some space between buttons
                    }

                    // Join Game Button
                    Button(action: {
                        navigateToJoinGame = true // Navigate to JoinGameView
                    }) {
                        Label("Join Game", systemImage: "plus.circle")
                            .font(.title2)
                            .padding()
                            .frame(width: 250) // Set a fixed width for buttons
                            .background(Color.red) // Set background color to red
                            .foregroundColor(.white) // Set text color to white
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 20) // Additional padding for the last button
                }
                .padding()
            }
            // Navigation destinations
            .navigationDestination(isPresented: $navigateToCreateGame) {
                CreateGameView() // Navigate to CreateGameView without transition
            }
            .navigationDestination(isPresented: $navigateToJoinGame) {
                JoinGameView() // Navigate to JoinGameView without transition
            }
        }
    }
}

#Preview {
    HomeView()
}
