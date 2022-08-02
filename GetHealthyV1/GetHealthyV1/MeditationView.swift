//
//  MeditationView.swift
//  GetHealthyV1
//
//  Created by Student on 2022-07-24.
//

import SwiftUI



struct GaugeProgressStyle: ProgressViewStyle {
    var strokeColor = Color.mint
    var strokeWidth = 27.0

    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0

        return ZStack {
            Circle()
                .trim(from: 0, to: fractionCompleted)
                .stroke(strokeColor, style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
    }
}


struct MeditationView: View {
    @EnvironmentObject var appState: AppState
    @State private var progress = 0.01
    @State var PausePlay = "PauseButton"

    @State var TimerSET: Int = 60
    
    //
    @StateObject private var vm = ViewModel()
        private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        private let width: Double = 250
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            
            //satrt
            VStack{
Spacer()
Spacer()
                //Spacer()
                Image("MeditationTitle")
            Text("\(vm.time)")
                            .font(.system(size: 70, weight: .medium, design: .rounded))
                            .alert("Meditation session over", isPresented: $vm.showingAlert) {
                                Button("Continue", role: .cancel) {
                                    // Code
                                }
                            }
                            .padding()
                            .frame(width: width)
                         //   .background(.thinMaterial)
                            .cornerRadius(20)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray, lineWidth: 0)
                                )
//Spacer()
                Image("PeaceIMG")
                        Slider(value: $vm.minutes, in: 1...10, step: 1)
                            .padding()
                            .disabled(vm.isActive)
                            .animation(.easeInOut, value: vm.minutes)
                            .frame(width: width)
                            .accentColor(Color.green)
                             
//Spacer()
                        HStack() {
                            Button(action:  {vm.start(minutes: vm.minutes)}) {
                                Image("StartButton")
                            }  .disabled(vm.isActive)
                           // Button("HomeWorkoutButton") {
                           //     vm.start(minutes: vm.minutes)
                          //  }
                          
                            Button(action: vm.reset) {
                                Image("ResetButton")
                            }
                    
                    .onReceive(timer) { _ in
                        vm.updateCountdown()
                    }
//Spacer()
            }
Spacer()
Spacer()
            //    Spacer()
            }
           
        }
    }
}


struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
       
            MeditationView()

    }
}
