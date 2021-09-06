//
//  Helper.swift
//  SwiftUI-ListView-Practice
//
//  Created by Mac on 05/09/21.
//


/*
 
 struct Student: Identifiable {
     let id = UUID()
     let name: String
 }
 
 let studentName: [Student] = [Student(name: "Shanmugam"),
                               Student(name: "Raja"),
                               Student(name: "Ragavan")]
 
 ----------------------------------------------------
 1. ListView
 
 List(studentName) { item in
     Text(item.name)
 }
 
 ----------------------------------------------------
 
 2. Navigation
 
 NavigationView {
     List(studentName) { item in
         Text(item.name)
     }.navigationBarTitle(Text("Student List"))
 }
 
 ----------------------------------------------------
 3. NavigationLink
 
 NavigationView {
     List(studentName) { item in
         NavigationLink(destination: StudentDetailsContentView()){
             Text(item.name)
         }
     }.navigationBarTitle(Text("Student List"))
 }
 
 ----------------------------------------------------
 3. Communicating Between Two Views
 
    3.1 Normal Way
    3.2 Callbacks
    3.3 Binding
    
 
 ----------------------------------------------------
 3. Pop to Back
 
 @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
 var body: some View {
     VStack {
         Text("Student name is \(studentName)")
         Button(
             "Goback",
             action: { self.presentationMode.wrappedValue.dismiss() }
         )
     }
     
 }
 
 
 
 
 
 --------> First Screen <-------
 
 @State var navigationIdentifier: String = "Initial Screen"
 
 var body: some View {
     NavigationView {
         VStack {
             Text(navigationIdentifier)
             List(studentName) { item in
                 NavigationLink(destination: StudentDetailsContentView(studentName: item.name, bindableVar: $navigationIdentifier)){
                     Text(item.name)
                 }
             }.navigationBarTitle(Text("Student List"))
         }
     }
 }
 
 
 ---------> Second Screen <---------
 
 @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
 var studentName: String
 @Binding var bindableVar: String
 
 var body: some View {
     VStack {
         Text("Student name is \(studentName)")
         Button(
             "Go back",
             action: {
                 bindableVar = studentName
                 presentationMode.wrappedValue.dismiss()
             }
         )
     }
 }
 

 
 
 
 
 NavigationView {
     List(studentName) { item in
         NavigationLink(destination: StudentDetailsContentView()){
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
