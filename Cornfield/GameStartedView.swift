import SwiftUI

struct GameStartedView: View {
    @StateObject private var locationManager = LocationManager() // LocationManager instance

    var body: some View {
        NavigationView { // Wrap in NavigationView to ensure the navigation title appears
            ZStack {
                // Main background color
                Color.white // Change this to your desired background color or image
                    .ignoresSafeArea() // Make it cover the entire area

                VStack {
                    // Red background behind the text
                    Text("Take a Picture!") // Main text displayed in the view
                        .font(.system(size: 40, weight: .bold)) // Set larger and bold font
                        .foregroundColor(.white) // Set text color to white
                        .padding()
                        .background(Color.red) // Red background behind the text
                        .cornerRadius(10) // Optional: rounded corners for the background

                    Spacer() // Adds space above the button

                    // Large Square Button to Take a Picture
                    Button(action: {
                        // Start tracking location when the button is pressed
                        locationManager.startTrackingLocation()
                        
                        // Delay to allow location update
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                            if let location = locationManager.userLocation {
                                // Do something with the location (e.g., store or display)
                                print("User's location: \(location.coordinate.latitude), \(location.coordinate.longitude)")
                            } else {
                                print("Location not available yet")
                            }
                        }
                    }) {
                        Image(systemName: "camera.fill") // Camera icon
                            .font(.system(size: 100)) // Increase icon size
                            .frame(width: 150, height: 150) // Make the button square and larger
                            .background(Color.red) // Button background color
                            .foregroundColor(.white) // Icon color
                            .cornerRadius(15) // Rounded corners
                            .shadow(color: .gray, radius: 10, x: 0, y: 5) // Add shadow for prominence
                    }
                    .padding()

                    Spacer() // Adds space below the button
                }
                .padding()
            }
            .navigationTitle("Game Started!") // Set the navigation title to "Game Started!"
            .navigationBarTitleDisplayMode(.inline) // Optional: make the title inline
        }
    }
}

#Preview {
    GameStartedView()
}
