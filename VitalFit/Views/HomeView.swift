//  HomeView.swift
//  VitalFit
//  Created by Melody Flavel on 12/10/2023.

import SwiftUI // Import the SwiftUI framework.

struct HomeView: View { // Declare a structure named 'HomeView' that conforms to the 'View' protocol.
    
    var body: some View { // Declare the 'body' property, which is required by the 'View' protocol. The 'body' property is a computed property that describes the view's content and layout.
            
        
        ZStack{
            Color.backgroundColour
                .edgesIgnoringSafeArea(.all) // Extend the ZStack view's layout to cover the entire safe area of the screen, including elements reserved for system elements such as the status bar and home indicator.
                VStack {
                    NavigationLink(destination: ProgramListView()) {
                        Text("Programs")
                            .withButtonFormatting()
                        /*NavigationLink(destination: TestView()){ // TestView.
                            Text("Test")*/
                    }
                }
        }
                
    }
}

#Preview {
    NavigationView {
        HomeView()
    }
}
