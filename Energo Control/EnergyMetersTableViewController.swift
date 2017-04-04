//
//  EnergyMetersTableViewController.swift
//  Energo Control
//
//  Created by Admin on 08.11.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

struct MeterName {
    static let meterName1 : String = NSLocalizedString("LEO-M1.4", comment: "meterName1")
    static let meterName2 : String = NSLocalizedString("LEB-D1.O5", comment: "meterName2")
    static let meterName3 : String = NSLocalizedString("LEB-D1.O5-P", comment: "meterName3")
    static let meterName4 : String = NSLocalizedString("LEB-D1.B5-PR6", comment: "meterName4")
    static let meterName5 : String = "Torgrids M10XX.10A/3T+"
    static let meterName6 : String = "Torgrids M10XX.10A/4T+P"
    static let meterName7 : String = "Torgrids 10XX.120A/4T+"
    static let meterName8 : String = "Torgrids M10XX.120A/4T+"
    static let meterName9 : String = "Torgrids M10XX.120A/4S+R"
    static let meterName10 : String = "Torgrids M10XX.120A/4S+RP"
    static let meterName11 : String = "Torgrids M1020.120A/4S+RP"
}

struct ConnectionsType {
    static let single2Wire : String = NSLocalizedString("singlePh2WireDirectConnection", comment: "Connections type: Single Phase 2-wire, Direct connection")
    static let threePhases3Wire : String = NSLocalizedString("threePh3wireTransformerConnection", comment: "Connections type: Three Phases 3-wire, Transformer  connection")
    static let threePhases4WireTransf : String = NSLocalizedString("threePh4wireTransformerConnection", comment: "Connections type: Three Phases 4-wireTransformerCconnection")
    static let threePhases4WireDirect : String = NSLocalizedString("threePh4wireDirectConnection", comment: "Connections type: Three Phases 4-wire, Direct connection")
}

struct AccuracyClass {
    static let active1 : String = NSLocalizedString("active1", comment: "Accuracy class: 1.0 DSTU IEC 62052-21")
    static let active1Reactive2 : String = NSLocalizedString("active1Reactive2", comment: "Accuracy class: 1.0 DSTU IEC 62052-21, 2.0  DSTU IEC 62052-23")
}

struct PermissibleMainsVoltageDeviation {
    static let onePhase : String = NSLocalizedString("onePhaseVoltage", comment: "Permissible mains voltage deviation: from -40 % to +20 %")
    static let threePhase : String = NSLocalizedString("threePhaseVoltage", comment: "Permissible mains voltage deviation: from -20 % to +15 %")
}

struct RecalibrationInterval {
    static let years6 : String = NSLocalizedString("years6", comment: "Recalibration interval: 6 years")
    static let years16 : String = NSLocalizedString("years16", comment: "Recalibration interval: 16 years")
}

struct OperatingTemperatureRange {
    static let range1 : String = NSLocalizedString("temperatureRange", comment: "Operating temperature range: from -40 °С to +70 °С")
}

struct InterfaceModules {
    static let interfaceAbsent : String = "-"
    static let interfaceRs : String = "RS-485"
    static let interfacePlcOpt: String = NSLocalizedString("interfacePlcOpt", comment: "Interface modules: PLC, optical port")
    static let interfaceRsOpt: String = NSLocalizedString("interfaceRsOpt", comment: "Interface modules: RS-485, optical port")
    static let interfacePlcRsOpt: String = NSLocalizedString("interfacePlcRsOpt", comment: "Interface modules: PLC, RS-485, optical port")
}

struct CounterMechanismType {
    static let elMech : String = NSLocalizedString("electromechanical", comment: "Counter mechanism type: Electromechanical")
    static let lcd : String = NSLocalizedString("lcd", comment: "Counter mechanism type: LCD")
}

class EnergyMetersTableViewController: UITableViewController, UISearchResultsUpdating {
    
    @IBOutlet var energyMetertableView: UITableView!

