//
//  ReminderViewController+Row.swift
//  Today
//
//  Created by torii katsuya on 2023/06/04.
//

import UIKit

extension ReminderViewController {
    enum Row: Hashable {
        case header(String)
        case date
        case notes
        case time
        case title
        case editableDate(Date)
        case editableText(String?)
    
        var imageName: String? {
            switch self {
            case .date: return "calender.circle"
            case .notes: return "square.and.pencil"
            case .time: return "clock"
            default: return nil
            }
        }
    
        var image: UIImage? {
            guard let imageName = imageName else { return nil }
            let configuration = UIImage.SymbolConfiguration(textStyle: .headline)
            return UIImage(systemName: imageName, withConfiguration: configuration)
        }
        
        var textStyle: UIFont.TextStyle {
            switch self {
            case .title: return .headline
            default: return .subheadline
            }
        }
    }
}
