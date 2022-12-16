=begin
#Togai Apis

#APIs for Togai App

The version of the OpenAPI document: 1.0
Contact: engg@togai.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

# Common files
require 'togai_client/api_client'
require 'togai_client/api_error'
require 'togai_client/version'
require 'togai_client/configuration'

# Models
require 'togai_client/models/account'
require 'togai_client/models/account_aliases'
require 'togai_client/models/account_paginated_response'
require 'togai_client/models/add_account_aliases_request'
require 'togai_client/models/associate_price_plan_request'
require 'togai_client/models/associate_price_plan_response'
require 'togai_client/models/base_success_response'
require 'togai_client/models/bundle'
require 'togai_client/models/computation'
require 'togai_client/models/create_account_request'
require 'togai_client/models/create_customer_request'
require 'togai_client/models/create_customer_response'
require 'togai_client/models/create_event_schema_request'
require 'togai_client/models/create_price_plan_request'
require 'togai_client/models/create_usage_meter_request'
require 'togai_client/models/customer'
require 'togai_client/models/customer_paginated_response'
require 'togai_client/models/dimensions_schema'
require 'togai_client/models/error_response'
require 'togai_client/models/event'
require 'togai_client/models/event_attribute'
require 'togai_client/models/event_attribute_schema'
require 'togai_client/models/event_pipeline_info'
require 'togai_client/models/event_pipeline_info_account'
require 'togai_client/models/event_pipeline_info_customer'
require 'togai_client/models/event_pipeline_info_event_schema'
require 'togai_client/models/event_pipeline_info_price_plans_inner'
require 'togai_client/models/event_pipeline_info_usage_meters_inner'
require 'togai_client/models/event_schema'
require 'togai_client/models/event_schema_list_data'
require 'togai_client/models/event_schema_list_data_all_of'
require 'togai_client/models/event_schema_list_paginated_response'
require 'togai_client/models/event_schema_versions_response'
require 'togai_client/models/event_with_status'
require 'togai_client/models/event_with_status_and_event_pipeline_info'
require 'togai_client/models/event_with_status_and_event_pipeline_info_all_of'
require 'togai_client/models/get_event_response'
require 'togai_client/models/get_events_response'
require 'togai_client/models/get_metrics_request'
require 'togai_client/models/get_metrics_response'
require 'togai_client/models/ingest_batch_event_request'
require 'togai_client/models/ingest_batch_event_response'
require 'togai_client/models/ingest_error'
require 'togai_client/models/ingest_event_request'
require 'togai_client/models/ingest_event_response'
require 'togai_client/models/ingestion_status'
require 'togai_client/models/metric_data_points'
require 'togai_client/models/metric_data_points_grouped_by'
require 'togai_client/models/metric_name'
require 'togai_client/models/metric_query'
require 'togai_client/models/metric_query_filter_entry'
require 'togai_client/models/metric_query_response'
require 'togai_client/models/pagination_options'
require 'togai_client/models/plan_override'
require 'togai_client/models/price_plan'
require 'togai_client/models/price_plan_details'
require 'togai_client/models/price_plan_details_override'
require 'togai_client/models/price_plan_list_data'
require 'togai_client/models/price_plan_paginated_response'
require 'togai_client/models/price_type'
require 'togai_client/models/pricing_cycle_config'
require 'togai_client/models/pricing_cycle_config_start_offset'
require 'togai_client/models/pricing_model'
require 'togai_client/models/pricing_schedule'
require 'togai_client/models/rate_card'
require 'togai_client/models/rate_card_bundle_aggregation'
require 'togai_client/models/rate_card_type'
require 'togai_client/models/rate_config_bundle'
require 'togai_client/models/rate_config_usage'
require 'togai_client/models/remove_account_aliases_request'
require 'togai_client/models/signup_request'
require 'togai_client/models/signup_response'
require 'togai_client/models/slab_bundle'
require 'togai_client/models/slab_usage'
require 'togai_client/models/status_response'
require 'togai_client/models/status_response_headers'
require 'togai_client/models/update_account_request'
require 'togai_client/models/update_customer_request'
require 'togai_client/models/update_event_schema_request'
require 'togai_client/models/update_price_plan_request'
require 'togai_client/models/update_usage_meter_request'
require 'togai_client/models/usage_meter'
require 'togai_client/models/usage_meter_paginated_response'
require 'togai_client/models/user_details'

# APIs
require 'togai_client/api/accounts_api'
require 'togai_client/api/customers_api'
require 'togai_client/api/event_ingestion_api'
require 'togai_client/api/event_management_api'
require 'togai_client/api/event_schemas_api'
require 'togai_client/api/metrics_api'
require 'togai_client/api/price_plans_api'
require 'togai_client/api/usage_meters_api'

module TogaiClient
  class << self
    # Customize default settings for the SDK using block.
    #   TogaiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
