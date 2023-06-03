//
//  ReminderListViewCOntroller+Actions.swift
//  Today
//
//  Created by torii katsuya on 2023/06/04.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
