
import UIKit

protocol EmployeeDetailTableViewControllerDelegate: AnyObject {
    func employeeDetailTableViewController(_ controller: EmployeeDetailTableViewController, didSave employee: Employee)
}

class EmployeeDetailTableViewController: UITableViewController, UITextFieldDelegate, EmployeeTypeTableViewControllerDelegate {
    func employeeTypeTableViewController(_ controller: UIViewController, didSelect employeeType: EmployeeType) {
        self.employeeType = employeeType
        employeeTypeLabel.text = employeeType.description
        employeeTypeLabel.textColor = .black
        updateSaveButtonState()
    }

    //vars
    var employeeType: EmployeeType?
    var isEditingBirthday = false {
        didSet {
            tableView.beginUpdates()
            tableView.endUpdates()
        }
    }
    var datePickerIndexPath = IndexPath(row: 2, section: 0)
    var dobLabelIndexPath = IndexPath(row: 1, section: 0)
    
    //outlets
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var dobLabel: UILabel!
    @IBOutlet var employeeTypeLabel: UILabel!
    @IBOutlet var saveBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var dobDatePicker: UIDatePicker!
        
    @IBSegueAction func showEmployeeTypes(_ coder: NSCoder) -> EmployeeTypeTableViewController? {
        let employeeTypeVC = EmployeeTypeTableViewController(coder: coder)
        employeeTypeVC?.delegate = self
        return employeeTypeVC
    }
    
    weak var delegate: EmployeeDetailTableViewControllerDelegate?
    var employee: Employee?
    
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        return dateFormatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        updateSaveButtonState()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath {
        case datePickerIndexPath where isEditingBirthday == false:
            return 0
        default:
            return UITableView.automaticDimension
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath == dobLabelIndexPath {
            isEditingBirthday.toggle()
            dobLabel.textColor = .black
        }
    }
    
    func updateView() {
        if let employee = employee {
            navigationItem.title = employee.name
            nameTextField.text = employee.name
            
            dobLabel.text = dateFormatter.string(from: employee.dateOfBirth)
            dobLabel.textColor = .black
            employeeTypeLabel.text = employee.employeeType.description
            employeeTypeLabel.textColor = .black
        } else {
            navigationItem.title = "New Employee"
        }
    }
    
    @IBAction func calendarValueChanged(_ sender: Any) {
        dobLabel.text = dobDatePicker.date.formatted(date: .numeric, time: .omitted)
        dobLabel.textColor = .black
        dobDatePicker.maximumDate = .now
    }
    
    private func updateSaveButtonState() {
        let shouldEnableSaveButton = nameTextField.text?.isEmpty == false && employeeType != nil
        saveBarButtonItem.isEnabled = shouldEnableSaveButton
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text else {
            return
        }
        guard let employeeType = self.employeeType else { return }
        
        let employee = Employee(name: name, dateOfBirth: dobDatePicker.date, employeeType: employeeType)
        delegate?.employeeDetailTableViewController(self, didSave: employee)
        performSegue(withIdentifier: "unwindToEmployee", sender: nil)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        employee = nil
    }

    @IBAction func nameTextFieldDidChange(_ sender: UITextField) {
        updateSaveButtonState()
    }

}
