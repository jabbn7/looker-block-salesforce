view: account {
  sql_table_name: @{SALESFORCE_SCHEMA}.sf_Account ;;

###   Dimensions:

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension_group: _attrib_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._attrib_synced ;;
    hidden: yes
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.Account__c ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}.AccountSource ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.Annual_Supplier_Revenue__c ;;
    hidden: yes
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}.BillingCity ;;
    group_label: "Billing Details"
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}.BillingCountry ;;
    group_label: "Billing Details"
  }

  dimension: billing_geocode_accuracy {
    type: string
    sql: ${TABLE}.BillingGeocodeAccuracy ;;
    group_label: "Billing Details"
    hidden: yes
  }

  dimension: billing_latitude {
    type: number
    sql: ${TABLE}.BillingLatitude ;;
    group_label: "Billing Details"
  }

  dimension: billing_longitude {
    type: number
    sql: ${TABLE}.BillingLongitude ;;
    group_label: "Billing Details"
  }

  dimension: billing_postal_code {
    type: string
    sql: ${TABLE}.BestCaseillingPostalCode ;;
    group_label: "Billing Details"
  }

  dimension: billing_state {
    map_layer_name: us_states
    sql: IF(LENGTH(${TABLE}.BillingState) = 2, ${TABLE}.BillingState, null);;
    group_label: "Billing Details"
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}.BillingStreet ;;
    group_label: "Billing Details"
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CreatedById ;;
    hidden: yes
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: domain {
    sql: REGEXP_REPLACE(REGEXP_REPLACE(${Website},"^https?://",""),"(www2?.)","");;
  }

  dimension: distinct_id {
    type: string
    sql: distinct ${TABLE}.Id ;;
  }

  dimension: logo64 {
    sql: ${domain} ;;
    html: <a href="https://na9.salesforce.com/{{ opportunity.id._value }}" target="_new">
      <img src="https://logo.clearbit.com/{{ value }}" height=50% width=64 align="middle"></a>
      ;;
  }

  dimension: id_url {
    sql: ${TABLE}.Id ;;
    html: [<a href="https://{{ salesforce_domain_config._sql }}/{{ value }}">Open in SFDC</a>];;
    hidden: yes
  }

  dimension: logo {
    sql: ${domain} ;;
    html: <a href="https://{{ value }}" target="_new">
      <img src="https://logo.clearbit.com/{{ value }}" height=128 width=128></a>
      ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
    hidden: yes
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
    group_label: "Status"
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}.Jigsaw ;;
    hidden: yes
  }

  dimension: jigsaw_company_id {
    type: string
    sql: ${TABLE}.JigsawCompanyId ;;
    hidden: yes
  }

  dimension_group: last_activity {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LastActivityDate ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.LastModifiedById ;;
    hidden: yes
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LastModifiedDate ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LastReferencedDate ;;
    hidden: yes
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LastViewedDate ;;
    hidden: yes
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}.MasterRecordId ;;
    hidden: yes
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
    link: {
      url:"http://@{SALESFORCE_DOMAIN}/{{ account.id._value }}"
      label: "View in Salesforce"
    }
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.NumberOfEmployees ;;
  }


  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
    hidden: yes
  }

  dimension: ownership {
    type: string
    sql: ${TABLE}.Ownership ;;
    hidden: yes
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.ParentId ;;
    hidden: yes
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}.PhotoUrl ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}.Rating ;;
    hidden: yes
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.ShippingCity ;;
    group_label: "Shipping Details"
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}.ShippingCountry ;;
    group_label: "Shipping Details"
  }

  dimension: shipping_geocode_accuracy {
    type: string
    sql: ${TABLE}.ShippingGeocodeAccuracy ;;
    group_label: "Shipping Details"
  }

  dimension: shipping_latitude {
    type: number
    sql: ${TABLE}.ShippingLatitude ;;
    group_label: "Shipping Details"
  }

  dimension: shipping_longitude {
    type: number
    sql: ${TABLE}.ShippingLongitude ;;
    group_label: "Shipping Details"
  }

  dimension: shipping_postal_code {
    type: string
    sql: ${TABLE}.ShippingPostalCode ;;
    group_label: "Shipping Details"
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}.ShippingState ;;
    group_label: "Shipping Details"
  }

  dimension: shipping_street {
    type: string
    sql: ${TABLE}.ShippingStreet ;;
    group_label: "Shipping Details"
  }

  dimension: sic {
    type: string
    sql: ${TABLE}.Sic ;;
    hidden: yes
  }

  dimension: sic_desc {
    type: string
    sql: ${TABLE}.SicDesc ;;
    hidden: yes
  }

  dimension: site {
    type: string
    sql: ${TABLE}.Site ;;
    hidden: yes
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SystemModstamp ;;
    hidden: yes
  }

  dimension: ticker_symbol {
    type: string
    sql: ${TABLE}.TickerSymbol ;;
    hidden: yes
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.Website ;;
  }

####   Measures

  measure: count {
    type: count
    drill_fields: [id, name, contact.count, opportunity.count, user.count]
  }

  measure: percent_of_accounts {
    description: "Percent of accounts out of the total number of accounts"
    type: percent_of_total
    sql: ${count} ;;
  }

  measure: average_annual_revenue {
    type: average
    sql: ${annual_revenue} ;;
    value_format_name: custom_amount_value_format
  }

  measure: total_number_of_employees {
    type: sum
    sql: ${number_of_employees} ;;
  }

  measure: average_number_of_employees {
    type: average
    sql: ${number_of_employees} ;;
    value_format_name: decimal_1
  }


}
