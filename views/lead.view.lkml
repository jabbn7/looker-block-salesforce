view: lead {
  sql_table_name: @{SALESFORCE_SCHEMA}.sf_Lead ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension_group: as_lead {
    type: duration
    sql_start: ${created_raw}  ;;
    sql_end: current_timestamp  ;;
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

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.AnnualRevenue ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
    group_label: "Address"
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
    group_label: "Address"
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
    group_label: "Address"
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
    group_label: "Address"
  }

  dimension: clean_status {
    type: string
    sql: ${TABLE}.CleanStatus ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.Company ;;
  }

  dimension: company_duns_number {
    type: string
    sql: ${TABLE}.CompanyDunsNumber ;;
    hidden: yes
  }

  dimension: converted_account_id {
    type: string
    sql: ${TABLE}.ConvertedAccountId ;;
    hidden: yes
  }

  dimension: converted_contact_id {
    type: string
    sql: ${TABLE}.ConvertedContactId ;;
    hidden: yes
  }

  dimension_group: converted {
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
    sql: ${TABLE}.ConvertedDate ;;
  }

  dimension: converted_opportunity_id {
    type: string
    sql: ${TABLE}.ConvertedOpportunityId ;;
    hidden: yes
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

  // dimension: current_generators_c {
  //   type: string
  //   sql: ${TABLE}.CurrentGenerators_C ;;
  // }

  // dimension: dandb_company_id {
  //   type: string
  //   sql: ${TABLE}.dandb_company_id ;;
  //   hidden: yes
  // }

  // dimension: description {
  //   type: string
  //   sql: ${TABLE}.Description ;;
  // }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension_group: email_bounced {
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
    sql: ${TABLE}.EmailBouncedDate ;;
    hidden: yes
  }

  dimension: email_bounced_reason {
    type: string
    sql: ${TABLE}.EmailBouncedReason ;;
    hidden: yes
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: geocode_accuracy {
    type: string
    sql: ${TABLE}.GeocodeAccuracy ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: is_converted {
    type: yesno
    sql: ${TABLE}.IsConverted ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_unread_by_owner {
    type: yesno
    sql: ${TABLE}.IsUnreadByOwner ;;
    hidden: yes
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}.Jigsaw ;;
    hidden: yes
  }

  dimension: jigsaw_contact_id {
    type: string
    sql: ${TABLE}.JigsawContactId ;;
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

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
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

  dimension: lead_source {
    type: string
    sql: ${TABLE}.LeadSource ;;
  }


  dimension: master_record_id {
    type: string
    sql: ${TABLE}.MasterRecordId ;;
    hidden: yes
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.MobilePhone ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
    html: <a href="https://{{ salesforce_domain_config._sql }}/{{ lead.id._value }}" target="_new">
          <img src="https://www.google.com/s2/favicons?domain=www.salesforce.com" height=16 width=16></a>
          {{ linked_value }};;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.NumberOfEmployees ;;
  }

  // dimension: numberof_locations_c {
  //   type: number
  //   sql: ${TABLE}.NumberofLocations_c ;;
  // }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
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

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  // dimension: primary_c {
  //   type: string
  //   sql: ${TABLE}.Primary_c ;;
  // }

  // dimension: product_interest_c {
  //   type: string
  //   sql: ${TABLE}.ProductInterest_c ;;
  // }

  dimension: rating {
    type: string
    sql: ${TABLE}.Rating ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
  }

  // dimension: siccode_c {
  //   type: string
  //   sql: ${TABLE}.SicCode_c ;;
  // }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
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

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.Website ;;
  }

  dimension: convert_to_contact {
    label: "Days to Contact Conversion"
    description: "Number of days it took to convert the lead into a contact"
    type: number
    sql: DATE_DIFF(${converted_date}, ${created_date}, DAY) ;;
  }

  # Typically, an opportunity is automatically created when a lead is converted to a contact.
  dimension: convert_to_opportunity {
    label: "Days to Opp. Conversion"
    description: "Number of days it took to convert the lead into an opportunity"
    type: number
    sql: DATE_DIFF(${opportunity.created_date}, ${created_date}, DAY) ;;
  }

  dimension: id_url {
    sql: ${TABLE}.Id ;;
    html: [<a href="https://{{ salesforce_domain_config._sql }}/{{ value }}">Open in SFDC</a>]
      ;;
  }

  dimension: number_of_employees_tier {
    type: tier
    tiers: [
      0,
      1,
      11,
      51,
      201,
      501,
      1001,
      5001,
      10000
    ]
    sql: ${number_of_employees} ;;
    style: integer
    description: "Number of Employees as reported on the Salesforce lead"
  }

#   Measures:

  measure: count {
    type: count
    drill_fields: [id, name, first_name, last_name]
    label: "Number of Leads"
  }

  measure: avg_convert_to_contact {
    label: "Average Days to Contact Conversion"
    description: "Average number of days it took to convert the lead into a contact"
    type: average
    sql: ${convert_to_contact} ;;
    value_format_name: decimal_1
  }

  measure: avg_convert_to_opportunity {
    label: "Average Days to Opp. Conversion"
    description: "Average number of days it took to convert the lead into an opportunity"
    type: average
    sql: ${convert_to_opportunity} ;;
    value_format_name: decimal_1
  }

  measure: converted_to_contact_count {
    label: "Number of Leads Converted to Contacts"
    type: count
    drill_fields: [detail*]

    filters: {
      field: converted_contact_id
      value: "-null"
    }
  }

  measure: converted_to_account_count {
    label: "Number of Leads Converted to Accounts"
    type: count
    drill_fields: [detail*]

    filters: {
      field: converted_account_id
      value: "-null"
    }
  }

  measure: converted_to_opportunity_count {
    label: "Number of Leads Converted to Opportunities"
    type: count
    drill_fields: [detail*]

    filters: {
      field: converted_opportunity_id
      value: "-null"
    }
  }

  measure: conversion_to_contact_percent {
    label: "% Leads Converted to Contacts"
    sql: 100.00 * ${converted_to_contact_count} / NULLIF(${count},0) ;;
    type: number
    value_format: "0.00\%"
  }

  measure: conversion_to_account_percent {
    label: "% Leads Converted to Accounts"
    sql: 100.00 * ${converted_to_account_count} / NULLIF(${count},0) ;;
    type: number
    value_format: "0.00\%"
  }

  measure: conversion_to_opportunity_percent {
    label: "% Leads Converted to Opportunities"
    sql: 100.00 * ${converted_to_opportunity_count} / NULLIF(${count},0) ;;
    type: number
    value_format: "0.00\%"
  }

  measure: count_active_leads {
    label: "Number of Active Leads"
    type: count
    value_format_name: decimal_0
    drill_fields: [active_lead_detail*]
    filters: {
      field: is_converted
      value: "No"
    }
    filters: {
      field: is_deleted
      value: "No"
    }
  }
    set: detail {
      fields: [
        id,
        company,
        name,
        title,
        phone,
        email,
        status
      ]
    }

    set: active_lead_detail {
      fields: [
        created_date,
        name,
        phone,
        email,
        last_activity_date,
        task.calls,
        task.emails,
        task.meetings
      ]
    }
}
