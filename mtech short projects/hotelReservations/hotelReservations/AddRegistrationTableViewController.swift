//
//  AddRegistrationTableViewController.swift
//  hotelReservations
//
//  Created by Paul Stewart on 10/25/23.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController,
   SelectRoomTypeTableViewControllerDelegate {
    
    func selectRoomTypeTableViewController(_ controller:
       SelectRoomTypeTableViewController, didSelect roomType:
       RoomType) {
        self.roomType = roomType
        updateRoomType()
    }
    
    let checkInDatePickerCellIndexPath = IndexPath(row: 1, section: 1)
    let checkOutDatePickerCellIndexPath = IndexPath(row: 3, section: 1)
    let checkInDateLabelCellIndexPath = IndexPath(row: 0, section: 1)
    let checkOutDateLabelCellIndexPath = IndexPath(row: 2, section: 1)

    var isCheckInDatePickerVisible: Bool = false {
        didSet {
            checkInDatePicker.isHidden = !isCheckInDatePickerVisible
        }
    }
    var isCheckOutDatePickerVisible: Bool = false {
        didSet {
            checkOutDatePicker.isHidden = !isCheckOutDatePickerVisible
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath {
        case checkInDatePickerCellIndexPath where
            isCheckInDatePickerVisible == false:
            return 0
        case checkOutDatePickerCellIndexPath where
            isCheckOutDatePickerVisible == false:
            return 0
        default:
            return UITableView.automaticDimension
        }
    }
//    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//    }
    
    override func tableView(_ tableView: UITableView,
       didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath == checkInDateLabelCellIndexPath &&
           isCheckOutDatePickerVisible == false {
            // check-in label selected, check-out picker is not visible, toggle check-in picker
            isCheckInDatePickerVisible.toggle()
        } else if indexPath == checkOutDateLabelCellIndexPath &&
           isCheckInDatePickerVisible == false {
            // check-out label selected, check-in picker is not visible, toggle check-out picker
            isCheckOutDatePickerVisible.toggle()
        } else if indexPath == checkInDateLabelCellIndexPath ||
           indexPath == checkOutDateLabelCellIndexPath {
            // either label was selected, previous conditions failed meaning at least one picker is visible, toggle both
            isCheckInDatePickerVisible.toggle()
            isCheckOutDatePickerVisible.toggle()
        } else {
            return
        }
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    //vars
    var roomType: RoomType?
    //outlets
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var checkInDateLabel: UILabel!
    @IBOutlet weak var checkOutDateLabel: UILabel!
    @IBOutlet weak var checkInDatePicker: UIDatePicker!
    @IBOutlet weak var checkOutDatePicker: UIDatePicker!
    @IBOutlet var numberOfAdultsLabel: UILabel!
    @IBOutlet var numberOfAdultsStepper: UIStepper!
    @IBOutlet var numberOfChildrenLabel: UILabel!
    @IBOutlet var numberOfChildrenStepper: UIStepper!
    
    @IBOutlet weak var roomTypeDetailLabel: UILabel!
    
    @IBOutlet weak var wifiSwitch: UISwitch!
    
    @IBSegueAction func selectRoomType(_ coder: NSCoder, sender: Any?) -> SelectRoomTypeTableViewController? {
        let selectRoomTypeController = SelectRoomTypeTableViewController(coder: coder)
        selectRoomTypeController?.delegate = self
        selectRoomTypeController?.roomType = roomType
        return selectRoomTypeController
    }
    
    @IBAction func wifiSwitchChanged(_ sender: UISwitch) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let midnightToday = Calendar.current.startOfDay(for: .now)
        checkInDatePicker.minimumDate = midnightToday
        checkInDatePicker.date = midnightToday
        updateNumberOfGuests()
        updateRoomType()
    }
    
    @IBAction func cancelButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
    // MARK: - Table view data source
    
    
    var registration: Registration? {
        guard let roomType = roomType else { return nil }
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        let checkInDate = checkInDatePicker.date
        let checkOutDate = checkOutDatePicker.date
        let numberOfAdults = Int(numberOfAdultsStepper.value)
        let numberOfChildren = Int(numberOfChildrenStepper.value)
        let hasWifi = wifiSwitch.isOn
        
        return Registration(firstName: firstName,
                            lastName: lastName,
                            emailAddress: email,
                            checkInDate: checkInDate,
                            checkOutDate: checkOutDate,
                            numberOfAdults: numberOfAdults,
                            numberOfChildren: numberOfChildren,
                            wifi: hasWifi, 
                            roomType: roomType)
    }
    
    func updateRoomType() {
        if let roomType = roomType {
            roomTypeDetailLabel.text = roomType.name
        } else {
            roomTypeDetailLabel.text = "Not Set"
        }
    }
    
    func updateDateViews() {
        checkOutDatePicker.minimumDate = Calendar.current.date(byAdding: .day, value: 1, to: checkInDatePicker.date)
        checkOutDateLabel.text = checkOutDatePicker.date.formatted(date: .abbreviated, time: .omitted)
//        checkInDatePicker.minimumDate = Calendar.current.date(byAdding: .day, value: 1, to: checkInDatePicker.date)
        checkInDateLabel.text = checkInDatePicker.date.formatted(date: .abbreviated, time: .omitted)
    }
    
    func updateNumberOfGuests() {
        numberOfAdultsLabel.text =
           "\(Int(numberOfAdultsStepper.value))"
        numberOfChildrenLabel.text =
           "\(Int(numberOfChildrenStepper.value))"
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        updateNumberOfGuests()
    }
    
    @IBAction func datePickerChanged(_ sender: Any) {
        updateDateViews()
    }
    
    @IBAction func wifiSwitchValueChanged(_ sender: Any) {
        
    }
    
}

