//
//  HomeViewController.swift
//  NetflixProject
//
//  Created by Minjae Kim on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainContentImageView: UIImageView!
    @IBOutlet weak var risingContentLabel: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var risingContentImageViews: [UIImageView]!
    @IBOutlet var topTenImageViews: [UIImageView]!
    
    
    private var contents = ["노량", "더퍼스트슬램덩크", "밀수", "범죄도시3", "서울의봄", "스즈메의문단속", "아바타물의길", "오펜하이머", "육사오", "콘크리트유토피아"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.backgroundColor = .black
        
        UIConfig()
        randomContentImage()
        randomBannerConfig()
    }
    private func UIConfig() {
        titleLabelConfig()
        mainContentImageConfig()
        buttonConfig(buttons)
        risingContentLabelConfig()
        risingContentImageViewConfig()
    }

    private func titleLabelConfig() {
        self.titleLabel.text = "티미님"
        self.titleLabel.font = .boldSystemFont(ofSize: 20)
        self.titleLabel.textAlignment = .center
        self.titleLabel.textColor = .white
    }
    
    private func mainContentImageConfig() {
        self.mainContentImageView.contentMode = .scaleAspectFill
        self.mainContentImageView.layer.cornerRadius = 10
    }
    
    private func buttonConfig(_ buttons: [UIButton]) {
        buttons.enumerated().forEach {
            let index = $0.offset
            let button = $0.element
            if index == 0 {
                button.setTitle("재생", for: .normal)
                button.setTitleColor(.black, for: .normal)
                button.setTitleColor(.darkGray, for: .highlighted)
                button.setImage(UIImage(named: "play"), for: .normal)
                button.backgroundColor = .white
            } else {
                button.setTitle("내가 찜한 리스트", for: .normal)
                button.setTitleColor(.white, for: .normal)
                button.setImage(UIImage(systemName: "plus"), for: .normal)
                button.tintColor = .white
                button.backgroundColor = .darkGray
            }
            
            button.titleLabel?.font = .boldSystemFont(ofSize: 12)
            button.layer.cornerRadius = 5
        }
    }
    
    private func randomContentImage() {
        self.contents.shuffle()
        self.mainContentImageView.image = UIImage(named: contents[0])
        self.risingContentImageViews[0].image = UIImage(named: contents[1])
        self.risingContentImageViews[1].image = UIImage(named: contents[2])
        self.risingContentImageViews[2].image = UIImage(named: contents[3])
    }
    
    private func risingContentLabelConfig() {
        self.risingContentLabel.text = "지금 뜨는 콘텐츠"
        self.risingContentLabel.textAlignment = .left
        self.risingContentLabel.textColor = .white
    }
    
    private func risingContentImageViewConfig() {
        self.risingContentImageViews[0].contentMode = .scaleAspectFill
        self.risingContentImageViews[0].layer.cornerRadius = 5
        
        self.risingContentImageViews[0].contentMode = .scaleAspectFill
        self.risingContentImageViews[0].layer.cornerRadius = 5
        
        self.risingContentImageViews[0].contentMode = .scaleAspectFill
        self.risingContentImageViews[0].layer.cornerRadius = 5
    }
    
    private func randomBannerConfig() {
        let first = Int.random(in: 1...3)
        let second = Int.random(in: 1...3)
        let third = Int.random(in: 1...3)
        
        if first == 1 {
            self.topTenImageViews[0].image = UIImage(named: "top10 badge")
        } else {
            self.topTenImageViews[0].image = nil
        }
        
        if second == 1 {
            self.topTenImageViews[1].image = UIImage(named: "top10 badge")
        } else {
            self.topTenImageViews[1].image = nil
        }
        
        if third == 1 {
            self.topTenImageViews[2].image = UIImage(named: "top10 badge")
        } else {
            self.topTenImageViews[2].image = nil
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        randomContentImage()
        randomBannerConfig()
    }

}
