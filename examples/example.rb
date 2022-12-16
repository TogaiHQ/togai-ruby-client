require 'togai_client'

API_TOKEN = "YOUR_API_TOKEN"
BASE_PATH = "sandbox-api.togai.com"

##### Convert the above python code to ruby

TogaiClient.configure do |config|
    config.host = BASE_PATH
    config.access_token = API_TOKEN
    config.server_index = nil
end

# Following example simulates the pricing of an API based SMS service which charges their customers based on region and size of the message.
# Follow the steps below to create the required entities in Togai, and then ingest an event.

# Step 1: Create an Event Schema to define the event structure, attributes (can be usage value) and dimensions (can be used filters in usage meters i.e country in this case)
event_schema_api = TogaiClient::EventSchemasApi.new
create_event_schema_request = TogaiClient::CreateEventSchemaRequest.new(
    name: "message_sent",
    attributes: [
        TogaiClient::EventAttributeSchema.new(
            name: "sms_id"
        )
    ],
    dimensions: [
        TogaiClient::DimensionsSchema.new(
            name: "country"
        )
    ]
)

event_schema = event_schema_api.create_event_schema(create_event_schema_request)
pp event_schema


# Step 2: Activate the Event Schema
event_schema_api.activate_event_schema(event_schema.name)

# Step 3: Create a Usage Meter to meter the usage with aggregation methods
usage_meters_api = TogaiClient::UsageMetersApi.new
create_usage_meter_request = TogaiClient::CreateUsageMeterRequest.new(
    name: "message_count",
    type: "COUNTER",
    aggregation: "COUNT",
    computations: [
        TogaiClient::Computation.new(
            matcher: '''{
                "==": [
                    {
                        "var": "dimensions.country"
                    },
                    "US"
                ]
            }''',
            computation: "1"
        )
    ]
)
usage_meter = usage_meters_api.create_usage_meter(event_schema.name, create_usage_meter_request)
pp usage_meter

# Step 4: Activate a usage meter
usage_meters_api.activate_usage_meter(event_schema.name, usage_meter.name)

# Step 5: Create a Price plan to convert the usage into a billable price
create_price_plan_request = TogaiClient::CreatePricePlanRequest.new(
    name: "price-plan",
    price_plan_details: TogaiClient::PricePlanDetails.new(
        pricing_cycle_config: TogaiClient::PricingCycleConfig.new(
            interval: "MONTHLY",
            start_type: "STATIC",
            start_offset: TogaiClient::PricingCycleConfigStartOffset.new(
                day_offset: "1",
                month_offset: "NIL"
            ),
            grace_period: 1
        ),
        rate_cards: [
            TogaiClient::RateCard.new(
                display_name: "SMS charges",
                pricing_model: TogaiClient::PricingModel::TIERED,
                rate_config: TogaiClient::RateConfigUsage.new(
                    usage_meter_name: usage_meter.name,
                    slabs: [
                        TogaiClient::SlabUsage.new(
                            rate: 0.2,
                            start_after: 0.0,
                            price_type: TogaiClient::PriceType::PER_UNIT,
                            order: 1    
                        ),
                        TogaiClient::SlabUsage.new(
                            rate: 0.1,
                            start_after: 10000.0,
                            price_type: TogaiClient::PriceType::PER_UNIT,
                            order: 2
                        )
                    ]
                )
            )
        ]
    )
)
price_plan_api = TogaiClient::PricePlansApi.new
price_plan = price_plan_api.create_price_plan(create_price_plan_request)
pp price_plan


# Step 6: Activate the Price Plan
price_plan_api.activate_price_plan(price_plan.name)

# Step 7: Create customers to associate price plans
create_customer_request = TogaiClient::CreateCustomerRequest.new(
    name: "customer1",
    id: "1",
    primary_email: "email@togai.com",
    billing_address: "221B Baker Street, Marylebone, London NW1 6XE, United Kingdom"
)
customers_api = TogaiClient::CustomersApi.new
customer = customers_api.create_customer(create_customer_request)
pp customer

# Step 8: Associate the customer/account to the price plan
associate_price_plan_request = TogaiClient::AssociatePricePlanRequest.new(
    price_plan_name: price_plan.name,
    effective_from: Date.today,
    effective_until: Date.new(9999, 1, 1)
)
associate_price_plan_api = TogaiClient::AccountsApi.new
associate_price_plan = associate_price_plan_api.associate_price_plan(customer.id, customer.id, associate_price_plan_request)
pp associate_price_plan

# Step 9: Ingest events
events_api = TogaiClient::EventIngestionApi.new
event_request = TogaiClient::IngestEventRequest.new(
    event: TogaiClient::Event.new(
        id: "random-string" + rand.to_s,
        event_name: event_schema.name,
        event_timestamp: DateTime.now,
        account_id: customer.id,
        event_attributes: [
            TogaiClient::EventAttribute.new(
                attribute_name: "sms_id",
                attribute_value: "random-string" + rand.to_s
            )
        ],
        dimensions: {
            "country": "US"
        }
    )
)
event = events_api.ingest(event_request)
pp event

sleep(61)

# Step 10: Get the usage metrics 
now = DateTime.now
yesterday = DateTime.now - 1
metrics_api = TogaiClient::MetricsApi.new
usage_metrics_request = TogaiClient::GetMetricsRequest.new(
    start_time: yesterday,
    end_time: now,
    metric_queries: [
        TogaiClient::MetricQuery.new(
            id: "usage-metrics",
            name: TogaiClient::MetricName::USAGE,
            aggregation_period: "DAY"
        )
    ]
)
usage_metrics = metrics_api.get_metrics(get_metrics_request: usage_metrics_request)
pp usage_metrics

# Step 11: Get the revenue metrics
# Revenue metrics might take a bit of time to be reflected in the system
# You can check the docs on the amount of time it takes for events to get processed for revenue.
revenue_metrics_request = TogaiClient::GetMetricsRequest.new(
    start_time: yesterday,
    end_time: now,
    metric_queries: [
        TogaiClient::MetricQuery.new(
            id: "revenue-metrics",
            name: TogaiClient::MetricName::REVENUE,
            aggregation_period: "DAY"
        )
    ]
)
revenue_metrics = metrics_api.get_metrics(get_metrics_request: revenue_metrics_request)
pp revenue_metrics

# Revenue metrics for a specific customer
customer_revenue_metrics_request = TogaiClient::GetMetricsRequest.new(
    start_time: yesterday,
    end_time: now,
    metric_queries: [
        TogaiClient::MetricQuery.new(
            id: "customer-revenue-metrics",
            name: TogaiClient::MetricName::REVENUE,
            aggregation_period: "DAY",
            filters: [
                TogaiClient::MetricQueryFilterEntry.new(
                    field_name: "CUSTOMER_ID",
                    field_values: [customer.id]
                )
            ]
        )
    ]
)
customer_revenue_metrics = metrics_api.get_metrics(get_metrics_request: customer_revenue_metrics_request)
pp customer_revenue_metrics











