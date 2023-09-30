
view: task {
  sql_table_name: @{SALESFORCE_SCHEMA}.sf_Task ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
    hidden: yes
  }

  dimension_group: _attrib_synced {
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
    sql: ${TABLE}._attrib_synced ;;
  }

  dimension: account_id {
    type: string
    hidden: yes
    sql: ${TABLE}.AccountId ;;
  }

  dimension_group: activity {
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
    sql: ${TABLE}.ActivityDate ;;
  }

  dimension: call_disposition {
    type: string
    hidden: yes
    sql: ${TABLE}.CallDisposition ;;
  }

  dimension: call_duration_in_seconds {
    type: number
    hidden: yes
    sql: ${TABLE}.CallDurationInSeconds ;;
  }

  dimension: call_object {
    type: string
    hidden: yes
    sql: ${TABLE}.CallObject ;;
  }

  dimension: call_type {
    type: string
    sql: ${TABLE}.CallType ;;
  }

  dimension: created_by_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CreatedById ;;
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

  dimension: currency_iso_code {
    type: string
    hidden: yes
    sql: ${TABLE}.CurrencyIsoCode ;;
  }

  dimension: description {
    type: string
    sql: CONCAT(SUBSTR(${TABLE}.Description,0,130), "...") ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.IsClosed ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_high_priority {
    type: yesno
    sql: ${TABLE}.IsHighPriority ;;
  }

  dimension: is_recurrence {
    type: yesno
    sql: ${TABLE}.IsRecurrence ;;
  }

  dimension: is_reminder_set {
    type: yesno
    hidden: yes
    sql: ${TABLE}.IsReminderSet ;;
  }

  dimension: last_modified_by_id {
    type: string
    hidden: yes
    sql: ${TABLE}.LastModifiedById ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LastModifiedDate ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.Priority ;;
  }

  dimension: record_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.RecordTypeId ;;
  }

  dimension: recurrence_activity_id {
    type: string
    hidden: yes
    sql: ${TABLE}.RecurrenceActivityId ;;
  }

  dimension: recurrence_day_of_month {
    type: number
    hidden: yes
    sql: ${TABLE}.RecurrenceDayOfMonth ;;
  }

  dimension: recurrence_day_of_week_mask {
    type: number
    hidden: yes
    sql: ${TABLE}.RecurrenceDayOfWeekMask ;;
  }

  dimension_group: recurrence_end_date_only {
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
    sql: ${TABLE}.RecurrenceEndDateOnly ;;
  }

  dimension: recurrence_instance {
    type: string
    hidden: yes
    sql: ${TABLE}.RecurrenceInstance ;;
  }

  dimension: recurrence_interval {
    type: number
    hidden: yes
    sql: ${TABLE}.RecurrenceInterval ;;
  }

  dimension: recurrence_month_of_year {
    type: string
    hidden: yes
    sql: ${TABLE}.RecurrenceMonthOfYear ;;
  }

  dimension: recurrence_regenerated_type {
    type: string
    hidden: yes
    sql: ${TABLE}.RecurrenceRegeneratedType ;;
  }

  dimension_group: recurrence_start_date_only {
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
    sql: ${TABLE}.RecurrenceStartDateOnly ;;
  }

  dimension: recurrence_time_zone_sid_key {
    type: string
    hidden: yes
    sql: ${TABLE}.RecurrenceTimeZoneSidKey ;;
  }

  dimension: recurrence_type {
    type: string
    hidden: yes
    sql: ${TABLE}.RecurrenceType ;;
  }

  dimension_group: reminder_date {
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
    sql: ${TABLE}.ReminderDateTime ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
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

  dimension: task_subtype {
    type: string
    hidden: yes
    sql: ${TABLE}.TaskSubtype ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: what_id {
    type: string
    hidden: yes
    sql: ${TABLE}.WhatId ;;
  }

  dimension: who_id {
    type: string
    hidden: yes
    sql: ${TABLE}.WhoId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.id, account.name]
  }

  measure: emails {
    type: count
    filters: {
      field: type
      value: "Email"
    }
  }

  measure: calls {
    type: count
    filters: {
      field: type
      value: "Call"
    }
  }

  measure: meetings {
    type: count
    filters: {
      field: type
      value: "%Meeting%"
    }
  }
}
