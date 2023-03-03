//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local Restaurant",
                 description: "Where do you go for the best food?"),
            Task(title: "Your favorite local Cafe",
                 description: "Where do you go for your first cup of caffeine of the day?"),
            Task(title: "Your got-to brunch place",
                 description: "Where is the best place to go out with friends for an amazing brunch?"),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go to be one with Nature?")
        ]
    }
}
