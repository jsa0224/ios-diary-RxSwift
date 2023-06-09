//
//  DiaryItem.swift
//  Diary
//
//  Created by 정선아 on 2023/04/04.
//

import Foundation
import UIKit

struct DiaryItem {
    private let diary: Diary

    var title: String {
        return diary.title
    }

    var body: String {
        return diary.body
    }

    var createdAt: String {
        return DateFormatterManager().formatDate(diary.createdAt)
    }

    var image: UIImage {
        return UIImage(data: diary.image) ?? UIImage()
    }

    init(diary: Diary) {
        self.diary = diary
    }
}
