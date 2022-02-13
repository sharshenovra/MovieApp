//
//  ViewController.swift
//  MovieApp
//
//  Created by Ruslan Sharshenov on 13.02.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    // Top View
    private lazy var topView = UIView()
    private lazy var menuButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(named: "menu"), for: .normal)
        view.tintColor = .black
        return view
    }()
    private lazy var searchButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(named: "search"), for: .normal)
        view.tintColor = .black
        return view
    }()
    // Categories
    private lazy var categoriesView = UIView()
    private lazy var inTheaterLabel: UILabel = {
        let view = UILabel()
        view.text = "In Theater"
        view.font = .systemFont(ofSize: 30, weight: .semibold)
        view.textColor = .black
        return view
    }()
    private lazy var boxOfficeLabel: UILabel = {
        let view = UILabel()
        view.text = "Box Office"
        view.textColor = .black
        view.layer.opacity = 0.3
        view.font = .systemFont(ofSize: 30, weight: .semibold)
        return view
    }()
    private lazy var comingSoonLabel: UILabel = {
        let view = UILabel()
        view.text = "Coming Soon"
        view.textColor = .black
        view.layer.opacity = 0.3
        view.font = .systemFont(ofSize: 30, weight: .semibold)
        return view
    }()
    private lazy var pinkView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 1, green: 0.43, blue: 0.56, alpha: 1)
        view.layer.cornerRadius = 3
        return view
    }()
    // Genres
    private lazy var genresView = UIView()
    private lazy var actionView: UIView = {
        let view = UIView()
        view.layer.opacity = 0.15
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 0.07, green: 0.08, blue: 0.24, alpha: 1).cgColor
        view.layer.borderWidth = 1.5
        return view
    }()
    private lazy var actionLabel: UILabel = {
        let view = UILabel()
        view.text = "Action"
        view.font = .systemFont(ofSize: 20, weight: .medium)
        view.textAlignment = .center
        view.textColor = UIColor(red: 0.26, green: 0.27, blue: 0.44, alpha: 1)
        return view
    }()
    private lazy var crimeView: UIView = {
        let view = UIView()
        view.layer.opacity = 0.15
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 0.07, green: 0.08, blue: 0.24, alpha: 1).cgColor
        view.layer.borderWidth = 1.5
        return view
    }()
    private lazy var crimeLabel: UILabel = {
        let view = UILabel()
        view.text = "Crime"
        view.font = .systemFont(ofSize: 20, weight: .medium)
        view.textAlignment = .center
        view.textColor = UIColor(red: 0.26, green: 0.27, blue: 0.44, alpha: 1)
        return view
    }()
    private lazy var comedyView: UIView = {
        let view = UIView()
        view.layer.opacity = 0.15
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 0.07, green: 0.08, blue: 0.24, alpha: 1).cgColor
        view.layer.borderWidth = 1.5
        return view
    }()
    private lazy var comedyLabel: UILabel = {
        let view = UILabel()
        view.text = "Comedy"
        view.font = .systemFont(ofSize: 20, weight: .medium)
        view.textAlignment = .center
        view.textColor = UIColor(red: 0.26, green: 0.27, blue: 0.44, alpha: 1)
        return view
    }()
    private lazy var dramaView: UIView = {
        let view = UIView()
        view.layer.opacity = 0.15
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor(red: 0.07, green: 0.08, blue: 0.24, alpha: 1).cgColor
        view.layer.borderWidth = 1.5
        return view
    }()
    private lazy var dramaLabel: UILabel = {
        let view = UILabel()
        view.text = "Drama"
        view.font = .systemFont(ofSize: 20, weight: .medium)
        view.textAlignment = .center
        view.textColor = UIColor(red: 0.26, green: 0.27, blue: 0.44, alpha: 1)
        return view
    }()
    // Movie
    private lazy var movieImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "JohnWick1")
        view.layer.cornerRadius = 50
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 10)
        view.layer.shadowOpacity = 0.1
        return view
    }()
    private lazy var fordVFerrariLabel: UILabel = {
        let view = UILabel()
        view.text = "Ford v Ferrari"
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 30, weight: .semibold)
        view.textColor = UIColor(red: 0.07, green: 0.08, blue: 0.24, alpha: 1)
        return view
    }()
    private lazy var starButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(named: "Vector"), for: .normal)
        view.tintColor = UIColor(red: 0.99, green: 0.77, blue: 0.1, alpha: 1)
        return view
    }()
    private lazy var eightTwoLabel: UILabel = {
        let view = UILabel()
        view.text = "8.2"
        view.font = .systemFont(ofSize: 18, weight: .medium)
        view.textAlignment = .center
        view.textColor = UIColor(red: 0.26, green: 0.27, blue: 0.44, alpha: 1)
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutSubviews()
        
    }
    
    private func layoutSubviews(){
        view.backgroundColor = .white
        //Top View
        view.addSubview(topView)
        topView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(56)
            make.left.equalToSuperview().offset(32)
            make.right.equalToSuperview().offset(-32)
            make.width.equalTo(406)
            make.height.equalTo(24)
        }
        topView.addSubview(menuButton)
        menuButton.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.height.width.equalTo(24)
        }
        topView.addSubview(searchButton)
        searchButton.snp.makeConstraints { make in
            make.right.equalToSuperview()
            make.height.width.equalTo(24)
        }
        //Categories
        view.addSubview(categoriesView)
        categoriesView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(32)
            make.right.equalToSuperview().offset(130)
            make.top.equalToSuperview().offset(128)
            make.height.equalTo(61)
            make.width.equalTo(568)
        }
        categoriesView.addSubview(inTheaterLabel)
        inTheaterLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-22)
            make.height.equalTo(39)
            make.width.equalTo(146)
            make.top.left.equalToSuperview()
        }
        categoriesView.addSubview(boxOfficeLabel)
        boxOfficeLabel.snp.makeConstraints { make in
            make.bottom.equalTo(inTheaterLabel)
            make.height.equalTo(39)
            make.width.equalTo(148)
            make.left.equalTo(inTheaterLabel.snp.right).offset(40)
        }
        categoriesView.addSubview(comingSoonLabel)
        comingSoonLabel.snp.makeConstraints { make in
            make.bottom.equalTo(inTheaterLabel)
            make.height.equalTo(39)
            make.width.equalTo(194)
            make.left.equalTo(boxOfficeLabel.snp.right).offset(40)
        }
        categoriesView.addSubview(pinkView)
        pinkView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(55)
            make.height.equalTo(6)
            make.width.equalTo(40)
        }
        // Genres
        view.addSubview(genresView)
        genresView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(237)
            make.left.equalToSuperview().offset(32)
            make.right.equalToSuperview().offset(56)
            make.height.equalTo(40)
            make.width.equalTo(494)
        }
        genresView.addSubview(actionView)
        actionView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo(105)
        }
        genresView.addSubview(actionLabel)
        actionLabel.snp.makeConstraints { make in
            make.edges.equalTo(actionView)
        }
        genresView.addSubview(crimeView)
        crimeView.snp.makeConstraints { make in
            make.left.equalTo(actionLabel.snp.right).offset(20)
            make.height.equalToSuperview()
            make.width.equalTo(101)
        }
        genresView.addSubview(crimeLabel)
        crimeLabel.snp.makeConstraints { make in
            make.edges.equalTo(crimeView)
        }
        genresView.addSubview(comedyView)
        comedyView.snp.makeConstraints { make in
            make.left.equalTo(crimeLabel.snp.right).offset(20)
            make.height.equalToSuperview()
            make.width.equalTo(123)
        }
        genresView.addSubview(comedyLabel)
        comedyLabel.snp.makeConstraints { make in
            make.edges.equalTo(comedyView)
        }
        genresView.addSubview(dramaView)
        dramaView.snp.makeConstraints { make in
            make.left.equalTo(comedyLabel.snp.right).offset(20)
            make.height.equalToSuperview()
            make.width.equalTo(105)
        }
        genresView.addSubview(dramaLabel)
        dramaLabel.snp.makeConstraints { make in
            make.edges.equalTo(dramaView)
        }
        // Movie Image
        view.addSubview(movieImage)
        movieImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(349)
            make.left.equalToSuperview().offset(80)
            make.right.equalToSuperview().offset(-80)
            make.height.equalTo(458.92)
            make.width.equalTo(310)
            make.bottom.equalToSuperview().offset(-210.08)
        }
        view.addSubview(fordVFerrariLabel)
        fordVFerrariLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(139)
            make.bottom.equalToSuperview().offset(-131)
        }
        view.addSubview(starButton)
        starButton.snp.makeConstraints { make in
            make.top.equalTo(fordVFerrariLabel.snp.bottom).offset(9)
            make.height.equalTo(15.84)
            make.width.equalTo(16.63)
            make.left.equalToSuperview().offset(208)
            make.bottom.equalToSuperview().offset(-104.5)
        }
        view.addSubview(eightTwoLabel)
        eightTwoLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-101)
            make.left.equalTo(starButton.snp.right).offset(8)
            make.top.equalTo(fordVFerrariLabel.snp.bottom).offset(8)
        }
    }
    
    
}