    var allEnergyMeters : [EnergyMeter] {
        
        let meter1 = EnergyMeter(name: MeterName.meterName1, connectionsType: ConnectionsType.single2Wire, accuracyClass: AccuracyClass.active1, ratedVoltage: "220 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.onePhase, ratedCurrentIntensity: "5 (60)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years16, meterConstant: "2000 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.2 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfaceAbsent, loadDisconnectRelay: "-", numberOfTariffs: "1", counterMechanismType: CounterMechanismType.elMech, enclosure: "IP 54", dimensionsInMm: "210 x 122 x 65", weight: "Max. 0.7 kg", image: "LEO-M1.4.jpg")
        
        let meter2 = EnergyMeter(name: MeterName.meterName2, connectionsType: ConnectionsType.single2Wire, accuracyClass: AccuracyClass.active1, ratedVoltage: "220 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.onePhase, ratedCurrentIntensity: "5 (60)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years16, meterConstant: "3200 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.2 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfaceAbsent, loadDisconnectRelay: "-", numberOfTariffs: "1", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "210 x 122 x 65", weight: "Max. 0.7 kg", image: "LEB-D1.O5.jpg")
        
        let meter3 = EnergyMeter(name: MeterName.meterName3, connectionsType: ConnectionsType.single2Wire, accuracyClass: AccuracyClass.active1, ratedVoltage: "220 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.onePhase, ratedCurrentIntensity: "5 (60)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years16, meterConstant: "3200 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.2 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfaceAbsent, loadDisconnectRelay: "+", numberOfTariffs: "1", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "210 x 122 x 65", weight: "Max. 0.7 kg", image: "LEB-D1.O5-P.jpg")
        
        let meter4 = EnergyMeter(name: MeterName.meterName4, connectionsType: ConnectionsType.single2Wire, accuracyClass: AccuracyClass.active1, ratedVoltage: "220 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.onePhase, ratedCurrentIntensity: "5 (60)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years16, meterConstant: "3200 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.2 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfacePlcOpt, loadDisconnectRelay: "+", numberOfTariffs: "4", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "210 x 122 x 65", weight: "Max. 0.7 kg", image: "LEB-D1.B5-PR6.jpg")
        
        let meter5 = EnergyMeter(name: MeterName.meterName5, connectionsType: ConnectionsType.threePhases3Wire, accuracyClass: AccuracyClass.active1, ratedVoltage: "3x100 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.threePhase, ratedCurrentIntensity: "5 (10)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years6, meterConstant: "20000 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.05 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfaceRsOpt, loadDisconnectRelay: "-", numberOfTariffs: "4", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "230 x 180 x 68", weight: "Max. 2.0 kg", image: "Torgrids M10XX.10A4T+P.jpg")
        
        let meter6 = EnergyMeter(name: MeterName.meterName6, connectionsType: ConnectionsType.threePhases4WireTransf, accuracyClass: AccuracyClass.active1, ratedVoltage: "3x220/380 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.threePhase, ratedCurrentIntensity: "5 (10)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years6, meterConstant: "20000 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.05 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfacePlcRsOpt, loadDisconnectRelay: "-", numberOfTariffs: "4", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "230 x 180 x 68", weight: "Max. 2.0 kg", image: "Torgrids M10XX.10A4T+P.jpg")
        
        let meter7 = EnergyMeter(name: MeterName.meterName7, connectionsType: ConnectionsType.threePhases4WireDirect, accuracyClass: AccuracyClass.active1, ratedVoltage: "3x220/380 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.threePhase, ratedCurrentIntensity: "5 (120)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years6, meterConstant: "4000 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.05 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfaceRs, loadDisconnectRelay: "-", numberOfTariffs: "1", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "230 x 180 x 68", weight: "Max. 2.0 kg", image: "Torgrids 10XX.120A4T+.jpg")
        
        let meter8 = EnergyMeter(name: MeterName.meterName8, connectionsType: ConnectionsType.threePhases4WireDirect, accuracyClass: AccuracyClass.active1, ratedVoltage: "3x220/380 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.threePhase, ratedCurrentIntensity: "5 (120)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years6, meterConstant: "4000 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.05 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfaceRsOpt, loadDisconnectRelay: "-", numberOfTariffs: "4", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "230 x 180 x 68", weight: "Max. 2.0 kg", image: "Torgrids M10XX.120A4T+.jpg")
        
        let meter9 = EnergyMeter(name: MeterName.meterName9, connectionsType: ConnectionsType.threePhases4WireDirect, accuracyClass: AccuracyClass.active1, ratedVoltage: "3x220/380 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.threePhase, ratedCurrentIntensity: "5 (120)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years6, meterConstant: "4000 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.05 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfaceRsOpt, loadDisconnectRelay: "+", numberOfTariffs: "4", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "230 x 180 x 68", weight: "Max. 2.0 kg", image: "Torgrids M10XX.120A4T+.jpg")
        
        let meter10 = EnergyMeter(name: MeterName.meterName10, connectionsType: ConnectionsType.threePhases4WireDirect, accuracyClass: AccuracyClass.active1, ratedVoltage: "3x220/380 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.threePhase, ratedCurrentIntensity: "5 (120)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years6, meterConstant: "4000 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.05 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfacePlcRsOpt, loadDisconnectRelay: "+", numberOfTariffs: "4", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "230 x 180 x 68", weight: "Max. 2.0 kg", image: "Torgrids M10XX.120A4T+RP.jpg")
        
        let meter11 = EnergyMeter(name: MeterName.meterName11, connectionsType: ConnectionsType.threePhases4WireDirect, accuracyClass: AccuracyClass.active1Reactive2, ratedVoltage: "3x220/380 V", permissibleMainsVoltageDeviation: PermissibleMainsVoltageDeviation.threePhase, ratedCurrentIntensity: "5 (120)A", ratedFrequency: "50 ± 2,5 Hz", sensitivity: "12.5 mА", recalibrationInterval: RecalibrationInterval.years6, meterConstant: "4000 imp/kWh", totalWattageOfMeterVoltageCircuit: "Max. 8 W·А", totalWattageOfMeterCurrentCircuit: "Max. 0.05 W·А", operatingTemperatureRange: OperatingTemperatureRange.range1, interfaceModule: InterfaceModules.interfacePlcRsOpt, loadDisconnectRelay: "+", numberOfTariffs: "4", counterMechanismType: CounterMechanismType.lcd, enclosure: "IP 54", dimensionsInMm: "230 x 180 x 68", weight: "Max. 2.0 kg", image: "Torgrids M10XX.120A4T+RP.jpg")
        
        return [meter1, meter2, meter3, meter4, meter5 , meter6, meter7, meter8, meter9, meter10, meter11]
    }
    
    var searchResult: [EnergyMeter] = []
    var searchControler: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("energyMeters.title", comment: "Title - Energy meters")
        view.backgroundColor = UIColor(red: 60.0/255.0, green: 60.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        view.tintColor = UIColor.red
        
        // Search Controler
        searchControler = UISearchController(searchResultsController: nil)
        tableView.tableHeaderView = searchControler.searchBar
        searchControler.searchResultsUpdater = self
        searchControler.dimsBackgroundDuringPresentation = false
        searchControler.searchBar.placeholder = NSLocalizedString("searchEnergyMetersText", comment: "Text in seachBar")
        searchControler.searchBar.tintColor = UIColor.black
        
        tableView.contentInset.top = UIApplication.shared.statusBarFrame.height
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchControler.isActive {
            return searchResult.count
        } else {
            return self.allEnergyMeters.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EnergyMetersTableViewCell.identifier, for: indexPath) as! EnergyMetersTableViewCell
        let energyMeter = (searchControler.isActive) ? searchResult[indexPath.row] : self.allEnergyMeters[indexPath.row]
        cell.textLabel?.text = energyMeter.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if searchControler.isActive {
            return false
        } else {
            return true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show One Energy Meter"
        {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationControler = segue.destination as! OneEnergyMeterViewController
                destinationControler.oneEnergyMeterDescription = (searchControler.isActive) ? searchResult[indexPath.row] : self.allEnergyMeters[indexPath.row]
            }
        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchControler.searchBar.text {
            filterContent(searchText: searchText)
            tableView.reloadData()
        }
    }
    
    func filterContent(searchText: String) {
        searchResult = allEnergyMeters.filter({ (energyMeter: EnergyMeter) -> Bool in
            let nameMatch = energyMeter.name.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            return nameMatch != nil
        })
    }
}
