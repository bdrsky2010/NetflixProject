//
//  NewAndHotViewController.swift
//  NetflixProject
//
//  Created by Minjae Kim on 5/16/24.
//

import UIKit

class NewAndHotViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var searchImageView: UIImageView!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var releaseButton: UIButton!
    @IBOutlet weak var popularityButton: UIButton!
    @IBOutlet weak var topTenButton: UIButton!
    @IBOutlet weak var firstTextLabel: UILabel!
    @IBOutlet weak var secondTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.backgroundColor = .black
        
        titleLabelConfig()
        searchTextFieldConfig()
        buttonConfig()
        textLabelConfig()
    }
    
    private func titleLabelConfig() {
        self.titleLabel.text = "NEW & HOT 검색"
        self.titleLabel.textColor = .white
        self.titleLabel.font = .boldSystemFont(ofSize: 20)
        self.titleLabel.textAlignment = .center
    }
    
    private func searchTextFieldConfig() {
        self.searchView.backgroundColor = .darkGray
        self.searchView.layer.cornerRadius = 5
        
        self.searchImageView.image = UIImage(systemName: "magnifyingglass")
        self.searchImageView.tintColor = .lightGray
        
        self.searchTextField.attributedPlaceholder = NSAttributedString(string: "게임, 시리즈, 영화를 검색하세요...", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        self.searchTextField.backgroundColor = .darkGray
        self.searchTextField.borderStyle = .none
    }
    
    private func buttonConfig() {
        self.releaseButton.titleLabel?.font = .systemFont(ofSize: 12)
        self.releaseButton.setTitle("공개 예정", for: .normal)
        self.releaseButton.setTitleColor(.white, for: .normal)
        self.releaseButton.setImage(UIImage.blue, for: .normal)
        
        self.releaseButton.layer.cornerRadius = 20
        
        self.popularityButton.titleLabel?.font = .systemFont(ofSize: 12)
        self.popularityButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        self.popularityButton.setTitleColor(.white, for: .normal)
        self.popularityButton.setImage(UIImage.turquoise, for: .normal)
        self.popularityButton.layer.cornerRadius = 20
        
        self.topTenButton.titleLabel?.font = .systemFont(ofSize: 12)
        self.topTenButton.setTitle("TOP 10 시리즈", for: .normal)
        self.topTenButton.setTitleColor(.white, for: .normal)
        self.topTenButton.setImage(UIImage.pink, for: .normal)
        self.topTenButton.layer.cornerRadius = 20
    }
    
    @IBAction func releaseButtonTapped(_ sender: UIButton) {
        self.firstTextLabel.text = "공개 예정 작품이 없습니다."
        
        self.releaseButton.backgroundColor = .white
        self.releaseButton.setTitleColor(.black, for: .normal)
        
        self.popularityButton.backgroundColor = .black
        self.popularityButton.setTitleColor(.white, for: .normal)
        
        self.topTenButton.backgroundColor = .black
        self.topTenButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func popularityButtonTapped(_ sender: UIButton) {
        self.firstTextLabel.text = "모두의 인기 콘텐츠 작품이 없습니다."
        
        self.releaseButton.backgroundColor = .black
        self.releaseButton.setTitleColor(.white, for: .normal)
        
        self.popularityButton.backgroundColor = .white
        self.popularityButton.setTitleColor(.black, for: .normal)
        
        self.topTenButton.backgroundColor = .black
        self.topTenButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func topTenButtonTapped(_ sender: UIButton) {
        self.firstTextLabel.text = "TOP 10 시리즈 작품이 없습니다."
        
        self.releaseButton.backgroundColor = .black
        self.releaseButton.setTitleColor(.white, for: .normal)
        
        self.popularityButton.backgroundColor = .black
        self.popularityButton.setTitleColor(.white, for: .normal)
        
        self.topTenButton.backgroundColor = .white
        self.topTenButton.setTitleColor(.black, for: .normal)
    }
    
    private func textLabelConfig() {
        self.firstTextLabel.text = "이런! 찾으시는 작품이 없습니다."
        self.firstTextLabel.font = .boldSystemFont(ofSize: 20)
        self.firstTextLabel.textAlignment = .center
        self.firstTextLabel.textColor = .white
        
        self.secondTextLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해보세요."
        self.secondTextLabel.font = .systemFont(ofSize: 13)
        self.secondTextLabel.textAlignment = .center
        self.secondTextLabel.textColor = .lightGray
    }
}
