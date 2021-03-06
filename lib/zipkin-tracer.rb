require 'zipkin-tracer/trace'
require 'zipkin-tracer/rack/zipkin-tracer'
require 'zipkin-tracer/sidekiq/server_middleware'
require 'zipkin-tracer/sidekiq/client_middleware'
require 'zipkin-tracer/trace_client'
require 'zipkin-tracer/trace_container'
require 'zipkin-tracer/trace_generator'
require 'zipkin-tracer/trace_wrapper'

begin
  require 'faraday'
  require 'zipkin-tracer/faraday/zipkin-tracer'
rescue LoadError # Faraday is not available, we do not load our code.
end

begin
  require 'excon'
  require 'zipkin-tracer/excon/zipkin-tracer'
rescue LoadError
end

begin
  require 'net/http/middleware'
  require 'zipkin-tracer/net-http/zipkin-tracer'
rescue LoadError
end
