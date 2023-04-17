import ballerinax/trigger.quickbooks;
import ballerina/http;

configurable quickbooks:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener quickbooks:Listener webhookListener =  new(config,httpListener);

service quickbooks:TaxAgencyService on webhookListener {
  
    remote function onTaxagencyCreate(quickbooks:QuickBookEvent event ) returns error? {
      //Not Implemented
    }
    remote function onTaxagencyUpdate(quickbooks:QuickBookEvent event ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}