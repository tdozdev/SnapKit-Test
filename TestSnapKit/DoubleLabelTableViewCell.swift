//
//  DoubleLabelTableViewCell.swift
//  TestSnapKit
//
//  Created by 영근 김 on 2020/04/21.
//  Copyright © 2020 영근 김. All rights reserved.
//

import UIKit

class DoubleLabelTableViewCell: UITableViewCell {

    lazy var leftLabel = UILabel()
    lazy var rightLabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.addSubview(leftLabel)
        self.addSubview(rightLabel)
        leftLabel.backgroundColor = .yellow
        rightLabel.backgroundColor = .cyan
        contentView.backgroundColor = .brown
        
        leftLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(self).offset(16)
            make.trailing.equalTo(rightLabel.snp.leading)
            make.centerY.equalTo(self.snp.centerY)
        }
        
        rightLabel.snp.makeConstraints { (make) in
            make.trailing.equalTo(self).offset(-16)
            make.centerY.equalTo(self)
            make.width.equalTo(100)
        }
    }
}
