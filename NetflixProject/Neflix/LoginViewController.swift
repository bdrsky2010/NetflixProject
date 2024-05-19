//
//  LoginViewController.swift
//  NetflixProject
//
//  Created by Minjae Kim on 5/16/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locateTextField: UITextField!
    @IBOutlet weak var recommendCodeTextField: UITextField!
    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var plusInfoLabel: UILabel!
    @IBOutlet weak var toggleButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.backgroundColor = .black
        
        titleLabelConfig()
        textFieldConfig()
        joinButtonConfig()
        plusInfoLabelConfig()
        toggleButtonConfig()
    }
    
    private func titleLabelConfig() {
        self.titleLabel.text = "JACKFLIX"
        self.titleLabel.font = .systemFont(ofSize: 25, weight: .black)
        self.titleLabel.textColor = .red
        self.titleLabel.textAlignment = .center
    }
    
    private func textFieldConfig() {
        self.idTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.idTextField.textColor = .white
        self.idTextField.backgroundColor = .darkGray
        self.idTextField.borderStyle = .roundedRect
        self.idTextField.textAlignment = .center
        
        self.passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.passwordTextField.textColor = .white
        self.passwordTextField.backgroundColor = .darkGray
        self.passwordTextField.borderStyle = .roundedRect
        self.passwordTextField.textAlignment = .center
        self.passwordTextField.isSecureTextEntry = true
        
        self.nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.nicknameTextField.textColor = .white
        self.nicknameTextField.backgroundColor = .darkGray
        self.nicknameTextField.borderStyle = .roundedRect
        self.nicknameTextField.textAlignment = .center
        
        self.locateTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.locateTextField.textColor = .white
        self.locateTextField.backgroundColor = .darkGray
        self.locateTextField.borderStyle = .roundedRect
        self.locateTextField.textAlignment = .center
        
        self.recommendCodeTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.recommendCodeTextField.textColor = .white
        self.recommendCodeTextField.backgroundColor = .darkGray
        self.recommendCodeTextField.borderStyle = .roundedRect
        self.recommendCodeTextField.textAlignment = .center
    }
    
    private func joinButtonConfig() {
        self.joinButton.setTitle("회원가입", for: .normal)
        self.joinButton.setTitleColor(.black, for: .normal)
        self.joinButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        self.joinButton.backgroundColor = .white
        self.joinButton.layer.cornerRadius = 5
    }
    
    private func plusInfoLabelConfig() {
        self.plusInfoLabel.text = "추가 정보 입력"
        self.plusInfoLabel.textColor = .white
    }
    
    private func toggleButtonConfig() {
        self.toggleButton.onTintColor = .red
    }
    
    
    @IBAction func idTextFieldReturned(_ sender: UITextField) {
    }
    
    @IBAction func passwordTextFieldReturned(_ sender: UITextField) {
    }
    
    @IBAction func nicknameTextFieldReturned(_ sender: UITextField) {
    }
    
    @IBAction func locateTextFieldReturned(_ sender: UITextField) {
    }
    
    @IBAction func recommendCodeReturned(_ sender: UITextField) {
    }
    
    
    
}
