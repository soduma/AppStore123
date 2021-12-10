//
//  TodayCollectionViewCell.swift
//  AppStore
//
//  Created by 장기화 on 2021/12/10.
//

import UIKit
import SnapKit

final class TodayCollectionViewCell: UICollectionViewCell {
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    func setUp() {
        setUpSubView()
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 10
        
        subTitleLabel.text = "gdgd"
        titleLabel.text = "Gdadgag"
        descriptionLabel.text = "Gdagefaf"
    }
}

private extension TodayCollectionViewCell {
    func setUpSubView() {
        [imageView, titleLabel, subTitleLabel, descriptionLabel]
            .forEach { addSubview($0) }
        
        subTitleLabel.snp.makeConstraints {
            $0.leading.trailing.top.equalToSuperview().inset(24)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.trailing.equalTo(subTitleLabel)
            $0.top.equalTo(subTitleLabel.snp.bottom).offset(4)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.leading.trailing.bottom.equalToSuperview().inset(24)
        }
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
