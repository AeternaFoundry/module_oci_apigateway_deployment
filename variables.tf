variable "apigateway_deployments" {
  description = <<EOT
Map of apigateway_deployments, attributes below
Required:
    - compartment_id
    - gateway_id
    - path_prefix
    - specification (block):
        - logging_policies (optional, block):
            - access_log (optional, block):
                - is_enabled (optional)
            - execution_log (optional, block):
                - is_enabled (optional)
                - log_level (optional)
        - request_policies (optional, block):
            - authentication (optional, block):
                - audiences (optional)
                - cache_key (optional)
                - function_id (optional)
                - is_anonymous_access_allowed (optional)
                - issuers (optional)
                - max_clock_skew_in_seconds (optional)
                - parameters (optional)
                - public_keys (optional, block):
                    - is_ssl_verify_disabled (optional)
                    - keys (optional, block):
                        - alg (optional)
                        - e (optional)
                        - format (required)
                        - key (optional)
                        - key_ops (optional)
                        - kid (optional)
                        - kty (optional)
                        - n (optional)
                        - use (optional)
                    - max_cache_duration_in_hours (optional)
                    - type (required)
                    - uri (optional)
                - token_auth_scheme (optional)
                - token_header (optional)
                - token_query_param (optional)
                - type (required)
                - validation_failure_policy (optional, block):
                    - client_details (optional, block):
                        - client_id (optional)
                        - client_secret_id (optional)
                        - client_secret_version_number (optional)
                        - type (required)
                    - fallback_redirect_path (optional)
                    - login_path (optional)
                    - logout_path (optional)
                    - max_expiry_duration_in_hours (optional)
                    - response_code (optional)
                    - response_header_transformations (optional, block):
                        - filter_headers (optional, block):
                            - items (optional, block):
                                - name (optional)
                            - type (optional)
                        - rename_headers (optional, block):
                            - items (optional, block):
                                - from (optional)
                                - to (optional)
                        - set_headers (optional, block):
                            - items (optional, block):
                                - if_exists (optional)
                                - name (optional)
                                - values (optional)
                    - response_message (optional)
                    - response_type (optional)
                    - scopes (optional)
                    - source_uri_details (optional, block):
                        - type (required)
                        - uri (optional)
                    - type (required)
                    - use_cookies_for_intermediate_steps (optional)
                    - use_cookies_for_session (optional)
                    - use_pkce (optional)
                - validation_policy (optional, block):
                    - additional_validation_policy (optional, block):
                        - audiences (optional)
                        - issuers (optional)
                        - verify_claims (optional, block):
                            - is_required (optional)
                            - key (optional)
                            - values (optional)
                    - client_details (optional, block):
                        - client_id (optional)
                        - client_secret_id (optional)
                        - client_secret_version_number (optional)
                        - type (required)
                    - is_ssl_verify_disabled (optional)
                    - keys (optional, block):
                        - alg (optional)
                        - e (optional)
                        - format (required)
                        - key (optional)
                        - key_ops (optional)
                        - kid (optional)
                        - kty (optional)
                        - n (optional)
                        - use (optional)
                    - max_cache_duration_in_hours (optional)
                    - source_uri_details (optional, block):
                        - type (required)
                        - uri (optional)
                    - type (required)
                    - uri (optional)
                - verify_claims (optional, block):
                    - is_required (optional)
                    - key (optional)
                    - values (optional)
            - cors (optional, block):
                - allowed_headers (optional)
                - allowed_methods (optional)
                - allowed_origins (required)
                - exposed_headers (optional)
                - is_allow_credentials_enabled (optional)
                - max_age_in_seconds (optional)
            - dynamic_authentication (optional, block):
                - authentication_servers (required, block):
                    - authentication_server_detail (required, block):
                        - audiences (optional)
                        - cache_key (optional)
                        - function_id (optional)
                        - is_anonymous_access_allowed (optional)
                        - issuers (optional)
                        - max_clock_skew_in_seconds (optional)
                        - parameters (optional)
                        - public_keys (optional, block):
                            - is_ssl_verify_disabled (optional)
                            - keys (optional, block):
                                - alg (optional)
                                - e (optional)
                                - format (required)
                                - key (optional)
                                - key_ops (optional)
                                - kid (optional)
                                - kty (optional)
                                - n (optional)
                                - use (optional)
                            - max_cache_duration_in_hours (optional)
                            - type (required)
                            - uri (optional)
                        - token_auth_scheme (optional)
                        - token_header (optional)
                        - token_query_param (optional)
                        - type (required)
                        - validation_failure_policy (optional, block):
                            - client_details (optional, block):
                                - client_id (optional)
                                - client_secret_id (optional)
                                - client_secret_version_number (optional)
                                - type (required)
                            - fallback_redirect_path (optional)
                            - login_path (optional)
                            - logout_path (optional)
                            - max_expiry_duration_in_hours (optional)
                            - response_code (optional)
                            - response_header_transformations (optional, block):
                                - filter_headers (optional, block):
                                    - items (optional, block):
                                        - name (optional)
                                    - type (optional)
                                - rename_headers (optional, block):
                                    - items (optional, block):
                                        - from (optional)
                                        - to (optional)
                                - set_headers (optional, block):
                                    - items (optional, block):
                                        - if_exists (optional)
                                        - name (optional)
                                        - values (optional)
                            - response_message (optional)
                            - response_type (optional)
                            - scopes (optional)
                            - source_uri_details (optional, block):
                                - type (required)
                                - uri (optional)
                            - type (required)
                            - use_cookies_for_intermediate_steps (optional)
                            - use_cookies_for_session (optional)
                            - use_pkce (optional)
                        - validation_policy (optional, block):
                            - additional_validation_policy (optional, block):
                                - audiences (optional)
                                - issuers (optional)
                                - verify_claims (optional, block):
                                    - is_required (optional)
                                    - key (optional)
                                    - values (optional)
                            - client_details (optional, block):
                                - client_id (optional)
                                - client_secret_id (optional)
                                - client_secret_version_number (optional)
                                - type (required)
                            - is_ssl_verify_disabled (optional)
                            - keys (optional, block):
                                - alg (optional)
                                - e (optional)
                                - format (required)
                                - key (optional)
                                - key_ops (optional)
                                - kid (optional)
                                - kty (optional)
                                - n (optional)
                                - use (optional)
                            - max_cache_duration_in_hours (optional)
                            - source_uri_details (optional, block):
                                - type (required)
                                - uri (optional)
                            - type (required)
                            - uri (optional)
                        - verify_claims (optional, block):
                            - is_required (optional)
                            - key (optional)
                            - values (optional)
                    - key (required, block):
                        - expression (optional)
                        - is_default (optional)
                        - name (required)
                        - type (optional)
                        - values (optional)
                - selection_source (required, block):
                    - selector (required)
                    - type (required)
            - mutual_tls (optional, block):
                - allowed_sans (optional)
                - is_verified_certificate_required (optional)
            - rate_limiting (optional, block):
                - rate_in_requests_per_second (required)
                - rate_key (required)
            - usage_plans (optional, block):
                - token_locations (required)
        - routes (required, block):
            - backend (required, block):
                - allowed_post_logout_uris (optional)
                - body (optional)
                - connect_timeout_in_seconds (optional)
                - function_id (optional)
                - headers (optional, block):
                    - name (optional)
                    - value (optional)
                - is_ssl_verify_disabled (optional)
                - post_logout_state (optional)
                - read_timeout_in_seconds (optional)
                - routing_backends (optional, block):
                    - backend (optional, block):
                        - body (optional)
                        - connect_timeout_in_seconds (optional)
                        - function_id (optional)
                        - is_ssl_verify_disabled (optional)
                        - read_timeout_in_seconds (optional)
                        - status (optional)
                        - type (required)
                        - url (optional)
                    - key (optional, block):
                        - expression (optional)
                        - is_default (optional)
                        - name (required)
                        - type (required)
                        - values (optional)
                - selection_source (optional, block):
                    - selector (required)
                    - type (required)
                - send_timeout_in_seconds (optional)
                - status (optional)
                - type (required)
                - url (optional)
            - logging_policies (optional, block):
                - access_log (optional, block):
                    - is_enabled (optional)
                - execution_log (optional, block):
                    - is_enabled (optional)
                    - log_level (optional)
            - methods (optional)
            - path (required)
            - request_policies (optional, block):
                - authorization (optional, block):
                    - allowed_scope (optional)
                    - type (optional)
                - body_validation (optional, block):
                    - content (optional, block):
                        - media_type (required)
                        - validation_type (required)
                    - required (optional)
                    - validation_mode (optional)
                - cors (optional, block):
                    - allowed_headers (optional)
                    - allowed_methods (optional)
                    - allowed_origins (required)
                    - exposed_headers (optional)
                    - is_allow_credentials_enabled (optional)
                    - max_age_in_seconds (optional)
                - header_transformations (optional, block):
                    - filter_headers (optional, block):
                        - items (required, block):
                            - name (required)
                        - type (required)
                    - rename_headers (optional, block):
                        - items (required, block):
                            - from (required)
                            - to (required)
                    - set_headers (optional, block):
                        - items (required, block):
                            - if_exists (optional)
                            - name (required)
                            - values (required)
                - header_validations (optional, block):
                    - headers (optional, block):
                        - name (required)
                        - required (optional)
                    - validation_mode (optional)
                - query_parameter_transformations (optional, block):
                    - filter_query_parameters (optional, block):
                        - items (required, block):
                            - name (required)
                        - type (required)
                    - rename_query_parameters (optional, block):
                        - items (required, block):
                            - from (required)
                            - to (required)
                    - set_query_parameters (optional, block):
                        - items (required, block):
                            - if_exists (optional)
                            - name (required)
                            - values (required)
                - query_parameter_validations (optional, block):
                    - parameters (optional, block):
                        - name (required)
                        - required (optional)
                    - validation_mode (optional)
                - response_cache_lookup (optional, block):
                    - cache_key_additions (optional)
                    - is_enabled (optional)
                    - is_private_caching_enabled (optional)
                    - type (required)
            - response_policies (optional, block):
                - header_transformations (optional, block):
                    - filter_headers (optional, block):
                        - items (required, block):
                            - name (required)
                        - type (required)
                    - rename_headers (optional, block):
                        - items (required, block):
                            - from (required)
                            - to (required)
                    - set_headers (optional, block):
                        - items (required, block):
                            - if_exists (optional)
                            - name (required)
                            - values (required)
                - response_cache_store (optional, block):
                    - time_to_live_in_seconds (required)
                    - type (required)
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - is_lock_override
    - locks (block):
        - message (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id   = string
    gateway_id       = string
    path_prefix      = string
    defined_tags     = optional(map(string))
    display_name     = optional(string)
    freeform_tags    = optional(map(string))
    is_lock_override = optional(bool)
    specification = object({
      logging_policies = optional(object({
        access_log = optional(object({
          is_enabled = optional(bool)
        }))
        execution_log = optional(object({
          is_enabled = optional(bool)
          log_level  = optional(string)
        }))
      }))
      request_policies = optional(object({
        authentication = optional(object({
          audiences                   = optional(list(string))
          cache_key                   = optional(list(string))
          function_id                 = optional(string)
          is_anonymous_access_allowed = optional(bool)
          issuers                     = optional(list(string))
          max_clock_skew_in_seconds   = optional(number)
          parameters                  = optional(map(string))
          public_keys = optional(object({
            is_ssl_verify_disabled = optional(bool)
            keys = optional(list(object({
              alg     = optional(string)
              e       = optional(string)
              format  = string
              key     = optional(string)
              key_ops = optional(list(string))
              kid     = optional(string)
              kty     = optional(string)
              n       = optional(string)
              use     = optional(string)
            })))
            max_cache_duration_in_hours = optional(number)
            type                        = string
            uri                         = optional(string)
          }))
          token_auth_scheme = optional(string)
          token_header      = optional(string)
          token_query_param = optional(string)
          type              = string
          validation_failure_policy = optional(object({
            client_details = optional(object({
              client_id                    = optional(string)
              client_secret_id             = optional(string)
              client_secret_version_number = optional(string)
              type                         = string
            }))
            fallback_redirect_path       = optional(string)
            login_path                   = optional(string)
            logout_path                  = optional(string)
            max_expiry_duration_in_hours = optional(number)
            response_code                = optional(string)
            response_header_transformations = optional(object({
              filter_headers = optional(object({
                items = optional(list(object({
                  name = optional(string)
                })))
                type = optional(string)
              }))
              rename_headers = optional(object({
                items = optional(list(object({
                  from = optional(string)
                  to   = optional(string)
                })))
              }))
              set_headers = optional(object({
                items = optional(list(object({
                  if_exists = optional(string)
                  name      = optional(string)
                  values    = optional(list(string))
                })))
              }))
            }))
            response_message = optional(string)
            response_type    = optional(string)
            scopes           = optional(list(string))
            source_uri_details = optional(object({
              type = string
              uri  = optional(string)
            }))
            type                               = string
            use_cookies_for_intermediate_steps = optional(bool)
            use_cookies_for_session            = optional(bool)
            use_pkce                           = optional(bool)
          }))
          validation_policy = optional(object({
            additional_validation_policy = optional(object({
              audiences = optional(list(string))
              issuers   = optional(list(string))
              verify_claims = optional(list(object({
                is_required = optional(bool)
                key         = optional(string)
                values      = optional(list(string))
              })))
            }))
            client_details = optional(object({
              client_id                    = optional(string)
              client_secret_id             = optional(string)
              client_secret_version_number = optional(string)
              type                         = string
            }))
            is_ssl_verify_disabled = optional(bool)
            keys = optional(list(object({
              alg     = optional(string)
              e       = optional(string)
              format  = string
              key     = optional(string)
              key_ops = optional(list(string))
              kid     = optional(string)
              kty     = optional(string)
              n       = optional(string)
              use     = optional(string)
            })))
            max_cache_duration_in_hours = optional(number)
            source_uri_details = optional(object({
              type = string
              uri  = optional(string)
            }))
            type = string
            uri  = optional(string)
          }))
          verify_claims = optional(list(object({
            is_required = optional(bool)
            key         = optional(string)
            values      = optional(list(string))
          })))
        }))
        cors = optional(object({
          allowed_headers              = optional(list(string))
          allowed_methods              = optional(list(string))
          allowed_origins              = list(string)
          exposed_headers              = optional(list(string))
          is_allow_credentials_enabled = optional(bool)
          max_age_in_seconds           = optional(number)
        }))
        dynamic_authentication = optional(object({
          authentication_servers = list(object({
            authentication_server_detail = object({
              audiences                   = optional(list(string))
              cache_key                   = optional(list(string))
              function_id                 = optional(string)
              is_anonymous_access_allowed = optional(bool)
              issuers                     = optional(list(string))
              max_clock_skew_in_seconds   = optional(number)
              parameters                  = optional(map(string))
              public_keys = optional(object({
                is_ssl_verify_disabled = optional(bool)
                keys = optional(list(object({
                  alg     = optional(string)
                  e       = optional(string)
                  format  = string
                  key     = optional(string)
                  key_ops = optional(list(string))
                  kid     = optional(string)
                  kty     = optional(string)
                  n       = optional(string)
                  use     = optional(string)
                })))
                max_cache_duration_in_hours = optional(number)
                type                        = string
                uri                         = optional(string)
              }))
              token_auth_scheme = optional(string)
              token_header      = optional(string)
              token_query_param = optional(string)
              type              = string
              validation_failure_policy = optional(object({
                client_details = optional(object({
                  client_id                    = optional(string)
                  client_secret_id             = optional(string)
                  client_secret_version_number = optional(string)
                  type                         = string
                }))
                fallback_redirect_path       = optional(string)
                login_path                   = optional(string)
                logout_path                  = optional(string)
                max_expiry_duration_in_hours = optional(number)
                response_code                = optional(string)
                response_header_transformations = optional(object({
                  filter_headers = optional(object({
                    items = optional(list(object({
                      name = optional(string)
                    })))
                    type = optional(string)
                  }))
                  rename_headers = optional(object({
                    items = optional(list(object({
                      from = optional(string)
                      to   = optional(string)
                    })))
                  }))
                  set_headers = optional(object({
                    items = optional(list(object({
                      if_exists = optional(string)
                      name      = optional(string)
                      values    = optional(list(string))
                    })))
                  }))
                }))
                response_message = optional(string)
                response_type    = optional(string)
                scopes           = optional(list(string))
                source_uri_details = optional(object({
                  type = string
                  uri  = optional(string)
                }))
                type                               = string
                use_cookies_for_intermediate_steps = optional(bool)
                use_cookies_for_session            = optional(bool)
                use_pkce                           = optional(bool)
              }))
              validation_policy = optional(object({
                additional_validation_policy = optional(object({
                  audiences = optional(list(string))
                  issuers   = optional(list(string))
                  verify_claims = optional(list(object({
                    is_required = optional(bool)
                    key         = optional(string)
                    values      = optional(list(string))
                  })))
                }))
                client_details = optional(object({
                  client_id                    = optional(string)
                  client_secret_id             = optional(string)
                  client_secret_version_number = optional(string)
                  type                         = string
                }))
                is_ssl_verify_disabled = optional(bool)
                keys = optional(list(object({
                  alg     = optional(string)
                  e       = optional(string)
                  format  = string
                  key     = optional(string)
                  key_ops = optional(list(string))
                  kid     = optional(string)
                  kty     = optional(string)
                  n       = optional(string)
                  use     = optional(string)
                })))
                max_cache_duration_in_hours = optional(number)
                source_uri_details = optional(object({
                  type = string
                  uri  = optional(string)
                }))
                type = string
                uri  = optional(string)
              }))
              verify_claims = optional(list(object({
                is_required = optional(bool)
                key         = optional(string)
                values      = optional(list(string))
              })))
            })
            key = object({
              expression = optional(string)
              is_default = optional(bool)
              name       = string
              type       = optional(string)
              values     = optional(list(string))
            })
          }))
          selection_source = object({
            selector = string
            type     = string
          })
        }))
        mutual_tls = optional(object({
          allowed_sans                     = optional(list(string))
          is_verified_certificate_required = optional(bool)
        }))
        rate_limiting = optional(object({
          rate_in_requests_per_second = number
          rate_key                    = string
        }))
        usage_plans = optional(object({
          token_locations = list(string)
        }))
      }))
      routes = list(object({
        backend = object({
          allowed_post_logout_uris   = optional(list(string))
          body                       = optional(string)
          connect_timeout_in_seconds = optional(number)
          function_id                = optional(string)
          headers = optional(list(object({
            name  = optional(string)
            value = optional(string)
          })))
          is_ssl_verify_disabled  = optional(bool)
          post_logout_state       = optional(string)
          read_timeout_in_seconds = optional(number)
          routing_backends = optional(list(object({
            backend = optional(object({
              body                       = optional(string)
              connect_timeout_in_seconds = optional(number)
              function_id                = optional(string)
              is_ssl_verify_disabled     = optional(bool)
              read_timeout_in_seconds    = optional(number)
              status                     = optional(number)
              type                       = string
              url                        = optional(string)
            }))
            key = optional(object({
              expression = optional(string)
              is_default = optional(bool)
              name       = string
              type       = string
              values     = optional(list(string))
            }))
          })))
          selection_source = optional(object({
            selector = string
            type     = string
          }))
          send_timeout_in_seconds = optional(number)
          status                  = optional(number)
          type                    = string
          url                     = optional(string)
        })
        logging_policies = optional(object({
          access_log = optional(object({
            is_enabled = optional(bool)
          }))
          execution_log = optional(object({
            is_enabled = optional(bool)
            log_level  = optional(string)
          }))
        }))
        methods = optional(list(string))
        path    = string
        request_policies = optional(object({
          authorization = optional(object({
            allowed_scope = optional(list(string))
            type          = optional(string)
          }))
          body_validation = optional(object({
            content = optional(list(object({
              media_type      = string
              validation_type = string
            })))
            required        = optional(bool)
            validation_mode = optional(string)
          }))
          cors = optional(object({
            allowed_headers              = optional(list(string))
            allowed_methods              = optional(list(string))
            allowed_origins              = list(string)
            exposed_headers              = optional(list(string))
            is_allow_credentials_enabled = optional(bool)
            max_age_in_seconds           = optional(number)
          }))
          header_transformations = optional(object({
            filter_headers = optional(object({
              items = list(object({
                name = string
              }))
              type = string
            }))
            rename_headers = optional(object({
              items = list(object({
                from = string
                to   = string
              }))
            }))
            set_headers = optional(object({
              items = list(object({
                if_exists = optional(string)
                name      = string
                values    = list(string)
              }))
            }))
          }))
          header_validations = optional(object({
            headers = optional(list(object({
              name     = string
              required = optional(bool)
            })))
            validation_mode = optional(string)
          }))
          query_parameter_transformations = optional(object({
            filter_query_parameters = optional(object({
              items = list(object({
                name = string
              }))
              type = string
            }))
            rename_query_parameters = optional(object({
              items = list(object({
                from = string
                to   = string
              }))
            }))
            set_query_parameters = optional(object({
              items = list(object({
                if_exists = optional(string)
                name      = string
                values    = list(string)
              }))
            }))
          }))
          query_parameter_validations = optional(object({
            parameters = optional(list(object({
              name     = string
              required = optional(bool)
            })))
            validation_mode = optional(string)
          }))
          response_cache_lookup = optional(object({
            cache_key_additions        = optional(list(string))
            is_enabled                 = optional(bool)
            is_private_caching_enabled = optional(bool)
            type                       = string
          }))
        }))
        response_policies = optional(object({
          header_transformations = optional(object({
            filter_headers = optional(object({
              items = list(object({
                name = string
              }))
              type = string
            }))
            rename_headers = optional(object({
              items = list(object({
                from = string
                to   = string
              }))
            }))
            set_headers = optional(object({
              items = list(object({
                if_exists = optional(string)
                name      = string
                values    = list(string)
              }))
            }))
          }))
          response_cache_store = optional(object({
            time_to_live_in_seconds = number
            type                    = string
          }))
        }))
      }))
    })
    locks = optional(list(object({
      message = optional(string)
      type    = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (length(v.specification.request_policies.dynamic_authentication.authentication_servers) >= 1))
      )
    ])
    error_message = "Each authentication_servers list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        length(v.specification.routes) >= 1
      )
    ])
    error_message = "Each routes list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.request_policies == null || (item.request_policies.header_transformations == null || (item.request_policies.header_transformations.filter_headers == null || (length(item.request_policies.header_transformations.filter_headers.items) >= 1))))])
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.request_policies == null || (item.request_policies.header_transformations == null || (item.request_policies.header_transformations.rename_headers == null || (length(item.request_policies.header_transformations.rename_headers.items) >= 1))))])
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.request_policies == null || (item.request_policies.header_transformations == null || (item.request_policies.header_transformations.set_headers == null || (length(item.request_policies.header_transformations.set_headers.items) >= 1))))])
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.request_policies == null || (item.request_policies.query_parameter_transformations == null || (item.request_policies.query_parameter_transformations.filter_query_parameters == null || (length(item.request_policies.query_parameter_transformations.filter_query_parameters.items) >= 1))))])
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.request_policies == null || (item.request_policies.query_parameter_transformations == null || (item.request_policies.query_parameter_transformations.rename_query_parameters == null || (length(item.request_policies.query_parameter_transformations.rename_query_parameters.items) >= 1))))])
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.request_policies == null || (item.request_policies.query_parameter_transformations == null || (item.request_policies.query_parameter_transformations.set_query_parameters == null || (length(item.request_policies.query_parameter_transformations.set_query_parameters.items) >= 1))))])
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.response_policies == null || (item.response_policies.header_transformations == null || (item.response_policies.header_transformations.filter_headers == null || (length(item.response_policies.header_transformations.filter_headers.items) >= 1))))])
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.response_policies == null || (item.response_policies.header_transformations == null || (item.response_policies.header_transformations.rename_headers == null || (length(item.response_policies.header_transformations.rename_headers.items) >= 1))))])
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.response_policies == null || (item.response_policies.header_transformations == null || (item.response_policies.header_transformations.set_headers == null || (length(item.response_policies.header_transformations.set_headers.items) >= 1))))])
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (contains([for v in ["CUSTOM_AUTHENTICATION", "JWT_AUTHENTICATION", "TOKEN_AUTHENTICATION"] : lower(v)], lower(v.specification.request_policies.authentication.type))))
      )
    ])
    error_message = "must be one of: \"CUSTOM_AUTHENTICATION\", \"JWT_AUTHENTICATION\", \"TOKEN_AUTHENTICATION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (v.specification.request_policies.authentication.public_keys == null || (contains([for v in ["REMOTE_JWKS", "STATIC_KEYS"] : lower(v)], lower(v.specification.request_policies.authentication.public_keys.type)))))
      )
    ])
    error_message = "must be one of: \"REMOTE_JWKS\", \"STATIC_KEYS\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (v.specification.request_policies.authentication.public_keys == null || (v.specification.request_policies.authentication.public_keys.keys == null || alltrue([for item in v.specification.request_policies.authentication.public_keys.keys : (contains([for v in ["JSON_WEB_KEY", "PEM"] : lower(v)], lower(item.format)))]))))
      )
    ])
    error_message = "must be one of: \"JSON_WEB_KEY\", \"PEM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (v.specification.request_policies.authentication.validation_failure_policy == null || (contains([for v in ["MODIFY_RESPONSE", "OAUTH2"] : lower(v)], lower(v.specification.request_policies.authentication.validation_failure_policy.type)))))
      )
    ])
    error_message = "must be one of: \"MODIFY_RESPONSE\", \"OAUTH2\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (v.specification.request_policies.authentication.validation_failure_policy == null || (v.specification.request_policies.authentication.validation_failure_policy.client_details == null || (contains([for v in ["CUSTOM", "VALIDATION_BLOCK"] : lower(v)], lower(v.specification.request_policies.authentication.validation_failure_policy.client_details.type))))))
      )
    ])
    error_message = "must be one of: \"CUSTOM\", \"VALIDATION_BLOCK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (v.specification.request_policies.authentication.validation_failure_policy == null || (v.specification.request_policies.authentication.validation_failure_policy.source_uri_details == null || (contains([for v in ["DISCOVERY_URI", "VALIDATION_BLOCK"] : lower(v)], lower(v.specification.request_policies.authentication.validation_failure_policy.source_uri_details.type))))))
      )
    ])
    error_message = "must be one of: \"DISCOVERY_URI\", \"VALIDATION_BLOCK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (v.specification.request_policies.authentication.validation_policy == null || (contains([for v in ["REMOTE_DISCOVERY", "REMOTE_JWKS", "STATIC_KEYS"] : lower(v)], lower(v.specification.request_policies.authentication.validation_policy.type)))))
      )
    ])
    error_message = "must be one of: \"REMOTE_DISCOVERY\", \"REMOTE_JWKS\", \"STATIC_KEYS\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (v.specification.request_policies.authentication.validation_policy == null || (v.specification.request_policies.authentication.validation_policy.client_details == null || (contains([for v in ["CUSTOM", "VALIDATION_BLOCK"] : lower(v)], lower(v.specification.request_policies.authentication.validation_policy.client_details.type))))))
      )
    ])
    error_message = "must be one of: \"CUSTOM\", \"VALIDATION_BLOCK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (v.specification.request_policies.authentication.validation_policy == null || (v.specification.request_policies.authentication.validation_policy.keys == null || alltrue([for item in v.specification.request_policies.authentication.validation_policy.keys : (contains([for v in ["JSON_WEB_KEY", "PEM"] : lower(v)], lower(item.format)))]))))
      )
    ])
    error_message = "must be one of: \"JSON_WEB_KEY\", \"PEM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.authentication == null || (v.specification.request_policies.authentication.validation_policy == null || (v.specification.request_policies.authentication.validation_policy.source_uri_details == null || (contains([for v in ["DISCOVERY_URI", "VALIDATION_BLOCK"] : lower(v)], lower(v.specification.request_policies.authentication.validation_policy.source_uri_details.type))))))
      )
    ])
    error_message = "must be one of: \"DISCOVERY_URI\", \"VALIDATION_BLOCK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (contains([for v in ["CUSTOM_AUTHENTICATION", "JWT_AUTHENTICATION", "TOKEN_AUTHENTICATION"] : lower(v)], lower(item.authentication_server_detail.type)))])))
      )
    ])
    error_message = "must be one of: \"CUSTOM_AUTHENTICATION\", \"JWT_AUTHENTICATION\", \"TOKEN_AUTHENTICATION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.authentication_server_detail.public_keys == null || (contains([for v in ["REMOTE_JWKS", "STATIC_KEYS"] : lower(v)], lower(item.authentication_server_detail.public_keys.type))))])))
      )
    ])
    error_message = "must be one of: \"REMOTE_JWKS\", \"STATIC_KEYS\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.authentication_server_detail.public_keys == null || (item.authentication_server_detail.public_keys.keys == null || alltrue([for item in item.authentication_server_detail.public_keys.keys : (contains([for v in ["JSON_WEB_KEY", "PEM"] : lower(v)], lower(item.format)))])))])))
      )
    ])
    error_message = "must be one of: \"JSON_WEB_KEY\", \"PEM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.authentication_server_detail.validation_failure_policy == null || (contains([for v in ["MODIFY_RESPONSE", "OAUTH2"] : lower(v)], lower(item.authentication_server_detail.validation_failure_policy.type))))])))
      )
    ])
    error_message = "must be one of: \"MODIFY_RESPONSE\", \"OAUTH2\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.authentication_server_detail.validation_failure_policy == null || (item.authentication_server_detail.validation_failure_policy.client_details == null || (contains([for v in ["CUSTOM", "VALIDATION_BLOCK"] : lower(v)], lower(item.authentication_server_detail.validation_failure_policy.client_details.type)))))])))
      )
    ])
    error_message = "must be one of: \"CUSTOM\", \"VALIDATION_BLOCK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.authentication_server_detail.validation_failure_policy == null || (item.authentication_server_detail.validation_failure_policy.source_uri_details == null || (contains([for v in ["DISCOVERY_URI", "VALIDATION_BLOCK"] : lower(v)], lower(item.authentication_server_detail.validation_failure_policy.source_uri_details.type)))))])))
      )
    ])
    error_message = "must be one of: \"DISCOVERY_URI\", \"VALIDATION_BLOCK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.authentication_server_detail.validation_policy == null || (contains([for v in ["REMOTE_DISCOVERY", "REMOTE_JWKS", "STATIC_KEYS"] : lower(v)], lower(item.authentication_server_detail.validation_policy.type))))])))
      )
    ])
    error_message = "must be one of: \"REMOTE_DISCOVERY\", \"REMOTE_JWKS\", \"STATIC_KEYS\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.authentication_server_detail.validation_policy == null || (item.authentication_server_detail.validation_policy.client_details == null || (contains([for v in ["CUSTOM", "VALIDATION_BLOCK"] : lower(v)], lower(item.authentication_server_detail.validation_policy.client_details.type)))))])))
      )
    ])
    error_message = "must be one of: \"CUSTOM\", \"VALIDATION_BLOCK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.authentication_server_detail.validation_policy == null || (item.authentication_server_detail.validation_policy.keys == null || alltrue([for item in item.authentication_server_detail.validation_policy.keys : (contains([for v in ["JSON_WEB_KEY", "PEM"] : lower(v)], lower(item.format)))])))])))
      )
    ])
    error_message = "must be one of: \"JSON_WEB_KEY\", \"PEM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.authentication_server_detail.validation_policy == null || (item.authentication_server_detail.validation_policy.source_uri_details == null || (contains([for v in ["DISCOVERY_URI", "VALIDATION_BLOCK"] : lower(v)], lower(item.authentication_server_detail.validation_policy.source_uri_details.type)))))])))
      )
    ])
    error_message = "must be one of: \"DISCOVERY_URI\", \"VALIDATION_BLOCK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (alltrue([for item in v.specification.request_policies.dynamic_authentication.authentication_servers : (item.key.type == null || (contains([for v in ["ANY_OF", "WILDCARD"] : lower(v)], lower(item.key.type))))])))
      )
    ])
    error_message = "must be one of: \"ANY_OF\", \"WILDCARD\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        v.specification.request_policies == null || (v.specification.request_policies.dynamic_authentication == null || (contains([for v in ["SINGLE"] : lower(v)], lower(v.specification.request_policies.dynamic_authentication.selection_source.type))))
      )
    ])
    error_message = "must be one of: \"SINGLE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (contains([for v in ["DYNAMIC_ROUTING_BACKEND", "HTTP_BACKEND", "OAUTH2_LOGIN_BACKEND", "OAUTH2_LOGOUT_BACKEND", "ORACLE_FUNCTIONS_BACKEND", "STOCK_RESPONSE_BACKEND"] : lower(v)], lower(item.backend.type)))])
      )
    ])
    error_message = "must be one of: \"DYNAMIC_ROUTING_BACKEND\", \"HTTP_BACKEND\", \"OAUTH2_LOGIN_BACKEND\", \"OAUTH2_LOGOUT_BACKEND\", \"ORACLE_FUNCTIONS_BACKEND\", \"STOCK_RESPONSE_BACKEND\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.backend.selection_source == null || (contains([for v in ["SINGLE"] : lower(v)], lower(item.backend.selection_source.type))))])
      )
    ])
    error_message = "must be one of: \"SINGLE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.request_policies == null || (item.request_policies.authorization == null || (item.request_policies.authorization.type == null || (contains([for v in ["ANONYMOUS", "ANY_OF", "AUTHENTICATION_ONLY"] : lower(v)], lower(item.request_policies.authorization.type))))))])
      )
    ])
    error_message = "must be one of: \"ANONYMOUS\", \"ANY_OF\", \"AUTHENTICATION_ONLY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.request_policies == null || (item.request_policies.response_cache_lookup == null || (contains([for v in ["SIMPLE_LOOKUP_POLICY"] : lower(v)], lower(item.request_policies.response_cache_lookup.type)))))])
      )
    ])
    error_message = "must be one of: \"SIMPLE_LOOKUP_POLICY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apigateway_deployments : (
        alltrue([for item in v.specification.routes : (item.response_policies == null || (item.response_policies.response_cache_store == null || (contains([for v in ["FIXED_TTL_STORE_POLICY"] : lower(v)], lower(item.response_policies.response_cache_store.type)))))])
      )
    ])
    error_message = "must be one of: \"FIXED_TTL_STORE_POLICY\""
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

