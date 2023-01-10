# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rack-cors` gem.
# Please instead update this file by running `bin/tapioca gem rack-cors`.

# source://rack-cors//lib/rack/cors.rb#3
module Rack
  class << self
    # source://rack/3.0.3/lib/rack/version.rb#31
    def release; end

    # source://rack/3.0.3/lib/rack/version.rb#23
    def version; end
  end
end

# source://rack/3.0.3/lib/rack/constants.rb#19
Rack::CACHE_CONTROL = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#20
Rack::CONTENT_LENGTH = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#21
Rack::CONTENT_TYPE = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#4
class Rack::Cors
  # @return [Cors] a new instance of Cors
  #
  # source://rack-cors//lib/rack/cors.rb#28
  def initialize(app, opts = T.unsafe(nil), &block); end

  # source://rack-cors//lib/rack/cors.rb#54
  def allow(&block); end

  # source://rack-cors//lib/rack/cors.rb#64
  def call(env); end

  # @return [Boolean]
  #
  # source://rack-cors//lib/rack/cors.rb#50
  def debug?; end

  protected

  # source://rack-cors//lib/rack/cors.rb#169
  def all_resources; end

  # source://rack-cors//lib/rack/cors.rb#134
  def debug(env, message = T.unsafe(nil), &block); end

  # source://rack-cors//lib/rack/cors.rb#155
  def evaluate_path(env); end

  # source://rack-cors//lib/rack/cors.rb#207
  def match_resource(path, env); end

  # source://rack-cors//lib/rack/cors.rb#185
  def process_cors(env, path); end

  # source://rack-cors//lib/rack/cors.rb#173
  def process_preflight(env, path); end

  # source://rack-cors//lib/rack/cors.rb#198
  def resource_for_path(path_info); end

  # source://rack-cors//lib/rack/cors.rb#138
  def select_logger(env); end
end

# All CORS routes need to accept CORS simple headers at all times
# {https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers}
#
# source://rack-cors//lib/rack/cors.rb#26
Rack::Cors::CORS_SIMPLE_HEADERS = T.let(T.unsafe(nil), Array)

# source://rack-cors//lib/rack/cors.rb#22
Rack::Cors::DEFAULT_VARY_HEADERS = T.let(T.unsafe(nil), Array)

# source://rack-cors//lib/rack/cors.rb#17
Rack::Cors::ENV_KEY = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#9
Rack::Cors::HTTP_ACCESS_CONTROL_REQUEST_HEADERS = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#8
Rack::Cors::HTTP_ACCESS_CONTROL_REQUEST_METHOD = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#5
Rack::Cors::HTTP_ORIGIN = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#6
Rack::Cors::HTTP_X_ORIGIN = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#19
Rack::Cors::OPTIONS = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#11
Rack::Cors::PATH_INFO = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#15
Rack::Cors::RACK_CORS = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#14
Rack::Cors::RACK_LOGGER = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#12
Rack::Cors::REQUEST_METHOD = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#336
class Rack::Cors::Resource
  # @raise [CorsMisconfigurationError]
  # @return [Resource] a new instance of Resource
  #
  # source://rack-cors//lib/rack/cors.rb#346
  def initialize(public_resource, path, opts = T.unsafe(nil)); end

  # Returns the value of attribute credentials.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def credentials; end

  # Sets the attribute credentials
  #
  # @param value the value to set the attribute credentials to.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def credentials=(_arg0); end

  # Returns the value of attribute expose.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def expose; end

  # Sets the attribute expose
  #
  # @param value the value to set the attribute expose to.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def expose=(_arg0); end

  # Returns the value of attribute headers.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def headers; end

  # Sets the attribute headers
  #
  # @param value the value to set the attribute headers to.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def headers=(_arg0); end

  # Returns the value of attribute if_proc.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def if_proc; end

  # Sets the attribute if_proc
  #
  # @param value the value to set the attribute if_proc to.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def if_proc=(_arg0); end

  # @return [Boolean]
  #
  # source://rack-cors//lib/rack/cors.rb#377
  def match?(path, env); end

  # @return [Boolean]
  #
  # source://rack-cors//lib/rack/cors.rb#373
  def matches_path?(path); end

  # Returns the value of attribute max_age.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def max_age; end

  # Sets the attribute max_age
  #
  # @param value the value to set the attribute max_age to.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def max_age=(_arg0); end

  # Returns the value of attribute methods.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def methods; end

  # Sets the attribute methods
  #
  # @param value the value to set the attribute methods to.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def methods=(_arg0); end

  # Returns the value of attribute path.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def path; end

  # Sets the attribute path
  #
  # @param value the value to set the attribute path to.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def path=(_arg0); end

  # Returns the value of attribute pattern.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def pattern; end

  # Sets the attribute pattern
  #
  # @param value the value to set the attribute pattern to.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def pattern=(_arg0); end

  # source://rack-cors//lib/rack/cors.rb#381
  def process_preflight(env, result); end

  # source://rack-cors//lib/rack/cors.rb#401
  def to_headers(env); end

  # Returns the value of attribute vary_headers.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def vary_headers; end

  # Sets the attribute vary_headers
  #
  # @param value the value to set the attribute vary_headers to.
  #
  # source://rack-cors//lib/rack/cors.rb#344
  def vary_headers=(_arg0); end

  protected

  # @return [Boolean]
  #
  # source://rack-cors//lib/rack/cors.rb#429
  def allow_headers?(request_headers); end

  # source://rack-cors//lib/rack/cors.rb#446
  def compile(path); end

  # source://rack-cors//lib/rack/cors.rb#441
  def ensure_enum(v); end

  # source://rack-cors//lib/rack/cors.rb#416
  def origin_for_response_header(origin); end

  # @return [Boolean]
  #
  # source://rack-cors//lib/rack/cors.rb#412
  def public_resource?; end

  # source://rack-cors//lib/rack/cors.rb#421
  def to_preflight_headers(env); end
