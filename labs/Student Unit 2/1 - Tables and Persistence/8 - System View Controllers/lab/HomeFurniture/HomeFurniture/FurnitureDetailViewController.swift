
import UIKit

class FurnitureDetailViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var furniture: Furniture?
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var choosePhotoButton: UIButton!
    @IBOutlet var furnitureTitleLabel: UILabel!
    @IBOutlet var furnitureDescriptionLabel: UILabel!
    
    init?(coder: NSCoder, furniture: Furniture?) {
        self.furniture = furniture
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            furniture?.imageData = image.jpegData(compressionQuality: 0.9)
            dismiss(animated: true)
            updateView()
        }
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateView() {
        guard let furniture = furniture else {return}
        if let imageData = furniture.imageData,
            let image = UIImage(data: imageData) {
            photoImageView.image = image
        } else {
            photoImageView.image = nil
        }
        
        furnitureTitleLabel.text = furniture.name
        furnitureDescriptionLabel.text = furniture.description
    }
    
    @IBAction func choosePhotoButtonTapped(_ sender: Any) {
        presentImagePickerAlert()
    }
    
    func presentImagePickerAlert() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertController.Style.actionSheet)
        
        alertController.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoLibraryAction = UIAlertAction(title:
               "Photo Library", style: .default, handler: { action in
                imagePickerController.sourceType = .photoLibrary
                self.present(imagePickerController, animated: true)
            })
            alertController.addAction(photoLibraryAction)
        }
        let takeImageAction = UIAlertAction(title: "Camera", style: .default, handler: { action in  imagePickerController.sourceType = .camera
            self.present(imagePickerController, animated: true)
            })
        alertController.addAction(takeImageAction)
        self.present(alertController, animated: true)
    }

    @IBAction func actionButtonTapped(_ sender: Any) {
        guard let image = photoImageView.image else { return }
        let activityController = UIActivityViewController(activityItems: [image, "This is a share"], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender as? UIView
        present(activityController, animated: true)
    }
    
}
