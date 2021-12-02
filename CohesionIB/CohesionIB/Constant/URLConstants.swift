//
//  URLConstants.swift
//  CohesionIB
//

import Foundation

struct URLConstants {
    struct Api {
        static let accessControl: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-api-access-control.cohesionib.com/api/v2")!
            case .prod:
                return URL(string: "https://api-access-control.cohesionib.com/api/v2")!
            }
        }()
        
        static let building: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-building-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-building-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let buildingSecurity: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-buildingsecurity.cohesionib.com/api/v1")!
            case .prod:
                return URL(string: "https://buildingsecurity.cohesionib.com/api/v1")!
            }
        }()
        
        static let buildingSetup: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://api-building-setup.azurewebsites.net/graphql")!
            case .prod:
                return URL(string: "https://prod-cib-building-setup.azurewebsites.net/graphql")!
            }
        }()
        
        static let company: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-company-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-company-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let elevator: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-elevator-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://api.cohesionib.com/elevators/api/v1")!
            }
        }()
        
        static let frontendGateway: URL = {
            return URL(string: "https://frontend-gateway.cohesion.systems/graphql")!
        }()
        
        static let iaq: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-core-iaq.centralus.cloudapp.azure.com/api")!
            case .prod:
                return URL(string: "https://api.cohesionib.com/indoorairquality/api")!
            }
        }()
        
        static let media: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-media-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-media-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let notification: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-notification.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-notification-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let parking: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-parking-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-parking-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let payment: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-payment-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-payment-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let reporting: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-reporting-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-reporting-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let role: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-role-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-role-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let serviceRequest: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-service-request-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://cohesion-core-service-request.azurewebsites.net/api/v1")!
            }
        }()
        
        static let theme: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-theme-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-theme-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let user: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-user-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-user-api.azurewebsites.net/api/v1")!
            }
        }()
        
        static let visit: URL = {
            switch Environment.deploy {
            case .dev:
                return URL(string: "https://dev-cib-visits-api.azurewebsites.net/api/v1")!
            case .prod:
                return URL(string: "https://prod-cib-visit-api.azurewebsites.net/api/v1")!
            }
        }()
    }
    
    static let about77W: String = {
        switch (Environment.target, Environment.deploy) {
        case (.cohesionIb, .dev):
            return "https://dev-cib-user-api.azurewebsites.net/api/v1/building"
        case (.cohesionIb, .prod):
            return "https://prod-cib-user-api.azurewebsites.net/api/v1/building"
        case (.twHub, _):
            return "https://transwestern.com/our-company"
        }
    }()
    
    static let appOnAppStore: URL = {
        switch Environment.target {
        case .cohesionIb:
            return URL(string: "https://apps.apple.com/in/app/cohesion/id1467148383")!
        case .twHub:
            return URL(string: "https://apps.apple.com/us/app/transwesternhub/id1510363854")!
        }
    }()
    
    static let bdLenelHost: String = {
        switch Environment.deploy {
        case .dev:
            return "pockey.credentialserver.com"
        case .prod:
            return "key.credentialserver.com"
        }
    }()
    
    static let dinnerUrl = "https://www.doordash.com/store/aster-hall---featuring-small-cheval-chicago-521893/"
    
    static let idpHost: String = {
        switch Environment.deploy {
        case .dev:
            return "https://dev-core.cohesionib.com/"
        case .prod:
            return "https://core.cohesionib.com/"
        }
    }()
    
    static let webViewBaseURL: URL = {
        switch Environment.deploy {
        case .dev:
            return URL(string: "https://dev-core.cohesionib.com")!
        case .prod:
            return URL(string: "https://core.cohesionib.com")!
        }
    }()
    
    static let amenityURL: String = {
        switch Environment.deploy {
            case .dev:
                return "https://dev-cib-amenity-api.azurewebsites.net/api"
            case .prod:
                return "https://prod-cib-amenity-api.azurewebsites.net/api"
        }
    }()
}

// MARK: - requestConstants
struct requestConstants {
    static let kContent                  =  "Content-type"
    static let kAccept                   =  "Accept"
    static let kAcceptType               =  "application/json"
    static let kauthorization            =  "Authorization"
    static let kContentType              =  "application/json"
}

let k_WSversionV1 =  "v1"
