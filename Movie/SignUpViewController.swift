

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var recommendTextField: UITextField!
    @IBOutlet weak var addNewInfo: UIButton!
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var someSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 맨 위 제목 설정
        topLabel.text = "YUNFLIX"
        topLabel.textColor = .red
        topLabel.font = .boldSystemFont(ofSize: 40)
        topLabel.textAlignment = .center
        
        
        addNewInfo.setTitle("추가 정보 입력", for: .normal)
        addNewInfo.setTitleColor(.white, for: .normal)
     
        someSwitch.setOn(true, animated: true)
        someSwitch.onTintColor = .red
        someSwitch.thumbTintColor = .white
        
        emailTextFieldDesign()
        passwordTextFieldDesign(passwordTextField, "비밀번호", .gray, .systemFont(ofSize: 15))
        nicknameTextFieldDesign()
        locationTextFieldDesign()
        recommendTextFieldDesign()
        registerButtonDesign(buttonName: registerButton, buttonTitle: "회원가입하세요", highLightedTitle: "계속 누르지마세요", buttonBackGroundColor: .white)
    }
    
    func emailTextFieldDesign() {
        emailTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        emailTextField.keyboardType = .emailAddress
        emailTextField.textColor = UIColor.white
        emailTextField.textAlignment = .center
        emailTextField.backgroundColor = .gray
        emailTextField.borderStyle = .roundedRect
        emailTextField.font = UIFont.systemFont(ofSize: 15)
    }
    
    func passwordTextFieldDesign(_ TextFieldName: UITextField, _ TextField내용: String, _ TextFieldColor: UIColor, _ TextFieldFont: UIFont) {
        
        TextFieldName.attributedPlaceholder = NSAttributedString(string: TextField내용, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        TextFieldName.isSecureTextEntry = true
        TextFieldName.keyboardType = .default
        TextFieldName.textColor = TextFieldColor
        TextFieldName.textAlignment = .center
        TextFieldName.backgroundColor = TextFieldColor
        TextFieldName.borderStyle = .roundedRect
        TextFieldName.font = TextFieldFont
    
    }
    
    func nicknameTextFieldDesign() {
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        nicknameTextField.keyboardType = .default
        nicknameTextField.textColor = UIColor.white
        nicknameTextField.textAlignment = .center
        nicknameTextField.backgroundColor = .gray
        nicknameTextField.borderStyle = .roundedRect
        nicknameTextField.font = UIFont.systemFont(ofSize: 15)
    }
    
    func locationTextFieldDesign() {
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        locationTextField.keyboardType = .default
        locationTextField.textColor = UIColor.white
        locationTextField.textAlignment = .center
        locationTextField.backgroundColor = .gray
        locationTextField.borderStyle = .roundedRect
        locationTextField.font = UIFont.systemFont(ofSize: 15)
        
    }
    
    func recommendTextFieldDesign() {
        recommendTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        recommendTextField.keyboardType = .numberPad
        recommendTextField.textColor = UIColor.white
        recommendTextField.textAlignment = .center
        recommendTextField.backgroundColor = .gray
        recommendTextField.borderStyle = .roundedRect
        recommendTextField.font = UIFont.systemFont(ofSize: 15)
    }
    
    func registerButtonDesign(buttonName: UIButton, buttonTitle: String, highLightedTitle: String, buttonBackGroundColor BGColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highLightedTitle, for: .highlighted)
        buttonName.setTitleColor(.black, for: .normal)
        buttonName.setTitleColor(.lightGray, for: .highlighted)
        buttonName.backgroundColor = BGColor
        buttonName.layer.cornerRadius = 5
        buttonName.layer.borderWidth = 1
        buttonName.layer.borderColor = UIColor.gray.cgColor
    }
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func registerButtonClicked(_ sender: UIButton) {

        }
        
        
    }

