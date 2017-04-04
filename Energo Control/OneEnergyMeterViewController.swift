//
//  OneEnergyMeterViewController.swift
//  Energo Control
//
//  Created by Admin on 08.11.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class OneEnergyMeterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    class var identifier : String {
        return String(describing: self)
    }
    @IBOutlet var oneEnergyMeterImageView: UIImageView!
    @IBOutlet weak var oneEnergyMeterTableView: UITableView!
    
    var oneEnergyMeterDescription = EnergyMeter(name: "", connectionsType: "", accuracyClass: "", ratedVoltage: "", permissibleMainsVoltageDeviation: "", ratedCurrentIntensity: "", ratedFrequency: "", sensitivity: "", recalibrationInterval: "", meterConstant: "", totalWattageOfMeterVoltageCircuit: "", totalWattageOfMeterCurrentCircuit: "", operatingTemperatureRange: "", interfaceModule: "-", loadDisconnectRelay: "", numberOfTariffs: "", counterMechanismType: "", enclosure: "", dimensionsInMm: "", weight: "", image: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneEnergyMeterImageView.image = UIImage(named: oneEnergyMeterDescription.image)
        
        //Change title in navigatorBar
        title = oneEnergyMeterDescription.name
        
        //Self-Scaling  Самомасштабирование
        oneEnergyMeterTableView.estimatedRowHeight = 36.0
        oneEnergyMeterTableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 19
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OneEnergyMeterTableViewCell.identifier, for: indexPath) as! OneEnergyMeterTableViewCell
        
        switch indexPath.row {
        case 0: cell.fieldLabel.text = NSLocalizedString("name", comment: "One energy meter: name")
        cell.valueLabel.text = oneEnergyMeterDescription.name
            
        case 1: cell.fieldLabel.text = NSLocalizedString("connectionsType", comment: "One energy meter: Connections type")
        cell.valueLabel.text = oneEnergyMeterDescription.connectionsType
            
        case 2: cell.fieldLabel.text = NSLocalizedString("accuracyClass", comment: "One energy meter: Accuracy class")
        cell.valueLabel.text = oneEnergyMeterDescription.accuracyClass
            
        case 3: cell.fieldLabel.text = NSLocalizedString("ratedVoltage", comment: "One energy meter: Rated voltage")
        cell.valueLabel.text = oneEnergyMeterDescription.ratedVoltage
            
        case 4: cell.fieldLabel.text = NSLocalizedString("permissibleMainsVoltageDeviation", comment: "One energy meter: Permissible mains voltage deviation")
        cell.valueLabel.text = oneEnergyMeterDescription.permissibleMainsVoltageDeviation
            
        case 5: cell.fieldLabel.text = NSLocalizedString("ratedCurrentIntensity", comment: "One energy meter: Rated (max.) current intensity")
        cell.valueLabel.text = oneEnergyMeterDescription.ratedCurrentIntensity
            
        case 6: cell.fieldLabel.text = NSLocalizedString("ratedFrequency", comment: "One energy meter: Rated frequency")
        cell.valueLabel.text = oneEnergyMeterDescription.ratedFrequency
            
        case 7: cell.fieldLabel.text = NSLocalizedString("sensitivity", comment: "One energy meter: Sensitivity")
        cell.valueLabel.text = oneEnergyMeterDescription.sensitivity
            
        case 8: cell.fieldLabel.text = NSLocalizedString("recalibrationInterval", comment: "One energy meter: Recalibration interval")
        cell.valueLabel.text = oneEnergyMeterDescription.recalibrationInterval
            
        case 9: cell.fieldLabel.text = NSLocalizedString("meterConstant", comment: "One energy meter: Meter constant")
        cell.valueLabel.text = oneEnergyMeterDescription.meterConstant
            
        case 10: cell.fieldLabel.text = NSLocalizedString("totalWattageOfMeterVoltageCircuit", comment: "One energy meter: Total wattage of meter voltage circuit")
        cell.valueLabel.text = oneEnergyMeterDescription.totalWattageOfMeterVoltageCircuit
            
        case 11: cell.fieldLabel.text = NSLocalizedString("totalWattageOfMeterCurrentCircuit", comment: "One energy meter: Total wattage of meter current circuit")
        cell.valueLabel.text = oneEnergyMeterDescription.totalWattageOfMeterCurrentCircuit
            
        case 12: cell.fieldLabel.text = NSLocalizedString("operatingTemperatureRange", comment: "One energy meter: Operating temperature range")
        cell.valueLabel.text = oneEnergyMeterDescription.operatingTemperatureRange
            
        case 13: cell.fieldLabel.text = NSLocalizedString("interfaceModules", comment: "One energy meter: Interface module")
        cell.valueLabel.text = oneEnergyMeterDescription.interfaceModule
            
        case 14: cell.fieldLabel.text = NSLocalizedString("loadDisconnectRelay", comment: "One energy meter: Load disconnect relay")
        cell.valueLabel.text = oneEnergyMeterDescription.loadDisconnectRelay
            
        case 15: cell.fieldLabel.text = NSLocalizedString("numberOfTariffs", comment: "One energy meter: Number of tariffs")
        cell.valueLabel.text = oneEnergyMeterDescription.numberOfTariffs
            
        case 16: cell.fieldLabel.text = NSLocalizedString("counterMechanismType", comment: "One energy meter: Counter mechanism type")
        cell.valueLabel.text = oneEnergyMeterDescription.counterMechanismType
            
        case 17: cell.fieldLabel.text = NSLocalizedString("enclosure", comment: "One energy meter: Enclosure")
        cell.valueLabel.text = oneEnergyMeterDescription.enclosure
            
        case 18: cell.fieldLabel.text = NSLocalizedString("dimensionsInMm", comment: "One energy meter: Dimensions in mm")
        cell.valueLabel.text = oneEnergyMeterDescription.dimensionsInMm
            
        case 19: cell.fieldLabel.text = NSLocalizedString("weight", comment: "One energy meter: Weight")
        cell.valueLabel.text = oneEnergyMeterDescription.weight
            
        default: cell.fieldLabel.text = ""
        cell.valueLabel.text = ""
        }
        
        return cell
    }
}
