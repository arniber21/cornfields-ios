import SwiftUI

struct CreateGameView: View {
    @State private var numberOfPlayers: Double = 0 // Slider value
    @State private var roomName: String = "" // Room name input
    @State private var timeLimit: Double = 1 // Time limit for game

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Create Game")
                    .font(.largeTitle)
                    .padding()

                // Room Name Input
                TextField("Room Name", text: $roomName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                // Number of Players Slider
                VStack {
                    Text("Number of Players: \(Int(numberOfPlayers))")
                    Slider(value: $numberOfPlayers, in: 0...10, step: 1)
                }
                .padding()

                // Time Limit Input
                VStack {
                    Text("Time Limit: \(Int(timeLimit)) minutes")
                    Slider(value: $timeLimit, in: 1...60, step: 1)
                }
                .padding()

                // Start Game Button
                NavigationLink(destination: GameStartedView()) {
                    Text("Start Game")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    CreateGameView()
}
