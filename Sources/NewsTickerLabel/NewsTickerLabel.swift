//
//  NewsTickerLabel.swift
//
//
//  Created by Yusif Aliyev on 19.03.23.
//

import UIKit

@IBDesignable class NewsTickerLabel: UIView {
    
    private var debugMode: Bool = false
    
    @IBInspectable public var text: String = ""
    @IBInspectable public var textColor: UIColor = .black
    @IBInspectable public var fontName: String = "Helvetica Neue"
    @IBInspectable public var fontSize: CGFloat = 17
    @IBInspectable public var padding: CGFloat = 8
    @IBInspectable public var duration: Double = 5
    @IBInspectable public var delay: Double = 0
    @IBInspectable public var scrollsToLeft: Bool = true
    
    private var backgroundView: UIView!
    private var stackView: UIStackView!
    private var label: UILabel!
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        setupBackgroundView()
        setupStackView()
        setupLabel()
    }
    
    private func setupBackgroundView() {
        backgroundView = UIView()
        
        if debugMode {
            backgroundView.backgroundColor = .red
        } else {
            backgroundView.backgroundColor = .clear
        }
        
        addSubview(backgroundView)
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        if let backgroundView = backgroundView {
            NSLayoutConstraint(item: backgroundView, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0).isActive = true
            NSLayoutConstraint(item: backgroundView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 1, constant: 0).isActive = true
            NSLayoutConstraint(item: backgroundView, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
            NSLayoutConstraint(item: backgroundView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        }
    }
    
    private func setupStackView() {
        guard let backgroundView = backgroundView else { return }
        
        stackView = UIStackView()
        stackView.alignment = .leading
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = padding
        
        if debugMode {
            stackView.backgroundColor = .green
        } else {
            stackView.backgroundColor = .clear
        }
        
        backgroundView.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        if let stackView = stackView {
            NSLayoutConstraint(item: stackView, attribute: .height, relatedBy: .equal, toItem: backgroundView, attribute: .height, multiplier: 1, constant: 0).isActive = true
            NSLayoutConstraint(item: stackView, attribute: .centerY, relatedBy: .equal, toItem: backgroundView, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
            if scrollsToLeft {
                NSLayoutConstraint(item: stackView, attribute: .leading, relatedBy: .equal, toItem: backgroundView, attribute: .leading, multiplier: 1, constant: padding).isActive = true
            } else {
                NSLayoutConstraint(item: stackView, attribute: .trailing, relatedBy: .equal, toItem: backgroundView, attribute: .trailing, multiplier: 1, constant: padding * -1).isActive = true
            }
        }
    }
    
    private func setupLabel() {
        guard let stackView = stackView else { return }
        
        label = UILabel()
        label.textColor = textColor
        label.font = UIFont(name: fontName, size: fontSize)
        label.text = text
        label.numberOfLines = 1
        
        if scrollsToLeft {
            label.textAlignment = .left
        } else {
            label.textAlignment = .right
        }
        
        if debugMode {
            label.backgroundColor = .blue
        } else {
            label.backgroundColor = .clear
        }
        
        stackView.addArrangedSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        if let label = label {
            NSLayoutConstraint(item: label, attribute: .height, relatedBy: .equal, toItem: stackView, attribute: .height, multiplier: 1, constant: 0).isActive = true
        }
    }
    
    private func getLabelWidth() -> CGFloat {
        return label.frame.size.width
    }
    
    private func getStackViewWidth() -> CGFloat {
        return stackView.frame.size.width
    }
    
    private func getWidth() -> CGFloat {
        return frame.size.width
    }
    
    public func activate() {
        let labelWidth = getLabelWidth()
        let width = getWidth() - padding * 2
        
        if labelWidth > width {
            setupAnimation()
        }
    }
    
    private func setupAnimation() {
        guard let label = label else { return }

        let copy = UILabel()
        copy.backgroundColor = label.backgroundColor
        copy.textColor = label.textColor
        copy.font = label.font
        copy.text = label.text
        copy.numberOfLines = label.numberOfLines
        copy.textAlignment = label.textAlignment

        if scrollsToLeft {
            stackView.addArrangedSubview(copy)
        } else {
            stackView.insertArrangedSubview(copy, at: 0)
        }
        
        copy.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: copy, attribute: .height, relatedBy: .equal, toItem: label, attribute: .height, multiplier: 1, constant: 0).isActive = true
        
        startAnimation()
    }
    
    private func startAnimation() {
        stackView.transform = .identity
        
        var translation: CGFloat = 0
        
        if scrollsToLeft {
            translation = -1 * (getLabelWidth() + padding)
        } else {
            translation = getLabelWidth() + padding
        }
        
        UIView.animate(withDuration: duration, delay: delay, options: .curveLinear) {
            self.stackView.transform = CGAffineTransform(translationX: translation, y: 0)
        } completion: { _ in
            var copy: UILabel = UILabel()
            
            if self.scrollsToLeft {
                copy = self.stackView.arrangedSubviews.last as! UILabel
            } else {
                copy = self.stackView.arrangedSubviews.first as! UILabel
            }
            
            copy.removeFromSuperview()
            
            self.setupAnimation()
        }
    }
    
}
