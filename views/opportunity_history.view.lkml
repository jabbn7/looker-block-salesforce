# view: opportunity_history {
# #   sql_table_name: @{SCHEMA_NAME}.sf_OpportunityHistory ;;
#   sql_table_name: salesforce.sf_User ;;

#   dimension: id {
#     primary_key: yes
#     type: string
#     sql: ${TABLE}.Id ;;
#   }

#   dimension_group: _attrib_synced {
#     hidden: yes
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}._attrib_synced ;;
#   }

#   dimension: amount {
#     hidden: yes
#     type: number
#     sql: ${TABLE}.Amount ;;
#   }

#   dimension_group: close {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.CloseDate ;;
#   }

#   dimension: created_by_id {
#     type: string
#     sql: ${TABLE}.CreatedById ;;
#   }

#   dimension_group: created {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.CreatedDate ;;
#     label: "Snapshot"
#   }

#   dimension: expected_revenue {
#     type: number
#     sql: ${TABLE}.ExpectedRevenue ;;
#   }

#   dimension: forecast_category {
#     type: string
#     sql: ${TABLE}.ForecastCategory ;;
#   }

#   dimension: is_deleted {
#     type: yesno
#     sql: ${TABLE}.IsDeleted ;;
#   }

#   dimension: opportunity_id {
#     type: string
#     sql: ${TABLE}.OpportunityId ;;
#   }

#   dimension: probability {
#     type: number
#     sql: ${TABLE}.Probability ;;
#   }

#   dimension: stage_name {
#     type: string
#     sql: ${TABLE}.StageName ;;
#   }

#   dimension_group: system_modstamp {
#     hidden: yes
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.SystemModstamp ;;
#   }

# #   Measures:

#   measure: total_amount {
#     type: sum
#     sql: ${amount} ;;
#   }

# }
