//
//  AnimalViewController.swift
//  group3_assignment5
//
//  Created by Evan Shrestha on 10/7/18.
//  Copyright © 2018 Group 3. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var animalCollectionView: AnimalCollectionView!
    
    var animalIndex = -1
    private let reuseIdentifier = "animalCollectionCell"
    private var galleryDict : NSDictionary? = [:]
    private let headerText = ["something about the Aha Ha", "animal header", "sagiasdjfa;", "womboboat"]
    private let footerText = ["aha Ha feet", "animal foot", "atenlopet footer;", "tabmow"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryDict!.count + 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! AnimalCollectionViewCell
        
        let headerCell = collectionView.dequeueReusableCell(withReuseIdentifier: "headerCell", for: indexPath) as! HeaderCollectionViewCell
        let footerCell = collectionView.dequeueReusableCell(withReuseIdentifier: "footerCell", for: indexPath) as! FooterCollectionViewCell
        
        if indexPath.row == 0 {
            headerCell.headerLabel.text = headerText[animalIndex]
            return headerCell
        }
        
        if indexPath.row == galleryDict!.count + 1 {
            footerCell.footerLabel.text = headerText[animalIndex]
            return footerCell
        }
        
        let currImage : String = (galleryDict?.allKeys[indexPath.row - 1] as? String)!
        
        cell.animalGalleryImage.image = UIImage(named: currImage)
        
        cell.animalCaptionLabel.text = (galleryDict?[currImage] as! String)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize = UIScreen.main.bounds
        
        if indexPath.row == 0 || indexPath.row == galleryDict!.count + 1 {
            return CGSize(width: screenSize.width, height: 100)
        }
        return CGSize(width: 375, height: 246)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(animalIndex)
        
        animalCollectionView.delegate = self
        animalCollectionView.dataSource = self
        
        if let path = Bundle.main.path(forResource: "animalPList", ofType: "plist"),
            let galleryArray = NSArray(contentsOfFile: path){
            galleryDict = (galleryArray[animalIndex] as! NSDictionary)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
