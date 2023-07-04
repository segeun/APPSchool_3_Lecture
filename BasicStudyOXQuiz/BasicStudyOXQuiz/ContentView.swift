//
//  ContentView.swift
//  BasicStudyOXQuiz
//
//  Created by 최세근 on 2023/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var number1: Int = 3
    @State var number2: Int = 5
    @State var resultNumber: Int = 14
    
    @State var countCorrect = 0
    @State var countWrong = 0
    
 
    
    var body: some View {
        VStack {
            HStack {
                
                Image(systemName: "eyes")
                
                Text("이 수식 맞음?")
            }
            Spacer()
            
            Text("\(number1) \u{D7} \(number2) = \(resultNumber)")
            
            Spacer()

            HStack {
                Spacer()
                
                Button {
                    selectCorrectCase()
                } label: {
                    HStack {
                        Image(systemName: "checkmark.seal.fill")
                        Text("정답")
                            .bold()
                            .font(.largeTitle)
                    }
                    .foregroundColor(.green)

                }

                Spacer()
                
                Button {
                    selectWrong()
                } label: {
                    HStack {
                        Image(systemName: "xmark.app.fill")
                        Text("땡")
                            .bold()
                            .font(.largeTitle)

                    }
                    .foregroundColor(.red)
                    .padding()
                }
                
                Spacer()
            }
            Spacer()

            HStack {
                Spacer()
                
                Text("맞춤 \(countCorrect)")
                
                Spacer()
                
                Text("틀림 \(countWrong)")
                
                Spacer()

            }
            Spacer()
            
            Button("카운트 초기화") {
                countCorrect = 0
                countWrong = 0
                reloadGame()
            }
        }
        .font(.largeTitle)
        .padding()
        .onAppear {
            // 화면에 이 뷰가 나타날때 처리할 코드를 여기 적으면 됨
            // 유킷의 viewDidLoad랑 비슷하게 활용할 수 있다.
            reloadGame()
        }
    }
    
    
    func reloadGame() {
        print("새로운 게임 시작")
 
        number1 = Int.random(in: 0...10)
        number2 = Int.random(in: 0...10)
        resultNumber = number1 * number2 + Int.random(in: -2...2)
    }
    
    
    
    func selectCorrectCase() {
        if number1 * number2 == resultNumber {
            countCorrect += 1
        } else {
            countWrong += 1
        }
        reloadGame()
    }
    
    
    
    func selectWrong() {
        if number1 * number2 == resultNumber {
            countWrong += 1
        } else {
            countCorrect += 1
        }
        reloadGame()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
