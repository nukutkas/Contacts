///
//  MainTabBarController.swift
//  Contacts
//
//  Created by Татьяна Кочетова on 23.10.2020.
//  Copyright © 2020 Nikita Kochetov. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {
    
    let profile = User(fullname: "Alexey Parkhomenko", imageString: "human1", firstCharacter: "A", id: 20)
    let favouriteUsers = Bundle.main.decode([User].self, from: "favouriteUsers.json")
    let contactUsers = Bundle.main.decode([User].self, from: "contactUsers.json")
    
    let addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBarButtonItemTapped))
    let groupsBarButtonItem = UIBarButtonItem(title: "Groups", style: .plain, target: self, action: #selector(groupsBarButtonItemTapped))
    
    enum Section: Int {
        case profile
        case favoutires
        case contacts
    }
    
    var dataSource: UICollectionViewDiffableDataSource<Section, User>! = nil
    var currentSnapshot: NSDiffableDataSourceSnapshot<Section, User>! = nil
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupNavigationBar()
        setupCollectionView()
        createDataSource()
        reloadData()
    }
    
    private func setupNavigationBar() {
        let searchController = UISearchController()
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
        
        navigationItem.leftBarButtonItem = groupsBarButtonItem
        navigationItem.rightBarButtonItem = addBarButtonItem
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Contacts"
    }
    
    private func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        
        collectionView.register(ProfileCell.self, forCellWithReuseIdentifier: ProfileCell.reuseId)
        collectionView.register(FavouriteCell.self, forCellWithReuseIdentifier: FavouriteCell.reuseId)
        collectionView.register(ContactCell.self, forCellWithReuseIdentifier: ContactCell.reuseId)
        
    }
    
    private func reloadData() {
        currentSnapshot = NSDiffableDataSourceSnapshot<Section, User>()
        
        currentSnapshot.appendSections([.profile, .favoutires, .contacts])
        currentSnapshot.appendItems([profile], toSection: .profile)
        currentSnapshot.appendItems(favouriteUsers, toSection: .favoutires)
        currentSnapshot.appendItems(contactUsers, toSection: .contacts)
        
        dataSource.apply(currentSnapshot, animatingDifferences: true)
    }
    
    // MARK: - DataSource
    func createDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, User>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, user) -> UICollectionViewCell? in
            
            guard let section = Section(rawValue: indexPath.section) else { fatalError("Unknown section type") }
            
            switch section {
            case .profile:
                return self.configure(collectionView: collectionView, cellType: ProfileCell.self, with: user, for: indexPath)
            case .favoutires:
                return self.configure(collectionView: collectionView, cellType: FavouriteCell.self, with: user, for: indexPath)
            case .contacts:
                return self.configure(collectionView: collectionView, cellType: ContactCell.self, with: user, for: indexPath)
            }
        })
    }
}


// MARK: - Actions
extension ContactsViewController {
    @objc func addBarButtonItemTapped() {
        print(#function)
    }
    
    @objc func groupsBarButtonItemTapped() {
        print(#function)
    }
}

// MARK: - UISearchBarDelegate
extension ContactsViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}