end

# source://rack-cors//lib/rack/cors.rb#337
class Rack::Cors::Resource::CorsMisconfigurationError < ::StandardError
  # source://rack-cors//lib/rack/cors.rb#338
  def message; end
end

# source://rack-cors//lib/rack/cors.rb#282
class Rack::Cors::Resources
  # @return [Resources] a new instance of Resources
  #
  # source://rack-cors//lib/rack/cors.rb#286
  def initialize; end

  # @return [Boolean]
  #
  # source://rack-cors//lib/rack/cors.rb#314
  def allow_origin?(source, env = T.unsafe(nil)); end

  # source://rack-cors//lib/rack/cors.rb#326
  def match_resource(path, env); end

  # source://rack-cors//lib/rack/cors.rb#292
  def origins(*args, &blk); end

  # @return [Boolean]
  #
  # source://rack-cors//lib/rack/cors.rb#310
  def public_resources?; end

  # source://rack-cors//lib/rack/cors.rb#306
  def resource(path, opts = T.unsafe(nil)); end

  # source://rack-cors//lib/rack/cors.rb#330
  def resource_for_path(path); end

  # Returns the value of attribute resources.
  #
  # source://rack-cors//lib/rack/cors.rb#284
  def resources; end
end

# source://rack-cors//lib/rack/cors.rb#223
class Rack::Cors::Result
  # source://rack-cors//lib/rack/cors.rb#270
  def append_header(headers); end

  # Returns the value of attribute hit.
  #
  # source://rack-cors//lib/rack/cors.rb#233
  def hit; end

  # Sets the attribute hit
  #
  # @param value the value to set the attribute hit to.
  #
  # source://rack-cors//lib/rack/cors.rb#233
  def hit=(_arg0); end

  # @return [Boolean]
  #
  # source://rack-cors//lib/rack/cors.rb#235
  def hit?; end

  # source://rack-cors//lib/rack/cors.rb#243
  def miss(reason); end

  # Returns the value of attribute miss_reason.
  #
  # source://rack-cors//lib/rack/cors.rb#233
  def miss_reason; end

  # Sets the attribute miss_reason
  #
  # @param value the value to set the attribute miss_reason to.
  #
  # source://rack-cors//lib/rack/cors.rb#233
  def miss_reason=(_arg0); end

  # Returns the value of attribute preflight.
  #
  # source://rack-cors//lib/rack/cors.rb#233
  def preflight; end

  # Sets the attribute preflight
  #
  # @param value the value to set the attribute preflight to.
  #
  # source://rack-cors//lib/rack/cors.rb#233
  def preflight=(_arg0); end

  # @return [Boolean]
  #
  # source://rack-cors//lib/rack/cors.rb#239
  def preflight?; end

  class << self
    # source://rack-cors//lib/rack/cors.rb#248
    def hit(env); end

    # source://rack-cors//lib/rack/cors.rb#255
    def miss(env, reason); end

    # source://rack-cors//lib/rack/cors.rb#263
    def preflight(env); end
  end
