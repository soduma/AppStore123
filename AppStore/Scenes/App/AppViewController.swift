//
//  AppViewController.swift
//  AppStore
//
//  Created by 장기화 on 2021/12/13.
//

import UIKit
import SnapKit

final class AppViewController: UIViewController {
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 0
        
        let featureSectionView = UIView()
        let rankingFeatureSectionView = UIView()
        let exchangeCodeSectionView = UIView()
        
        featureSectionView.backgroundColor = .red
        rankingFeatureSectionView.backgroundColor = .blue
        exchangeCodeSectionView.backgroundColor = .yellow
        
        [featureSectionView, rankingFeatureSectionView, exchangeCodeSectionView]
            .forEach {
                $0.snp.makeConstraints {
                    $0.height.equalTo(500)
                }
                stackView.addArrangedSubview($0)
            }
        
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNavigationController()
        setUpLayout()
    }
}

private extension AppViewController {
    func setUpNavigationController() {
        navigationItem.title = "앱"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setUpLayout() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.trailing.bottom.equalToSuperview()
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalToSuperview() // 세로스크롤
//            $0.height.equalToSuperview() 가로스크롤
        }
        
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
