# encoding: utf-8

SERVICE_NAME = attribute(
  'service_name',
  description: 'name of the http service'
)

SERVICE_HEALTHCHECK = attribute(
  'service_healthcheck',
  description: 'http healthcheck url'
)

title SERVICE_NAME

describe http(SERVICE_HEALTHCHECK) do
  its('status') { should be >= 200 }
  its('status') { should be <= 299 }
end