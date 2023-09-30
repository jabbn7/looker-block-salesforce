view: campaign {
  sql_table_name: @{SALESFORCE_SCHEMA}.sf_Campaign ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: actual_cost {
    type: number
    sql: ${TABLE}.ActualCost ;;
    hidden: yes
  }

  dimension: amount_all_opportunities {
    type: number
    sql: ${TABLE}.AmountAllOpportunities ;;
    hidden: yes
  }

  dimension: amount_won_opportunities {
    type: number
    sql: ${TABLE}.AmountWonOpportunities ;;
    hidden: yes
  }

  dimension: budgeted_cost {
    type: number
    sql: ${TABLE}.BudgetedCost ;;
    hidden: yes
  }

  dimension: campaign_member_record_type_id {
    type: string
    sql: ${TABLE}.CampaignMemberRecordTypeId ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: expected_response {
    type: number
    sql: ${TABLE}.ExpectedResponse ;;
    hidden: yes
  }

  dimension: expected_revenue {
    type: number
    sql: ${TABLE}.ExpectedRevenue ;;
    hidden: yes
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.IsActive ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}.LastActivityDate ;;
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
    sql: ${TABLE}.LastViewedDate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
    html: <a href="https://{{ salesforce_domain_config._sql }}/{{ campaign.id._value }}" target="_new">
          <img src="https://www.google.com/s2/favicons?domain=www.salesforce.com" height=16 width=16></a>
          {{ linked_value }};;
  }

  dimension: number_of_contacts {
    type: number
    sql: ${TABLE}.NumberOfContacts ;;
    hidden: yes
  }

  dimension: number_of_converted_leads {
    type: number
    sql: ${TABLE}.NumberOfConvertedLeads ;;
    hidden: yes
  }

  dimension: number_of_leads {
    type: number
    sql: ${TABLE}.NumberOfLeads ;;
    hidden:  yes
  }

  dimension: number_of_opportunities {
    type: number
    sql: ${TABLE}.NumberOfOpportunities ;;
    hidden: yes
  }

  dimension: number_of_responses {
    type: number
    sql: ${TABLE}.NumberOfResponses ;;
    hidden: yes
  }

  dimension: number_of_won_opportunities {
    type: number
    sql: ${TABLE}.NumberOfWonOpportunities ;;
    hidden: yes
  }

  dimension: number_sent {
    type: number
    sql: ${TABLE}.NumberSent ;;
    hidden: yes
  }

  dimension: parent_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ParentId ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension_group: system_modstamp {
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
    sql: ${TABLE}.SystemModstamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, opportunity.count]
    label: "Number of Campaigns"
  }

  measure: total_number_of_won_opportunities {
    type: sum
    sql: ${number_of_won_opportunities} ;;
  }

  measure: total_number_sent {
    type: sum
    sql: ${number_sent} ;;
  }

  measure: total_number_of_responses {
    type: sum
    sql: ${number_of_responses} ;;
  }

  measure: total_number_of_leads {
    type: sum
    sql: ${number_of_leads} ;;
  }

  measure: total_number_of_converted_leads {
    type: sum
    sql: ${number_of_converted_leads} ;;
  }

  measure: total_number_of_contacts {
    type: sum
    sql: ${number_of_contacts} ;;
  }

  measure: total_cost {
    type: sum
    sql: ${actual_cost} ;;
    value_format_name: usd
  }

  dimension: owner_id {
    type: string
    hidden: yes
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: last_modified_by_id {
    type: string
    hidden: yes
    sql: ${TABLE}.LastModifiedById ;;
  }
}
