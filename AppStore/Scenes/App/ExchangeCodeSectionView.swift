//
//  ExchangeCodeSectionView.swift
//  AppStore
//
//  Created by 장기화 on 2021/12/15.
//

import UIKit
import SnapKit

final class ExchangeCodeSectionView: UIView {
    private lazy var exchangeCodeButton: UIButton = {
        let button = UIButton()
        button.setTitle("코드 교환", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .semibold)
        button.backgroundColor = .tertiarySystemGroupedBackground
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(tapExchangeCodeButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tapExchangeCodeButton() {
        let alertAction = UIAlertAction(title: "확인", style: .cancel, handler: nil)
        let alert = UIAlertController(title: "코드 교환", message: "happy!", preferredStyle: .actionSheet)
        alert.addAction(alertAction)
        window?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(exchangeCodeButton)
        exchangeCodeButton.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.top.bottom.equalToSuperview().inset(32)
            $0.height.equalTo(40)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
