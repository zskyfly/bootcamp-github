//
//  RepoResultTableViewCell.swift
//  GithubDemo
//
//  Created by Zachary Matthews on 2/16/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoResultTableViewCell: UITableViewCell {
    var githubRepo: GithubRepo? {
        didSet {
            if let githubRepo = githubRepo {
                nameLabel.text = githubRepo.name
                avatarImageView.setImageWithURL(NSURL(string: githubRepo.ownerAvatarURL!)!)
                descriptionLabel.text = githubRepo.repoDescription
                authorLabel.text = githubRepo.ownerHandle
                forkCountLabel.text = String(githubRepo.forks!)
                starCountLabel.text = String(githubRepo.stars!)
            }
        }
    }

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var forkCountLabel: UILabel!
    @IBOutlet weak var starCountLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        descriptionLabel.preferredMaxLayoutWidth = descriptionLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
