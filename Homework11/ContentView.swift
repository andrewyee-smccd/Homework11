/*:
 
# Homework 11
## Andrew Yee
October 28, 2025

### Description
 This project displays three holiday themed tabs: Halloween, Thanksgiving, and Christmas.
 Each tab shows a list of SF Symbol icons and a short title for that holiday.
 It demonstrates the use of TabView, VStack, and Image views in SwiftUI.
 
*/

import SwiftUI

// Displays a simple list of Halloween-themed SF Symbols
struct HalloweenView: View {
    var body: some View {
        VStack() {
            Text("This is my Halloween List")
            Image(systemName: "hare")
            Image(systemName: "ladybug")
            Image(systemName: "carrot")
            Image(systemName: "ant")
        }
    }
}

// Displays a simple list of Thanksgiving-themed SF Symbols
struct ThanksgivingView: View {
    var body: some View {
        VStack() {
            Text("This is my Thanksgiving List")
            Image(systemName: "fork.knife")
            Image(systemName: "hand.raised.palm.facing")
            Image(systemName: "cup.and.heat.waves")
        }
    }
}

// Displays a simple list of Christmas-themed SF Symbols
struct ChristmasView: View {
    var body: some View {
        VStack() {
            Text("This is my Christmas List")
            Image(systemName: "snowflake")
            Image(systemName: "figure.snowboarding")
            Image(systemName: "giftcard")
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            // Halloween Tab
            HalloweenView().tabItem {
                VStack{
                    Image(systemName: "carrot")
                    Text("Halloween")
                }
            }
            
            // Thanksgiving Tab
            ThanksgivingView().tabItem {
                Image(systemName: "fork.knife.circle")
                Text("Thanksgiving")
            }
            
            // Christmas Tab
            ChristmasView().tabItem {
                Image(systemName: "gift")
                Text("Christmas")
            }
        }
    }
}

#Preview {
    ContentView()
}
