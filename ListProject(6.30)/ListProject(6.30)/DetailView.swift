//
//  DetailView.swift
//  ListProject(6.30)
//
//  Created by 최세근 on 2023/06/30.
//

import SwiftUI

struct DetailView: View {
    var construction: Construction
    
    var body: some View {
        List {
            if schoolClass.students.count > 0 {
                ForEach(schoolClass.students) { student in
                    HStack {
                        AsyncImage(url: student.imageURL) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                        } placeholder: {
                            ProgressView()
                        }
                        
                        NavigationLink {
                            StudentView(student: student)
                        } label: {
                            Text("\(student.name)")
                                .font(.title)
                                .padding()
                        }
                    }
                }
            } else {
                Text("아직 학생이 없습니다")
            }
        }
        .navigationTitle("\()")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
