view: contact {
  sql_table_name: @{SALESFORCE_SCHEMA}.sf_Contact ;;

  dimension: account_id {
    type: string
    hidden: yes
    sql: ${TABLE}.AccountiId ;;
  }

  dimension: assistant_name {
    type: string
    sql: ${TABLE}.AssistantName ;;
  }

  dimension: assistant_phone {
    type: string
    sql: ${TABLE}.AssistantPhone ;;
  }

  dimension_group: birthdate {
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
    sql: ${TABLE}.Birthdate ;;
  }

  dimension: clean_status {
    type: string
    sql: ${TABLE}.CleanStatus ;;
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

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension_group: email_bounced {
    hidden: yes
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

  dimension: home_phone {
    type: string
    sql: ${TABLE}.HomePhone ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.Id ;;
    primary_key: yes
    hidden: yes
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_email_bounced {
    type: yesno
    sql: ${TABLE}.IsEmailBounced ;;
    hidden:  yes
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

  dimension_group: last_curequest {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LastCurequestDate ;;
  }

  dimension_group: last_cuupdate {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LastCUUpdateDate ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.LastModifiedById ;;
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
    hidden: yes
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
  }

  # dimension: lead_source {
  #   type: string
  #   sql: ${TABLE}.LeadSource ;;
  # }

  dimension: mailing_city {
    type: string
    sql: ${TABLE}.MailingCity ;;
    group_label: "Mailing Details"
  }

  dimension: mailing_country {
    type: string
    sql: ${TABLE}.MailingCountry ;;
    group_label: "Mailing Details"
  }

  dimension: mailing_geocode_accuracy {
    type: string
    sql: ${TABLE}.MailingGeocodeAccuracy ;;
    group_label: "Mailing Details"
  }

  dimension: mailing_latitude {
    type: number
    sql: ${TABLE}.MailingLatitude ;;
    group_label: "Mailing Details"
  }

  dimension: mailing_longitude {
    type: number
    sql: ${TABLE}.MailingLongitude ;;
    group_label: "Mailing Details"
  }

  dimension: mailing_postal_code {
    type: string
    sql: ${TABLE}.MailingPostalCode ;;
    group_label: "Mailing Details"
  }

  dimension: mailing_state {
    type: string
    sql: ${TABLE}.MailingState ;;
    group_label: "Mailing Details"
  }

  dimension: mailing_street {
    type: string
    sql: ${TABLE}.MailingStreet ;;
    group_label: "Mailing Details"
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}.MasterRecordId ;;
    hidden:  yes
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.MobilePhone ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
    html: <a href="mailto:{{ contact.email._value }}" target="_blank">
    <img src="https://outlook.office.com/mail/favicon.ico" width="16" height="16" />
    </a>
    {{ linked_value }}
    ;;
  }

  dimension: other_city {
    type: string
    sql: ${TABLE}.OtherCity ;;
  }

  dimension: id_url {
    sql: ${TABLE}.Id ;;
    html: [<a href="https://{{ salesforce_domain_config._sql }}/{{ value }}">Open in SFDC</a>]
      ;;
  }

  dimension: other_country {
    type: string
    sql: ${TABLE}.OtherCountry ;;
  }

  dimension: other_geocode_accuracy {
    type: string
    sql: ${TABLE}.OtherGeocodeAccuracy ;;
  }

  dimension: other_latitude {
    type: number
    sql: ${TABLE}.OtherLatitude ;;
  }

  dimension: other_longitude {
    type: number
    sql: ${TABLE}.OtherLongitude ;;
  }

  dimension: other_phone {
    type: string
    sql: ${TABLE}.OtherPhone ;;
  }

  dimension: other_postal_code {
    type: string
    sql: ${TABLE}.OtherPostalCode ;;
  }

  dimension: other_state {
    type: string
    sql: ${TABLE}.OtherState ;;
  }

  dimension: other_street {
    type: string
    sql: ${TABLE}.OtherStreet ;;
  }

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

  dimension: reports_to_id {
    type: string
    sql: ${TABLE}.ReportsToId ;;
    hidden: yes
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
  }

  dimension_group: system_modstamp {
    type: time
    hidden: yes
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
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    label: "Number of Contacts"
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      assistant_name,
      first_name,
      last_name,
      account.id,
      account.name,
      user.count
    ]
  }
}
