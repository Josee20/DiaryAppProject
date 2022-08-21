//
//  MainView.swift
//  DiaryAppProject
//
//  Created by 이동기 on 2022/08/22.
//

import UIKit
import SnapKit

class MainView: BaseView {
    
    let photoImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .systemGray4
//        view.image = UIImage(systemName: "star.fill")
        view.layer.cornerRadius = 5
        return view
    }()
    
    let movePhotoGalleryButton: UIButton = {
        let view = UIButton()
        view.layer.cornerRadius = 30
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    let firstTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "텍스트를 입력해주세요"
        view.textAlignment = .center
        view.backgroundColor = .systemGray4
        view.layer.cornerRadius = 5
        return view
    }()
    
    let secondTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "텍스트를 입력해주세요"
        view.textAlignment = .center
        view.backgroundColor = .systemGray4
        view.layer.cornerRadius = 5
        return view
    }()
    
    let textView: UITextView = {
        let view = UITextView()
        view.layer.cornerRadius = 5
        view.backgroundColor = .systemGray4
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [photoImageView, movePhotoGalleryButton, firstTextField, secondTextField, textView].forEach { value in
            self.addSubview(value)
        }
    }
    
    override func setConstraints() {
        
        photoImageView.snp.makeConstraints {
            $0.topMargin.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(UIScreen.main.bounds.height * 0.3)
        }
        
        movePhotoGalleryButton.snp.makeConstraints {
            $0.width.equalTo(60)
            $0.height.equalTo(60)
            $0.trailingMargin.equalTo(photoImageView.snp.trailing).offset(-20)
            $0.bottomMargin.equalTo(photoImageView.snp.bottom).offset(-20)
        }
        
        firstTextField.snp.makeConstraints {
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(50)
            $0.topMargin.equalTo(photoImageView.snp.bottom).offset(20)
        }
        
        secondTextField.snp.makeConstraints {
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(50)
            $0.topMargin.equalTo(firstTextField.snp.bottom).offset(20)
        }
        
        textView.snp.makeConstraints {
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.bottomMargin.equalTo(-20)
            $0.topMargin.equalTo(secondTextField.snp.bottom).offset(20)
        }
    }
}
