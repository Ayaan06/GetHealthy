//
//  WorkoutView.swift
//  GetHealthyV1
//
//  Created by Student on 2022-07-26.
// Workout Page done

import SwiftUI

struct WorkoutView: View {
    @State var excersizeSCR = 1
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("WorkoutTitle")
                    //Spacer()
                if excersizeSCR == 1
                {
                    Image("PushupIMG")

                }
                else if excersizeSCR == 2{
                    Image("JumpingJacks")

                }
                else if excersizeSCR == 3{
                    Image("LungesIMG")
                }
                else if excersizeSCR == 4{
                    Image("WallSitIMG")
                }
                else if excersizeSCR == 5{
                    Image("SquatIMG")
                    
                }
               
               
                
                
                Button(action:  {excersizeSCR += 1}) {
                    Image("NextExersiceButton")
                }

                Spacer()
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
