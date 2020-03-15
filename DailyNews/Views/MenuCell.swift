
import UIKit

class MenuCell : UICollectionViewCell {
    
    let label = UILabel(text: "Magazin", font: .boldSystemFont(ofSize: 16))
    

    override var isSelected: Bool {
        didSet {
            label.textColor = isSelected ? .black : .lightGray
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        backgroundColor = .blue
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(label)
        label.fillSuperview()
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .lightGray

    }
}
