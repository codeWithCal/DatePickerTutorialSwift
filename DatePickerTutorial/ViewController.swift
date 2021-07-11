import UIKit

class ViewController: UIViewController
{
	@IBOutlet weak var dateTF: UITextField!
	
	override func viewDidLoad()
	{
		super.viewDidLoad()
		
		let datePicker = UIDatePicker()
		datePicker.datePickerMode = .date
		datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
		datePicker.frame.size = CGSize(width: 0, height: 300)
		datePicker.preferredDatePickerStyle = .wheels
		datePicker.maximumDate = Date()
		
		dateTF.inputView = datePicker
		dateTF.text = formatDate(date: Date()) // todays Date
	}
	
	@objc func dateChange(datePicker: UIDatePicker)
	{
		dateTF.text = formatDate(date: datePicker.date)
	}
	
	func formatDate(date: Date) -> String
	{
		let formatter = DateFormatter()
		formatter.dateFormat = "MMMM dd yyyy"
		return formatter.string(from: date)
	}


}

