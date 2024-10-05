import SwiftUI

struct CreateGameView: View {
    @State private var numberOfPlayers: Double = 0 // Slider value
    @State private var roomName: String = "" // Room name input
    @State private var timeLimit: Double = 1 // Time limit for game

    var body: some View {
        NavigationStack { // Updated from NavigationView to NavigationStack
            ZStack {
                // Background color
                Color.white.ignoresSafeArea()

                VStack(spacing: 20) {
                    // Title
                    Text("Create Game")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                        .padding(.horizontal)

                    // Room Name Input
                    TextField("Room Name", text: $roomName)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)

                    // Number of Players Slider
                    VStack {
                        Text("Number of Players: \(Int(numberOfPlayers))")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                        Slider(value: $numberOfPlayers, in: 0...10, step: 1)
                            .accentColor(.red)
                            .padding(.horizontal, 20)
                    }
                    .padding()

                    // Time Limit Input
                    VStack {
                        Text("Time Limit: \(Int(timeLimit)) minutes")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                        Slider(value: $timeLimit, in: 1...60, step: 1)
                            .accentColor(.red)
                            .padding(.horizontal, 20)
                    }
                    .padding()

                    // Start Game Button
                    NavigationLink(destination: GameLobbyView()) {
                        Text("Start Game")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity) // Full-width button
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 20)

                    Spacer()
                }
                .padding(.top, 40)
            }
        }
    }
}

#Preview {
    CreateGameView()
}
