import Foundation
import CoreMotion
/*
@objc(Camera)
public class Camera : Plugin, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPopoverPresentationControllerDelegate {
  var imagePicker: UIImagePickerController?
  var call: AVCPluginCall?
  var quality: Float = 1.0
  
  @objc func getPhoto(_ call: AVCPluginCall) {
    self.call = call
    self.quality = call.get("quality", Float.self, 100)!
    let allowEditing = call.get("allowEditing", Bool.self, false)!
    
    // Make sure they have all the necessary info.plist settings
    if let missingUsageDescription = checkUsageDescriptions() {
      bridge.modulePrint(self, missingUsageDescription)
      call.error(missingUsageDescription)
      bridge.alert("Camera Error", "Missing required usage description. See console for more information")
      return
    }
    
    imagePicker = UIImagePickerController()
    imagePicker!.delegate = self
    imagePicker!.modalPresentationStyle = .popover
    imagePicker!.popoverPresentationController?.delegate = self
    self.setPopover(self.imagePicker!)
    //imagePicker!.popoverPresentationController?.sourceView = view
    
    // Build the action sheet
    let alert = UIAlertController(title: "Photo", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
    alert.addAction(UIAlertAction(title: "From Photos", style: .default, handler: { (action: UIAlertAction) in
      self.imagePicker!.sourceType = .photoLibrary
      self.imagePicker!.allowsEditing = allowEditing

      self.bridge.viewController.present(self.imagePicker!, animated: true, completion: nil)
    }))
    
    alert.addAction(UIAlertAction(title: "Take Picture", style: .default, handler: { (action: UIAlertAction) in
      if self.bridge.isSimulator() || !UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
        self.bridge.modulePrint(self, "Camera not available in simulator")
        self.bridge.alert("Camera Error", "Camera not available in Simulator")
        call.error("Camera not available while running in Simulator")
        return
      }
      
      self.imagePicker!.sourceType = .camera

      self.bridge.viewController.present(self.imagePicker!, animated: true, completion: nil)
    }))
    setPopover(alert)
    self.bridge.viewController.present(alert, animated: true, completion: nil)
  }
  
  public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    picker.dismiss(animated: true)
  }
  
  public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    var image: UIImage?
    
    if let editedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
      // Use editedImage Here
      image = editedImage
    } else if let originalImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
      // Use originalImage Here
      image = originalImage
    }

    guard let jpeg = UIImageJPEGRepresentation(image!, CGFloat(quality/100)) else {
      print("Unable to convert image to jpeg")
      self.call?.error("Unable to convert image to jpeg")
      return
    }
    
    let base64String = jpeg.base64EncodedString()
    
    self.call?.success([
      "base64_data": base64String,
      "format": "jpeg"
    ])
    
    picker.dismiss(animated: true)
  }
  
  /**
   * Make sure the developer provided proper usage descriptions
   * per apple's terms.
   */
  func checkUsageDescriptions() -> String? {
    if let dict = Bundle.main.infoDictionary {
      let hasPhotoLibraryAddUsage = dict["NSPhotoLibraryAddUsageDescription"] != nil
      if !hasPhotoLibraryAddUsage {
        let docLink = DocLinks.NSPhotoLibraryAddUsageDescription
        return "You are missing NSPhotoLibraryAddUsageDescription in your Info.plist file." +
        " Camera will not function without it. Learn more: \(docLink.rawValue)"
      }
      let hasPhotoLibraryUsage = dict["NSPhotoLibraryUsageDescription"] != nil
      if !hasPhotoLibraryUsage {
          let docLink = DocLinks.NSPhotoLibraryUsageDescription
          return "You are missing NSPhotoLibraryUsageDescription in your Info.plist file." +
          " Camera will not function without it. Learn more: \(docLink.rawValue)"
      }
      let hasCameraUsage = dict["NSCameraUsageDescription"] != nil
      if !hasCameraUsage {
          let docLink = DocLinks.NSCameraUsageDescription
          return "You are missing NSCameraUsageDescription in your Info.plist file." +
          " Camera will not function without it. Learn more: \(docLink.rawValue)"
      }
    }
    
    return nil
  }

  /**
   * Configure popover sourceRect, sourceView and permittedArrowDirections to show it centered
   */
  func setPopover (_ vc:UIViewController) {
    vc.popoverPresentationController?.sourceRect = CGRect(x: self.bridge.viewController.view.center.x, y: self.bridge.viewController.view.center.y, width: 0, height: 0)
    vc.popoverPresentationController?.sourceView = self.bridge.viewController.view
    vc.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection(rawValue: 0)
  }
}*/



