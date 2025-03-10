//
//  ReminderService.swift
//  RemindersApp
//
//  Created by Shimin Cheng on 2025-03-02.
//

import Foundation
import CoreData
import UIKit

class ReminderService{
    
    static var viewContext: NSManagedObjectContext{
        CoreDataProvider.shared.persistentContainer.viewContext
    }
    
    static func save() throws{
        try viewContext.save()
    }
    
    static func saveMyList(_ name: String, _ color: UIColor) throws {
        
        let myList = MyList(context: viewContext)
        myList.name = name
        myList.color = color
        try save()
    }
    
    static func updateReminder(reminder: Reminder, editConfig: ReminderEditConfig) throws -> Bool{
        
        //可不写的一步
        let reminderToUpdate = reminder
        
        reminderToUpdate.isCompleted = editConfig.isCompleted
        reminderToUpdate.title = editConfig.title
        reminderToUpdate.notes = editConfig.notes
        reminderToUpdate.reminderDate = editConfig.hasDate ? editConfig.reminderDate: nil
        
        try save()
        return true
    }
    
    static func saveReminderToMyList(myList: MyList, reminderTitle: String) throws{
        let reminder = Reminder(context: viewContext)
        reminder.title = reminderTitle
        myList.addToReminders(reminder)
        try save()
    }
    
    static func getRemindersByList(myList: MyList) -> NSFetchRequest<Reminder>{
        
        let request = Reminder.fetchRequest()
        request.sortDescriptors = []
        request.predicate = NSPredicate(format: "list = %@ AND isCompleted = false", myList)
        // if the isCompleted changed from false to true, the reminder list view will gone
        return request
    }
}
