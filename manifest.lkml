project_name: "salesforce-insights-v1"


constant: CONNECTION_NAME {
  value: "app-salesforce"
  export: override_optional
}

constant: SALESFORCE_SCHEMA {
  value: "ftc-cdp.raw_landing"
  export: override_optional
}

constant: SALESFORCE_DOMAIN {
  value: "freshtracks.my.salesforce.com"
  export: override_optional
}
