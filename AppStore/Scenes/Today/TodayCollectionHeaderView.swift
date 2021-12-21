//
//  TodayCollectionHeaderView.swift
//  AppStore
//
//  Created by 장기화 on 2021/12/10.
//

import UIKit
import SnapKit
import SwiftUI

final class TodayCollectionHeaderView: UICollectionReusableView {
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
//        label.text = "11월 23일 화요일"
        let formatter = DateFormatter()
        let locale = Locale(identifier: "ko")
        formatter.dateFormat = "MM월 dd일 EEEE"
        formatter.locale = locale
        let todayDate = formatter.string(from: Date())
        label.text = todayDate
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .secondaryLabel
        return label
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "투데이"
        label.font = .systemFont(ofSize: 36, weight: .black)
        label.textColor = .label
        return label
    }()
    
    private lazy var profileButton: UIButton = {
        let button = UIButton()
        button.setTitle("🥺", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30)
        button.backgroundColor = .systemGray5
        button.layer.cornerRadius = 23
        button.clipsToBounds = true
        return button
    }()
    
    func setUpView() {
        [dateLabel, titleLabel, profileButton]
            .forEach { addSubview($0) }
        
        dateLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview().inset(32)
        }
        
        titleLabel.snp.makeConstraints {
            $0.left.equalTo(dateLabel)
            $0.top.equalTo(dateLabel.snp.bottom).offset(8)
        }
        
        profileButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(16)
            $0.top.equalTo(titleLabel.snp.top)
            $0.bottom.equalTo(titleLabel.snp.bottom)
            $0.width.equalTo(profileButton.snp.height)
        }
    }
}
