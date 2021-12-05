//
//  ExplanationTextCell.swift
//  CDL
//
//  Created by Vitaliy Zagorodnov on 05.12.2021.
//
import UIKit

final class ExplanationTextCell: UITableViewCell {
    
    private lazy var explanationLabel = makeExplanationLabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Public
extension ExplanationTextCell {
    func confugure(explanation: String) {
        let attr = TextAttributes()
            .font(Fonts.SFProRounded.regular(size: 16.scale))
            .textColor(TestPalette.explanationText)
            .lineHeight(22.4.scale)
        
        explanationLabel.attributedText = explanation.attributed(with: attr)
    }
}

// MARK: Private
private extension ExplanationTextCell {
    func initialize() {
        backgroundColor = .clear
        selectionStyle = .none
    }
}

// MARK: Make constraints
private extension ExplanationTextCell {
    func makeConstraints() {
        NSLayoutConstraint.activate([
            explanationLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10.scale),
            explanationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16.scale),
            explanationLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16.scale),
            explanationLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}

// MARK: Lazy initialization
private extension ExplanationTextCell {
    func makeExplanationLabel() -> UILabel {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.numberOfLines = 0
        contentView.addSubview(view)
        return view
    }
}
