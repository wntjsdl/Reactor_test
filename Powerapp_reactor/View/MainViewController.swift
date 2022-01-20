//
//  MainViewController.swift
//  Powerapp_reactor
//
//  Created by KJS on 2022/01/18.
//

import UIKit
import WebKit
import RxSwift
import RxCocoa
import ReactorKit
import SnapKit

class MainViewController: UIViewController, View {
    var disposeBag = DisposeBag()
    
    var shopInfo: ShopInfoModel?
    var webView: WKWebView!
    var testLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        reactor = MainViewReactor()
        
        let tempUrl = URL(string: "https://www.cocenstore.com")
        webView.load(URLRequest(url: tempUrl!))
        
    }
    
    func setup() {
        addSubviews()
        setLayout()
    }
    
    func addSubviews() {
        /// webview
        webView = WKWebView(frame: .zero)
        view.addSubview(webView)
        
        /// testbutton
        testLabel = UILabel(frame: CGRect(x: 150, y: 300, width: 200, height: 50))
        testLabel.backgroundColor = .red
        view.addSubview(testLabel)
    }
    
    func setLayout() {
        webView.snp.makeConstraints {
            $0.top.equalTo(view.snp.top)
            $0.bottom.equalTo(view.snp.bottom)
            $0.leading.equalTo(view.snp.leading)
            $0.trailing.equalTo(view.snp.trailing)
        }
    }
    
    func bind(reactor: MainViewReactor) {
        Observable.just(Void())
            .map{ Reactor.Action.viewDidLoad }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        Observable.just(Void())
            .map{ Reactor.Action.viewDidLoad }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        reactor.state
            .map{ "\($0.bottomCollectionUrlList)" }
            .bind(to: testLabel.rx.text)
            .disposed(by: disposeBag)
    }


}
