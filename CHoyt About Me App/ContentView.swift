//
//  ContentView.swift
//  About Me App
//
//  Created by Charlotte Hoyt on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    
    // Set RGB Values to Color Keywords
    let mindaro = Color(red: 0.929, green: 1, blue: 0.663)
    let celeste = Color(red: 0.69, green: 0.937, blue: 0.922)
    let plum = Color(red: 0.925, green: 0.639, blue: 0.961)
    let lightPlum = Color(red: 0.992, green: 0.729, blue: 0.973)
    let neonWhite = Color(red: 0.984, green: 1, blue: 1)
        
    // Set Background Gradient
    let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.925, green: 0.639, blue: 0.961), Color(red: 0.992, green: 0.729, blue: 0.973), Color(red: 0.69, green: 0.937, blue: 0.922), Color(red: 0.929, green: 1, blue: 0.663)]), startPoint: .top, endPoint: .bottom)
    
    // Fun Facts Array
    var factsAboutCharlotte = ["I have sectoral heterochromia! (My eyes are green and a sector of my right eye is brown.)", "Giraffes are my favorite animal even though I am pretty short.", "I know HTML, CSS, JavaScript, Python, and C# but Swift is new to me!", "My favorite number is 707 because upside down it spells LOL and I can't get over it.", "Though Candy Land involves no skill, I am dubiously very good at it.", "I've found a 5 leaf clover before."]
    
    // Set Default Fun Fact Text to Blank
    @State private var factAboutCharlotte = "..."
    // Set Default Button Text to "Learn a Fun Fact..."
    @State private var buttonSays = "Learn a Fun Fact About Charlotte"
  

    var body: some View {
        ZStack {
            // Make the Background a Gradient That Spans the Whole Screen
            backgroundGradient
                .ignoresSafeArea()
            VStack {
                
                // Header With My Name
                Text("Charlotte 🦄")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(neonWhite)
                
                VStack {
                    // Rounded Image
                    Image("charlotte")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(neonWhite)
                        .cornerRadius(250)
                }
                // Make a Border Around the Image
                .padding(15)
                .background(celeste)
                .cornerRadius(360)
                
                    // Fun Fact Button
                    Button(buttonSays) {
                        // When Clicked Pick a Random Fun Fact From the Array to Share, Change the Text on the Button to Say "Learn Another Fun Fact"
                        let randomInt = Int.random(in: 0..<factsAboutCharlotte.count)
                        factAboutCharlotte = factsAboutCharlotte[randomInt]
                        buttonSays = "Learn Another Fun Fact"
                    }
                    .font(.title3)
                    .fontWeight(.bold)
                    .buttonStyle(.borderedProminent)
                    .tint(plum)
                    .foregroundColor(neonWhite)
                    .cornerRadius(25)
                
                // Make a "Container" for Fun Facts to Display In/Background for Fun Facts
                ZStack {
                    
                    // Area for Fun Facts to Display
                    Text(factAboutCharlotte)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(neonWhite)
                        .multilineTextAlignment(.center)
                }
                .padding()
                .background(lightPlum)
                .cornerRadius(25)
                .padding()
    
            }
            // Space Around the Edges of the VStack (Add Space on Sides)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

