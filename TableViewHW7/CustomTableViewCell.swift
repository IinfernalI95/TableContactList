//
//  CustomTableViewCell.swift
//  TableViewHW7
//
//  Created by Artur on 19.01.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    lazy var section: SectionView = {
        let label = SectionView()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email -"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var phoneLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone -"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var phoneImage: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(systemName: "phone")
        imgView.contentMode = .center
        imgView.translatesAutoresizingMaskIntoConstraints = false
        
        return imgView
    }()
    
    lazy var emailImage: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(systemName: "tray")
        imgView.contentMode = .center
        imgView.translatesAutoresizingMaskIntoConstraints = false
        
        return imgView
    }()
    
    lazy var separatorView: UIView = {
        let uiView = UIView()
        uiView.backgroundColor = .lightGray.withAlphaComponent(0.6)
        uiView.contentMode = .center
        uiView.translatesAutoresizingMaskIntoConstraints = false
        
        return uiView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .white
        section.translatesAutoresizingMaskIntoConstraints = false
        addSubview(section)
        addSubview(phoneLabel)
        addSubview(phoneImage)
        addSubview(separatorView)
        addSubview(emailImage)
        addSubview(emailLabel)
        selectionStyle = .none
        makeConstraints()
    }
    
    func setTitle(title: String) {
        section.setTitle(title: title)
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            section.widthAnchor.constraint(equalTo: widthAnchor),
            section.heightAnchor.constraint(equalToConstant: 20),
            section.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            
            phoneImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            phoneImage.widthAnchor.constraint(equalToConstant: 20),
            phoneImage.heightAnchor.constraint(equalToConstant: 20),
            phoneImage.topAnchor.constraint(equalTo: section.bottomAnchor, constant: 8),
            
            phoneLabel.leftAnchor.constraint(equalTo: phoneImage.rightAnchor, constant: 16),
            phoneLabel.heightAnchor.constraint(equalToConstant: 20),
            phoneLabel.topAnchor.constraint(equalTo: phoneImage.topAnchor),
            
            separatorView.widthAnchor.constraint(equalTo: widthAnchor),
            separatorView.leftAnchor.constraint(equalTo: phoneLabel.leftAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 0.5),
            separatorView.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 8),
            
            emailImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            emailImage.widthAnchor.constraint(equalToConstant: 20),
            emailImage.heightAnchor.constraint(equalToConstant: 20),
            emailImage.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 8),
            
            emailLabel.leftAnchor.constraint(equalTo: phoneLabel.leftAnchor),
            emailLabel.heightAnchor.constraint(equalTo: phoneLabel.heightAnchor),
            emailLabel.topAnchor.constraint(equalTo: emailImage.topAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func setupCell(image: String) {
//        rightImage.image = UIImage(named: image)
//    }
}

class SectionView: UIView {
    
    lazy var fullNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Full Name -"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .lightGray.withAlphaComponent(0.8)
        addSubview(fullNameLabel)
        setConstraint()
    }
    
    public func setTitle(title: String) {
        fullNameLabel.text = title
    }
    
    func setConstraint() {
        NSLayoutConstraint.activate([
            fullNameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            fullNameLabel.widthAnchor.constraint(equalTo: widthAnchor),
            fullNameLabel.heightAnchor.constraint(equalTo: heightAnchor),
            fullNameLabel.topAnchor.constraint(equalTo: topAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
