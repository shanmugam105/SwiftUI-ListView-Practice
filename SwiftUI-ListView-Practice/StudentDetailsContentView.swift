//
//  StudentDetailsContentView.swift
//  SwiftUI-ListView-Practice
//
//  Created by Mac on 05/09/21.
//

import SwiftUI

struct StudentDetailsContentView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var studentName: String
    // @Binding var bindableVar: String
    
    var body: some View {
        VStack {
            Text("Student name is \(studentName)")
            Button(
                "Go back",
                action: {
                    // bindableVar = studentName
                    presentationMode.wrappedValue.dismiss()
                }
            )
        }
    }
}

struct StudentDetailsContentView_Previews: PreviewProvider {
    static var previews: some View {
        StudentDetailsContentView(studentName: "Shanmugam")
    }
}
