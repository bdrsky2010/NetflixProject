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
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var likeListButton: UIButton!
    
    @IBOutlet weak var risingContentLabel: UILabel!
    @IBOutlet weak var risingContentFirstImageView: UIImageView!
    @IBOutlet weak var risingContentSecondImageView: UIImageView!
    @IBOutlet weak var risingContentThirdImageView: UIImageView!
    
    @IBOutlet weak var firstTopTenImageView: UIImageView!
    @IBOutlet weak var secondTopTenImageView: UIImageView!
    @IBOutlet weak var thirdTopTenImageView: UIImageView!
    
    
    private var contents = ["노량", "더퍼스트슬램덩크", "밀수", "범죄도시3", "서울의봄", "스즈메의문단속", "아바타물의길", "오펜하이머", "육사오", "콘크리트유토피아"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.backgroundColor = .black
        
        titleLabelConfig()
        mainContentImageConfig()
        buttonConfig()
        randomContentImage()
        risingContentLabelConfig()
        risingContentImageViewConfig()
        randomBannerConfig()
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
    
    private func buttonConfig() {
        self.playButton.titleLabel?.font = .boldSystemFont(ofSize: 12)
        self.playButton.setTitle("재생", for: .normal)
        self.playButton.setTitleColor(.black, for: .normal)
        self.playButton.setTitleColor(.darkGray, for: .highlighted)
        self.playButton.setImage(UIImage(named: "play"), for: .normal)
        self.playButton.backgroundColor = .white
        self.playButton.layer.cornerRadius = 5
        
        self.likeListButton.titleLabel?.font = .boldSystemFont(ofSize: 12)
        self.likeListButton.setTitle("내가 찜한 리스트", for: .normal)
        self.likeListButton.setTitleColor(.white, for: .normal)
        self.likeListButton.setImage(UIImage(systemName: "plus"), for: .normal)
        self.likeListButton.tintColor = .white
        self.likeListButton.backgroundColor = .darkGray
        self.likeListButton.layer.cornerRadius = 5
    }
    
    private func randomContentImage() {
        self.contents.shuffle()
        self.mainContentImageView.image = UIImage(named: contents[0])
        self.risingContentFirstImageView.image = UIImage(named: contents[1])
        self.risingContentSecondImageView.image = UIImage(named: contents[2])
        self.risingContentThirdImageView.image = UIImage(named: contents[3])
    }
    
    private func risingContentLabelConfig() {
        self.risingContentLabel.text = "지금 뜨는 콘텐츠"
        self.risingContentLabel.textAlignment = .left
        self.risingContentLabel.textColor = .white
    }
    
    private func risingContentImageViewConfig() {
        self.risingContentFirstImageView.contentMode = .scaleAspectFill
        self.risingContentFirstImageView.layer.cornerRadius = 5
        
        self.risingContentSecondImageView.contentMode = .scaleAspectFill
        self.risingContentSecondImageView.layer.cornerRadius = 5
        
        self.risingContentThirdImageView.contentMode = .scaleAspectFill
        self.risingContentThirdImageView.layer.cornerRadius = 5
    }
    
    private func randomBannerConfig() {
        let first = Int.random(in: 1...3)
        let second = Int.random(in: 1...3)
        let third = Int.random(in: 1...3)
        
        if first == 1 {
            self.firstTopTenImageView.image = UIImage(named: "top10 badge")
            self.firstTopTenImageView.contentMode = .scaleAspectFill
        } else if first == 2 {
            self.firstTopTenImageView.image = nil
        } else {
            self.firstTopTenImageView.image = nil
        }
        
        if second == 1 {
            self.secondTopTenImageView.image = UIImage(named: "top10 badge")
            self.secondTopTenImageView.contentMode = .scaleAspectFill
        } else if second == 2 {
            self.secondTopTenImageView.image = nil
        } else {
            self.secondTopTenImageView.image = nil
        }
        
        if third == 1 {
            self.thirdTopTenImageView.image = UIImage(named: "top10 badge")
            self.thirdTopTenImageView.contentMode = .scaleAspectFill
        } else if third == 2 {
            self.thirdTopTenImageView.image = nil
        } else {
            self.thirdTopTenImageView.image = nil
        }
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        randomContentImage()
        randomBannerConfig()
    }
    
    @IBAction func likeListButtonTapped(_ sender: UIButton) {
        randomContentImage()
        randomBannerConfig()
    }
}