end

# source://rack-cors//lib/rack/cors.rb#224
Rack::Cors::Result::HEADER_KEY = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#231
Rack::Cors::Result::MISS_DENY_HEADER = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#230
Rack::Cors::Result::MISS_DENY_METHOD = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#229
Rack::Cors::Result::MISS_NO_METHOD = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#226
Rack::Cors::Result::MISS_NO_ORIGIN = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#227
Rack::Cors::Result::MISS_NO_PATH = T.let(T.unsafe(nil), String)

# source://rack-cors//lib/rack/cors.rb#20
Rack::Cors::VARY = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#32
Rack::DELETE = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#22
Rack::ETAG = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#23
Rack::EXPIRES = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/file.rb#8
Rack::File = Rack::Files

# source://rack/3.0.3/lib/rack/constants.rb#28
Rack::GET = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#33
Rack::HEAD = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#7
Rack::HTTPS = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#16
Rack::HTTP_COOKIE = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#5
Rack::HTTP_HOST = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#6
Rack::HTTP_PORT = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#35
Rack::LINK = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#34
Rack::OPTIONS = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#31
Rack::PATCH = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#8
Rack::PATH_INFO = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#29
Rack::POST = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#30
Rack::PUT = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#12
Rack::QUERY_STRING = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#42
Rack::RACK_ERRORS = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#49
Rack::RACK_HIJACK = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#44
Rack::RACK_INPUT = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#50
Rack::RACK_IS_HIJACK = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#43
Rack::RACK_LOGGER = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#62
Rack::RACK_METHODOVERRIDE_ORIGINAL_METHOD = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#52
Rack::RACK_MULTIPART_BUFFER_SIZE = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#53
Rack::RACK_MULTIPART_TEMPFILE_FACTORY = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#51
Rack::RACK_RECURSIVE_INCLUDE = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#58
Rack::RACK_REQUEST_COOKIE_HASH = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#59
Rack::RACK_REQUEST_COOKIE_STRING = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#56
Rack::RACK_REQUEST_FORM_HASH = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#55
Rack::RACK_REQUEST_FORM_INPUT = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#57
Rack::RACK_REQUEST_FORM_VARS = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#60
Rack::RACK_REQUEST_QUERY_HASH = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#61
Rack::RACK_REQUEST_QUERY_STRING = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#54
Rack::RACK_RESPONSE_FINISHED = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#45
Rack::RACK_SESSION = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#46
Rack::RACK_SESSION_OPTIONS = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#47
Rack::RACK_SHOWSTATUS_DETAIL = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#41
Rack::RACK_TEMPFILES = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#48
Rack::RACK_URL_SCHEME = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#40
Rack::RACK_VERSION = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/version.rb#28
Rack::RELEASE = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#9
Rack::REQUEST_METHOD = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#10
Rack::REQUEST_PATH = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#11
Rack::SCRIPT_NAME = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#14
Rack::SERVER_NAME = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#15
Rack::SERVER_PORT = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#13
Rack::SERVER_PROTOCOL = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#24
Rack::SET_COOKIE = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#37
Rack::TRACE = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#25
Rack::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/constants.rb#36
Rack::UNLINK = T.let(T.unsafe(nil), String)

# source://rack/3.0.3/lib/rack/version.rb#16
Rack::VERSION = T.let(T.unsafe(nil), Array)

# source://rack/3.0.3/lib/rack/version.rb#19
Rack::VERSION_STRING = T.let(T.unsafe(nil), String)
