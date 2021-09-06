//
//  HomeContentView.swift
//  SwiftUI-ListView-Practice
//
//  Created by Mac on 04/09/21.
//

import SwiftUI

struct HomeContentView: View {
    let studentName: [Student] = [Student(name: "Shanmugam"),
                                  Student(name: "Raja"),
                                  Student(name: "Ragavan")]
    var body: some View {
        NavigationView {
            List(studentName) { item in
                NavigationLink(destination: StudentDetailsContentView( studentName: item.name)){
                    HStack{
                        Image("sample_image_1")
                            .resizable()
                            .frame(width: 80, height: 80)
                        VStack(alignment: .leading) {
                            Text("Name: \(item.name)")
                                .font(.title)
                            Text("Department: ECE")
                                .font(.subheadline)
                            Text("Place: Salem")
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.gray))
                        }
                    }
                }
            }.navigationBarTitle(Text("Student List"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView().previewDevice("iPhone 11")
    }
}
