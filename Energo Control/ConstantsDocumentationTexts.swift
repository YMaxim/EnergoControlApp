//
//  ConstantsDocumentationTexts.swift
//  Energo Control
//
//  Created by Admin on 14.12.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit
import SafariServices

struct PassportsDocumentationsURL {
    
    static let url1 = "https://www.dropbox.com/s/jwcq48o8jqrfz4d/%D0%9F%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20%D0%9B%D0%95%D0%9E-%D0%9C1.4.pdf?dl=0"
    static let url2 = "https://www.dropbox.com/s/8kl11mc9nclzff9/%D0%9F%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20%D0%9B%D0%95%D0%91-%D0%941.%D0%9E5.pdf?dl=0"
    static let url3 = "https://www.dropbox.com/s/zt6xu6udjdnzcn0/%D0%9F%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20%D0%9B%D0%95%D0%91-%D0%941.%D0%9E5-%D0%A0.pdf?dl=0"
    static let url4 = "https://www.dropbox.com/s/fo2968ks3mio4fy/%D0%9F%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20%D0%9B%D0%95%D0%91-%D0%941.%D0%915-%D0%A0R6.pdf?dl=0"
    static let url5 = "https://www.dropbox.com/s/rjp4s2srz3vkvy1/Torgrids%2002%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20-%20Torgrids%20M10XX.10A3T%2B.pdf?dl=0"
    static let url6 = "https://www.dropbox.com/s/jkz4xnhgadtt5bt/Torgrids%2003%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20-%20Torgrids%20M10XX.10A4T%2BP.pdf?dl=0"
    static let url7 = "https://www.dropbox.com/s/24ybwvy35zriabr/Torgrids%2012%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20-%20Torgrids%2010XX.120A4T%2B.pdf?dl=0"
    static let url8 = "https://www.dropbox.com/s/ma5034dqiawrd10/Torgrids%2031%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20-%20Torgrids%20M10XX.120A4T%2B.pdf?dl=0"
    static let url9 = "https://www.dropbox.com/s/373tjoeqzutpx7f/Torgrids%2041%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20-%20Torgrids%20M10XX.120A4S%2BRP.pdf?dl=0"
    static let url10 = "https://www.dropbox.com/s/373tjoeqzutpx7f/Torgrids%2041%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20-%20Torgrids%20M10XX.120A4S%2BRP.pdf?dl=0"
    static let url11 = "https://www.dropbox.com/s/cczwys9vv88jjup/Torgrids%2042%20%D0%BF%D0%B0%D1%81%D0%BF%D0%BE%D1%80%D1%82%20-%20Torgrids%20M1020.120A4S%2BRP.pdf?dl=0"
    
    static let text1 : String = NSLocalizedString("LEO-M1.4", comment: "meterName1")
    static let text2 : String = NSLocalizedString("LEB-D1.O5", comment: "meterName2")
    static let text3 : String = NSLocalizedString("LEB-D1.O5-P", comment: "meterName3")
    static let text4 : String = NSLocalizedString("LEB-D1.B5-PR6", comment: "meterName4")
    static let text5 : String = "Torgrids M10XX.10A/3T+"
    static let text6 : String = "Torgrids M10XX.10A/4T+P"
    static let text7 : String = "Torgrids 10XX.120A/4T+"
    static let text8 : String = "Torgrids M10XX.120A/4T+"
    static let text9 : String = "Torgrids M10XX.120A/4S+R"
    static let text10 : String = "Torgrids M10XX.120A/4S+RP"
    static let text11 : String = "Torgrids M1020.120A/4S+RP"
}

struct ManualsDocumentationsURL {
    
    static let url1 = "https://www.dropbox.com/s/rn6pkxzmhlob0xr/%D0%A0%D1%83%D0%BA%D0%BE%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%BE%20%D0%BF%D0%BE%20%D1%8D%D0%BA%D1%81%D0%BF%D0%BB%D1%83%D0%B0%D1%82%D0%B0%D1%86%D0%B8%D0%B8%20%D0%9B%D0%95%D0%9E%2C%20%D0%9B%D0%95%D0%91.pdf?dl=0"
    static let url2 = "https://www.dropbox.com/s/mslgmdtv7co5jg8/%D0%9A%D0%B5%D1%80%D1%96%D0%B2%D0%BD%D0%B8%D1%86%D1%82%D0%B2%D0%BE%20%D0%B7%20%D0%B5%D0%BA%D1%81%D0%BF%D1%83%D0%B0%D1%82%D0%B0%D1%86%D1%96%D1%97%20Torgrids.pdf?dl=0"
    
