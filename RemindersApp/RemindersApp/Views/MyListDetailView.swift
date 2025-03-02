//
//  MyListDetailView.swift
//  RemindersApp
//
//  Created by Shimin Cheng on 2025-03-03.
//

import SwiftUI

struct MyListDetailView: View {
    
    let myList: MyList
    @State private var openAddReminder: Bool = false
    @State private var title: String = ""
    
    private var isFormValid: Bool {
        !title.isEmptyOrWithWhitespace
    }
    var body: some View {
        
        VStack{
            
            // Display List of Reminders
            
            HStack{
                Image(systemName: "plus.circle.fill")
                Button("New Reminder"){
                    openAddReminder = true
                }
            }.foregroundStyle(.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
        }.alert("New Reminder", isPresented: $openAddReminder) {
            TextField("", text: $title)
            Button("Cancel", role: .cancel){}
            Button("Done"){
                if isFormValid{
                    // Save Reminder to MyList
                }
            }
        }
    }
}

#Preview {
    MyListDetailView(myList: PreviewData.myList)
}
