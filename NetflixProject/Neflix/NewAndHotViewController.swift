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
    
    @IBOutlet var buttons: [UIButton]!
    
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
        self.buttons.forEach {
            if $0.tag == 0 {
                $0.setTitle("공개 예정", for: .normal)
                $0.setImage(UIImage.blue, for: .normal)
            } else if $0.tag == 1 {
                $0.setTitle("모두의 인기 콘텐츠", for: .normal)
                $0.setImage(UIImage.turquoise, for: .normal)
            } else {
                $0.setTitle("TOP 10 시리즈", for: .normal)
                $0.setImage(UIImage.pink, for: .normal)
            }
            
            $0.titleLabel?.font = .systemFont(ofSize: 12)
            $0.setTitleColor(.white, for: .normal)
            $0.layer.cornerRadius = 20
        }
    }
    
    @IBAction func releaseButtonTapped(_ sender: UIButton) {
        let tag = sender.tag
        
        if tag == 0 {
            self.firstTextLabel.text = "공개 예정 작품이 없습니다."
            
            self.buttons[0].backgroundColor = .white
            self.buttons[0].setTitleColor(.black, for: .normal)
            
            self.buttons[1].backgroundColor = .black
            self.buttons[1].setTitleColor(.white, for: .normal)
            
            self.buttons[2].backgroundColor = .black
            self.buttons[2].setTitleColor(.white, for: .normal)
            
        } else if tag == 1 {
            self.firstTextLabel.text = "모두의 인기 콘텐츠 작품이 없습니다."
            
            self.buttons[0].backgroundColor = .black
            self.buttons[0].setTitleColor(.white, for: .normal)
            
            self.buttons[1].backgroundColor = .white
            self.buttons[1].setTitleColor(.black, for: .normal)
            
            self.buttons[2].backgroundColor = .black
            self.buttons[2].setTitleColor(.white, for: .normal)
            
        } else {
            self.firstTextLabel.text = "TOP 10 시리즈 작품이 없습니다."
            
            self.buttons[0].backgroundColor = .black
            self.buttons[0].setTitleColor(.white, for: .normal)
            
            self.buttons[1].backgroundColor = .black
            self.buttons[1].setTitleColor(.white, for: .normal)
            
            self.buttons[2].backgroundColor = .white
            self.buttons[2].setTitleColor(.black, for: .normal)
        }
        
        view.endEditing(true)
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
    
    
    @IBAction func keyboardDismiss(_ sender: Any) {
        view.endEditing(true)
    }
}
