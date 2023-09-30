view: user {
  sql_table_name: @{SALESFORCE_SCHEMA}.sf_User ;;
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
    hidden: yes
  }

  dimension_group: age  {
    type: duration
    datatype: date
    sql_start: ${created_date}  ;;
    sql_end: current_date ;;
  }

  dimension: tenure_months {
    label: "Tenure Months"
    type: string
    sql: concat(cast(${months_age} as string)," Months") ;;
  }

  dimension: tenure {
    sql: ${tenure_months} ;;
  }

  #### How longh does it take an AE to ramp #### default
  dimension: about_me {
    type: string
    sql: ${TABLE}.AboutMe ;;
    hidden: yes
  }

  dimension: account_id {
    type: string
    hidden: yes
    sql: ${TABLE}.AccountId ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.Alias ;;
    hidden: yes
  }
  dimension: badge_text {
    type: string
    sql: ${TABLE}.BadgeText ;;
    hidden: yes
  }

  dimension: banner_photo_url {
    type: string
    sql: ${TABLE}.BannerPhotoUrl ;;
    hidden: yes
  }

  dimension: call_center_id {
    type: string
    sql: ${TABLE}.CallCenterId ;;
    hidden: yes
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
    hidden: yes
  }

  dimension: community_nickname {
    type: string
    sql: ${TABLE}.CommunityNickname ;;
    hidden: yes
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: contact_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ContactId ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
    hidden: yes
  }

  dimension: created_by_id {
    hidden: yes
    type: string
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

  dimension: default_group_notification_frequency {
    type: string
    sql: ${TABLE}.DefaultGroupNotificationFrequency ;;
    hidden: yes
  }

  dimension: delegated_approver_id {
    hidden: yes
    type: string
    sql: ${TABLE}.DelegatedApproverId ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: digest_frequency {
    type: string
    sql: ${TABLE}.DigestFrequency ;;
    hidden: yes
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: email_encoding_key {
    type: string
    sql: ${TABLE}.EmailEncodingKey ;;
    hidden: yes
  }

  dimension: email_preferences_auto_bcc {
    type: yesno
    sql: ${TABLE}.EmailPreferencesAutoBcc ;;
    hidden: yes
  }

  dimension: email_preferences_auto_bcc_stay_in_touch {
    type: yesno
    sql: ${TABLE}.EmailPreferencesAutoBccStayInTouch ;;
    hidden: yes
  }

  dimension: email_preferences_stay_in_touch_reminder {
    type: yesno
    sql: ${TABLE}.EmailPreferencesStayInTouchReminder ;;
    hidden: yes
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.EmployeeNumber ;;
    hidden: yes
  }

  dimension: extension {
    type: string
    sql: ${TABLE}.Extension ;;
    hidden: yes
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
    hidden: yes
  }

  dimension: federation_identifier {
    type: string
    sql: ${TABLE}.FederationIdentifier ;;
    hidden: yes
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: forecast_enabled {
    type: yesno
    sql: ${TABLE}.ForecastEnabled ;;
    hidden: yes
  }

  dimension: full_photo_url {
    type: string
    sql: ${TABLE}.FullPhotoUrl ;;
    hidden: yes
  }

  dimension: geocode_accuracy {
    type: string
    sql: ${TABLE}.GeocodeAccuracy ;;
    hidden: yes
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.IsActive ;;
  }

  dimension: is_profile_photo_active {
    type: yesno
    sql: ${TABLE}.IsProfilePhotoActive ;;
    hidden: yes
  }

  dimension: jigsaw_import_limit_override {
    type: number
    sql: ${TABLE}.JigsawImportLimitOverride ;;
    hidden: yes
  }

  dimension: language_locale_key {
    type: string
    sql: ${TABLE}.LanguageLocaleKey ;;
    hidden: yes
  }

  dimension_group: last_login {
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
    sql: ${TABLE}.LastLoginDate ;;
    hidden: yes
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.LastModifiedById ;;
    hidden: yes
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

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension_group: last_password_change {
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
    sql: ${TABLE}.LastPasswordChangeDate ;;
    hidden: yes
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

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
    hidden: yes
  }

  dimension: locale_sid_key {
    type: string
    sql: ${TABLE}.LocaleSidKey ;;
    hidden: yes
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
    hidden: yes
  }

  dimension: manager_id {
    type: string
    sql: ${TABLE}.ManagerId ;;
    hidden: yes
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.MobilePhone ;;
    hidden: yes
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension_group: offline_pda_trial_expiration {
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
    sql: ${TABLE}.OfflinePdaRrialExpirationDate ;;
    hidden: yes
  }

  dimension_group: offline_trial_expiration {
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
    sql: ${TABLE}.OfflineTrialExpirationDate ;;
    hidden: yes
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
    hidden: yes
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
    hidden: yes
  }

  dimension: profile_id {
    type: string
    sql: ${TABLE}.ProfileId ;;
    hidden: yes
  }

  dimension: receives_admin_info_emails {
    type: yesno
    sql: ${TABLE}.ReceivesAdminInfoEmails ;;
    hidden: yes
  }

  dimension: receives_info_emails {
    type: yesno
    sql: ${TABLE}.ReceivesInfoEmails ;;
    hidden: yes
  }

  dimension: sender_email {
    type: string
    sql: ${TABLE}.SenderEmail ;;
    hidden: yes
  }

  dimension: sender_name {
    type: string
    sql: ${TABLE}.SenderName ;;
    hidden: yes
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.Signature ;;
    hidden: yes
  }

  dimension: small_photo_url {
    type: string
    sql: ${TABLE}.SmallPhotoUrl ;;
    hidden: yes
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
    hidden: yes
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
    hidden: yes
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: user_role_id {
    type: string
    sql: ${TABLE}.UserRoleId ;;
    hidden: yes
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.UserType ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
    hidden: yes
  }

  dimension: manager {
    type: string
    sql: ${manager.name} ;;
  }

  ### Measure
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      community_nickname,
      company_name,
      last_name,
      sender_name,
      name,
      first_name,
      username,
      account.id,
      account.name,
      contact.name,
      contact.jigsaw_contact_id,
      contact.assistant_name,
      contact.first_name,
      contact.last_name
    ]
  }
}

view: manager_facts {
  derived_table: {
    sql:
      SELECT
        manager.Name  AS manager_name,
        manager.Id as id,
        COUNT(DISTINCT(opportunity_owner.Id)) AS number_of_reps,
        COALESCE(SUM(CASE WHEN opportunity.IsWon  THEN opportunity.Amount    ELSE NULL END), 0) / COUNT(DISTINCT(opportunity_owner.Id)) as total_won_per_rep,
        COALESCE(SUM(CASE WHEN (NOT COALESCE(opportunity.IsClosed , FALSE)) AND (opportunity.ForecastCategory IN ('Pipeline','Forecast','BestCase')) THEN opportunity.Amount  ELSE NULL END), 0) / COUNT(DISTINCT(opportunity_owner.Id)) as pipeline_per_rep,
        (COUNT(CASE WHEN opportunity.IsWon  THEN 1 ELSE NULL END)) / NULLIF((COUNT(CASE WHEN opportunity.IsClosed  THEN 1 ELSE NULL END)),0)  AS win_percentage
      FROM  @{SALESFORCE_SCHEMA}.sf_User  AS manager
      JOIN @{SALESFORCE_SCHEMA}.sf_User  AS opportunity_owner ON  manager.Id = opportunity_owner.manager_Id
      JOIN @{SALESFORCE_SCHEMA}.sf_Opportunity  AS opportunity ON opportunity_owner.Id = opportunity.owner_Id
      WHERE NOT opportunity.IsDeleted
      GROUP BY 1,2 ;;
  }
  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
    primary_key: yes
    hidden: yes
  }

  dimension: manager_name {
    type: string
    sql: ${TABLE}.manager_name ;;
  }

  dimension: number_of_reps {
    type: number
    hidden: yes
    sql: ${TABLE}.number_of_reps ;;
  }

  dimension: win_percentage {
    type: number
    hidden: yes
    sql: ${TABLE}.win_percentage ;;
  }

  dimension: total_won_per_rep {
    type: number
    sql: ${TABLE}.total_won_per_rep ;;
    hidden: yes
    value_format_name: custom_amount_value_format
  }

  dimension: pipeline_per_rep {
    type: number
    hidden: yes
    sql: ${TABLE}.pipeline_per_rep ;;
    value_format_name: custom_amount_value_format
  }

  measure: avg_pipeline_per_rep {
    type: average
    sql: ${pipeline_per_rep};;
    value_format_name: custom_amount_value_format
  }

  measure: avg_amount_won_per_rep {
    type: average
    sql: ${total_won_per_rep};;
    value_format_name: custom_amount_value_format
  }

  measure: avg_win_percentage_per_rep {
    type: average
    sql: ${win_percentage};;
    value_format_name: percent_1
  }

  measure: total_number_of_reps {
    type: sum
    sql: ${number_of_reps} ;;
  }

}