    static let text1 : String = NSLocalizedString("leoLebManual", comment: "LEO, LEB - Manual")
    static let text2 : String = NSLocalizedString("torgridsManual", comment: "Torgrids - Manual")
}

struct CertificatesDocumentationsURL {
    
    static let url1 = "https://www.dropbox.com/s/fuzqsu6zmegs0zv/%D0%A1%D0%B5%D1%80%D1%82%D0%B8%D1%84%D1%96%D0%BA%D0%B0%D1%82%2016%D1%80.%20%D0%B7%D0%B0%D1%82%D0%B2%D0%B5%D1%80%D0%B4%D0%B6%D0%B5%D0%BD%D0%BD%D1%8F%20%D1%82%D0%B8%D0%BF%D1%83%20%D0%9B%D0%95%D0%9E%2C%D0%9B%D0%95%D0%91.pdf?dl=0"
    static let url2 = "https://www.dropbox.com/s/ojfjfmi93pl0oxb/%D0%A1%D0%B5%D1%80%D1%82%D0%B8%D1%84%D1%96%D0%BA%D0%B0%D1%82%206%D1%80.%20%D0%B7%D0%B0%D1%82%D0%B2%D0%B5%D1%80%D0%B4%D0%B6%D0%B5%D0%BD%D0%BD%D1%8F%20%D1%82%D0%B8%D0%BF%D1%83%20Torgrids%202015.pdf?dl=0"
    static let url3 = "https://www.dropbox.com/s/dasnov1bpq8cxp8/%D0%A1%D0%B5%D1%80%D1%82%D0%B8%D1%84%D1%96%D0%BA%D0%B0%D1%82%20%D0%B2%D1%96%D0%B4%D0%BF%D0%BE%D0%B2%D1%96%D0%B4%D0%BD%D0%BE%D1%81%D1%82%D1%96%20%D0%9B%D0%95%D0%9E%2C%D0%9B%D0%95%D0%91_2014.pdf?dl=0"
    static let url4 = "https://www.dropbox.com/s/0fqm37q3qa8ou8e/%D0%A1%D0%B5%D1%80%D1%82%D0%B8%D1%84%D1%96%D0%BA%D0%B0%D1%82%20%D0%B2%D1%96%D0%B4%D0%BF%D0%BE%D0%B2%D1%96%D0%B4%D0%BD%D0%BE%D1%81%D1%82%D1%96%20Torgrids%202015.pdf?dl=0"
    static let url5 = "https://www.dropbox.com/s/m205of01bt1bh6n/%D0%92%D0%B8%D1%81%D0%BD%D0%BE%D0%B2%D0%BE%D0%BA%20%D0%A1%D0%95%D0%A1-%D0%9B%D0%95%D0%9E%2C%20%D0%9B%D0%95%D0%91%202014.pdf?dl=0"
    static let url6 = "https://www.dropbox.com/s/0zudi847rdcskii/%D0%92%D0%B8%D1%81%D0%BD%D0%BE%D0%B2%D0%BE%D0%BA%20%D0%A1%D0%95%D0%A1%20Torgrids%202015.pdf?dl=0"
    static let url7 = "https://www.dropbox.com/s/ljqxhx7a32amdpz/%D0%A1%D0%B5%D1%80%D1%82%D0%B8%D1%84%D1%96%D0%BA%D0%B0%D1%82%20%D0%A3%D0%BA%D1%80%D0%A1%D0%95%D0%9F%D0%A0%D0%9E%20%D0%9B%D0%95%D0%9E-%D0%9C%2C%20%D0%9B%D0%95%D0%91-%D0%94.pdf?dl=0"
    
    static let text1 : String = NSLocalizedString("leoLebPAC", comment: "Certificate: LEO,LEB - Pattern approval certificate")
    static let text2 : String = NSLocalizedString("torgridsPAC", comment: "Certificate: Torgrids - Pattern approval certificate")
    static let text3 : String = NSLocalizedString("leoLebCOC", comment: "Certificate: LEO,LEB - Certificate of conformity")
    static let text4 : String = NSLocalizedString("torgridsCOC", comment: "Certificate: Torgrids - Certificate of conformity")
    static let text5 : String = NSLocalizedString("leoLebSES", comment: "Certificate: LEO,LEB Certificate of Sanitary-Epidemiological Station")
    static let text6 : String = NSLocalizedString("torgridsSES", comment: "Certificate: Torgrids Certificate of Sanitary-Epidemiological Station")
    static let text7 : String = NSLocalizedString("leoLebUkrSEPRO", comment: "Certificate: LEO,LEB - UkrSEPRO certificate")
}

