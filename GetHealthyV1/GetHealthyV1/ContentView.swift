//
//  ContentView.swift
//  GetHealthyV1
//
//  Created by Student on 2022-07-22.
//

import SwiftUI

struct ContentView: View {
    @State var ScreenSet = "MeditationViewSCR"
    @EnvironmentObject var appState: AppState

    
    //
    
    
    var body: some View {
       

        ZStack{
            //start
            
            
           
            //end
            
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Image("Logo")
                
                
                HStack{
                    Button(action:  {
                       
                    }) {
                        Image("stepsButtons")
                    }
                    Button(action: {
                        appState.hasOnboarded = "WorkoutSCR" 
                    }) {
                        Image("HomeWorkoutButton")
                    }
                    

                }
                
                
        Button(action: {
            appState.hasOnboarded = "MeditationSCR" // change

            ScreenSet = "MeditationSCR"

            }) {
            Image("MeditationButtonIMG")
            }
                
                
               
                
              
                
                
                HStack{
                    VStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("SleepButton")
                        }
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                       Image("SleepButton")
                        }
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("CalorieButton")
                    }

                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("ActivitiesButton")
                }


                Spacer()

            }
            
            //   HHhhhhhheeeeeerrrrrrrreeeeee
            if ScreenSet == "MeditationSCR"
            {
               
                MeditationView()
            }
                
              
            
            }//ZStack
       
        
        }//body
    
       
    }// Content View




struct MeditationViewA: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
