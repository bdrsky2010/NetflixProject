//
//  SaveContentViewController.swift
//  NetflixProject
//
//  Created by Minjae Kim on 5/16/24.
//

import UIKit

class SaveContentViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstTextLabel: UILabel!
    @IBOutlet weak var secondTextLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var checkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.backgroundColor = .black
        
        titleLabelConfig()
        textLabelConfig()
        imageViewConfig()
        buttonConfig()
    }
    
    private func titleLabelConfig() {
        self.titleLabel.text = "저장한 콘텐츠 목록"
        self.titleLabel.textColor = .white
        self.titleLabel.font = .boldSystemFont(ofSize: 20)
        self.titleLabel.textAlignment = .center
    }
    
    private func textLabelConfig() {
        self.firstTextLabel.text = "'나만의 자동 저장' 기능"
        self.firstTextLabel.font = .boldSystemFont(ofSize: 20)
        self.firstTextLabel.textAlignment = .center
        self.firstTextLabel.textColor = .white
        
        self.secondTextLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이\n없어요."
        self.secondTextLabel.numberOfLines = 3
        self.secondTextLabel.font = .systemFont(ofSize: 13)
        self.secondTextLabel.textAlignment = .center
        self.secondTextLabel.textColor = .lightGray
    }
    
    private func imageViewConfig() {
        self.imageView.image = UIImage.dummy
        self.imageView.contentMode = .scaleAspectFill
    }
    
    private func buttonConfig() {
        self.settingButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        self.settingButton.setTitle("설정하기", for: .normal)
        self.settingButton.setTitleColor(.white, for: .normal)
        self.settingButton.backgroundColor = .purple
        self.settingButton.layer.cornerRadius = 5
        
        self.checkButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        self.checkButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        self.checkButton.setTitleColor(.black, for: .normal)
        self.checkButton.backgroundColor = .white
        self.checkButton.layer.cornerRadius = 5
    }
}