struct PresentationsDocumentationsURL {
    
    static let url1 = "https://www.dropbox.com/sh/974kl8bm21hgnri/AADLWLE8WDnxCl1BGKOhEVFna?dl=0"
    static let url2 = "https://www.dropbox.com/sh/47egbx2a65cg9xu/AACxbmJVoHQC5BmqotnEi3FFa?dl=0"
    static let url3 = "https://www.dropbox.com/sh/yc65m13zj5eu7dz/AADFBOS52lfl1MqRX5_4F2OOa?dl=0"
    static let url4 = "https://www.dropbox.com/sh/iv3opcpqiotplsl/AAAsZEXJ0id89qreFq0N-tVya?dl=0"
    
    static let text1 : String = NSLocalizedString("PresentationEnergoControl.07.02.2017", comment: "Presentation Energo Control 07/02/2017")
    static let text2 : String = NSLocalizedString("PresentationKyivenergo.06.12.2016", comment: "Presentations: Presentation Kyivenergo 06/12/2016")
    static let text3 : String = NSLocalizedString("Presentation.20.09.2016", comment: "Presentations: Presentation 20/09/2016")
    static let text4 : String = NSLocalizedString("PresentationAMR.16.08.2016", comment: "Presentations: Presentation AMR 16/08/2016")
}

struct OtherDocumentationsURL {
    
    static let url1 = "https://www.dropbox.com/s/qjde7fiv642upgv/%D0%A2%D0%A3%20%D0%9B%D0%95%D0%9E%2C%D0%9B%D0%95%D0%91_2015.pdf?dl=0"
    static let url2 = "https://www.dropbox.com/s/2rf76xvh19ueu8y/%D0%A2%D0%A3%20Torgrids.pdf?dl=0"
    static let url3 = "https://www.dropbox.com/s/nwdv00d6hhqbbil/%D0%9E%D0%BF%D0%B8%D1%81%20%D1%82%D0%B8%D0%BF%D1%83%20%D0%9B%D0%95%D0%9E-%D0%9C%2C%20%D0%9B%D0%95%D0%91-%D0%94%202015.pdf?dl=0"
    static let url4 = "https://www.dropbox.com/s/9upqn0bgqe65aat/%D0%9E%D0%BF%D0%B8%D1%81%20%D1%82%D0%B8%D0%BF%D1%83%20Torgrids%202015.pdf?dl=0"
    static let url5 = "https://www.dropbox.com/s/nmcs9qgpb31y4dc/%D0%9F%D1%80%D0%BE%D1%82%D0%BE%D0%BA%D0%BE%D0%BB%D1%8B%20IP54%20-%20%D0%9B%D0%95%D0%9E-%D0%9C1.4%2C%20%D0%9B%D0%95%D0%91-%D0%941.%D0%9E5%2C%20%D0%9B%D0%95%D0%91-%D0%941.%D0%9E5-%D0%A0.pdf?dl=0"
    static let url6 = "https://www.dropbox.com/sh/d9zxnhv5a722blg/AACBAK5op6PNqA8FZmMnLoA0a?dl=0"
    
    static let text1 : String = NSLocalizedString("leoLebTechSpecif", comment: "Other documentation: LEO, LEB - Technical specification")
    static let text2 : String = NSLocalizedString("torgridsTechSpecif", comment: "Other documentation: Torgrids - Technical specification")
    static let text3 : String = NSLocalizedString("leoLebTypeSpecif", comment: "Other documentation: LEO, LEB - Type specification")
    static let text4 : String = NSLocalizedString("torgridsTypeSpecif", comment: "Other documentation: Torgrids - Type specification")
    static let text5 : String = NSLocalizedString("leoLebIP54", comment: "Other documentation: LEO, LEB - IP54 Test report")
    static let text6 : String = NSLocalizedString("leoLebIP54SOU", comment: "Other documentation: LEO, LEB - SOU-N MPE Test report")
}
