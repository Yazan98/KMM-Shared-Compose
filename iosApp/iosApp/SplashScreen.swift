import SwiftUI
import shared

struct SplashScreen: View {
    var body: some View {
        NavigationView {
            HomeScreen.getScreenInstance()
        }
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
        SplashScreen()
	}
}
