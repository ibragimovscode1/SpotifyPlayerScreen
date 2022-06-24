//
//  ViewController.swift
//  SpotifyPlayerScreen
//
//  Created by Rahmetullah on 23.06.2022.
//

import UIKit

class SpotifyPlayer: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        view.backgroundColor = .white

        // Comment in incrementally...
              let albumImage = makeImageView(named: "rush")
                let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
               let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        //
                let playButton = makePlayButton()
               let previewStartLabel = makePreviewLabel(withText: "0:00")
              let previewEndLabel = makePreviewLabel(withText: "0:30")
              let progressView = makeProgressView()
        //
            let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        //
            view.addSubview(albumImage)
            view.addSubview(trackLabel)
            view.addSubview(albumLabel)
        //
            view.addSubview(playButton)
    
            view.addSubview(previewStartLabel)
            view.addSubview(progressView)
           view.addSubview(previewEndLabel)
        //
            view.addSubview(spotifyButton)

        // Start your layout here...
        NSLayoutConstraint.activate([
        
            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            albumImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            albumImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 8),
            trackLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8),
            albumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8),
            playButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 4),
            playButton.widthAnchor.constraint(equalToConstant: 50),
            playButton.heightAnchor.constraint(equalToConstant: 50),
            
            previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8),
            
//           progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
//            progressView.leadingAnchor.constraint(equalTo:previewStartLabel.trailingAnchor, constant: 4)  ,        progressView.trailingAnchor.constraint(equalTo: previewEndLabel.leadingAnchor, constant: -4),
//
            progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 8),
            progressView.trailingAnchor.constraint(equalTo: previewEndLabel.leadingAnchor, constant: -4),
//
            previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewEndLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            spotifyButton.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 32),
            spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
//
            
        
        ])


    }
}




