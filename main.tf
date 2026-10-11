resource "oci_apigateway_deployment" "apigateway_deployments" {
  for_each = var.apigateway_deployments

  compartment_id   = each.value.compartment_id
  gateway_id       = each.value.gateway_id
  path_prefix      = each.value.path_prefix
  defined_tags     = each.value.defined_tags
  display_name     = each.value.display_name
  freeform_tags    = each.value.freeform_tags
  is_lock_override = each.value.is_lock_override

  specification {
    dynamic "logging_policies" {
      for_each = each.value.specification.logging_policies != null ? [each.value.specification.logging_policies] : []
      content {
        dynamic "access_log" {
          for_each = logging_policies.value.access_log != null ? [logging_policies.value.access_log] : []
          content {
            is_enabled = access_log.value.is_enabled
          }
        }
        dynamic "execution_log" {
          for_each = logging_policies.value.execution_log != null ? [logging_policies.value.execution_log] : []
          content {
            is_enabled = execution_log.value.is_enabled
            log_level  = execution_log.value.log_level
          }
        }
      }
    }
    dynamic "request_policies" {
      for_each = each.value.specification.request_policies != null ? [each.value.specification.request_policies] : []
      content {
        dynamic "authentication" {
          for_each = request_policies.value.authentication != null ? [request_policies.value.authentication] : []
          content {
            audiences                   = authentication.value.audiences
            cache_key                   = authentication.value.cache_key
            function_id                 = authentication.value.function_id
            is_anonymous_access_allowed = authentication.value.is_anonymous_access_allowed
            issuers                     = authentication.value.issuers
            max_clock_skew_in_seconds   = authentication.value.max_clock_skew_in_seconds
            parameters                  = authentication.value.parameters
            dynamic "public_keys" {
              for_each = authentication.value.public_keys != null ? [authentication.value.public_keys] : []
              content {
                is_ssl_verify_disabled = public_keys.value.is_ssl_verify_disabled
                dynamic "keys" {
                  for_each = public_keys.value.keys != null ? public_keys.value.keys : []
                  content {
                    alg     = keys.value.alg
                    e       = keys.value.e
                    format  = keys.value.format
                    key     = keys.value.key
                    key_ops = keys.value.key_ops
                    kid     = keys.value.kid
                    kty     = keys.value.kty
                    n       = keys.value.n
                    use     = keys.value.use
                  }
                }
                max_cache_duration_in_hours = public_keys.value.max_cache_duration_in_hours
                type                        = public_keys.value.type
                uri                         = public_keys.value.uri
              }
            }
            token_auth_scheme = authentication.value.token_auth_scheme
            token_header      = authentication.value.token_header
            token_query_param = authentication.value.token_query_param
            type              = authentication.value.type
            dynamic "validation_failure_policy" {
              for_each = authentication.value.validation_failure_policy != null ? [authentication.value.validation_failure_policy] : []
              content {
                dynamic "client_details" {
                  for_each = validation_failure_policy.value.client_details != null ? [validation_failure_policy.value.client_details] : []
                  content {
                    client_id                    = client_details.value.client_id
                    client_secret_id             = client_details.value.client_secret_id
                    client_secret_version_number = client_details.value.client_secret_version_number
                    type                         = client_details.value.type
                  }
                }
                fallback_redirect_path       = validation_failure_policy.value.fallback_redirect_path
                login_path                   = validation_failure_policy.value.login_path
                logout_path                  = validation_failure_policy.value.logout_path
                max_expiry_duration_in_hours = validation_failure_policy.value.max_expiry_duration_in_hours
                response_code                = validation_failure_policy.value.response_code
                dynamic "response_header_transformations" {
                  for_each = validation_failure_policy.value.response_header_transformations != null ? [validation_failure_policy.value.response_header_transformations] : []
                  content {
                    dynamic "filter_headers" {
                      for_each = response_header_transformations.value.filter_headers != null ? [response_header_transformations.value.filter_headers] : []
                      content {
                        dynamic "items" {
                          for_each = filter_headers.value.items != null ? filter_headers.value.items : []
                          content {
                            name = items.value.name
                          }
                        }
                        type = filter_headers.value.type
                      }
                    }
                    dynamic "rename_headers" {
                      for_each = response_header_transformations.value.rename_headers != null ? [response_header_transformations.value.rename_headers] : []
                      content {
                        dynamic "items" {
                          for_each = rename_headers.value.items != null ? rename_headers.value.items : []
                          content {
                            from = items.value.from
                            to   = items.value.to
                          }
                        }
                      }
                    }
                    dynamic "set_headers" {
                      for_each = response_header_transformations.value.set_headers != null ? [response_header_transformations.value.set_headers] : []
                      content {
                        dynamic "items" {
                          for_each = set_headers.value.items != null ? set_headers.value.items : []
                          content {
                            if_exists = items.value.if_exists
                            name      = items.value.name
                            values    = items.value.values
                          }
                        }
                      }
                    }
                  }
                }
                response_message = validation_failure_policy.value.response_message
                response_type    = validation_failure_policy.value.response_type
                scopes           = validation_failure_policy.value.scopes
                dynamic "source_uri_details" {
                  for_each = validation_failure_policy.value.source_uri_details != null ? [validation_failure_policy.value.source_uri_details] : []
                  content {
                    type = source_uri_details.value.type
                    uri  = source_uri_details.value.uri
                  }
                }
                type                               = validation_failure_policy.value.type
                use_cookies_for_intermediate_steps = validation_failure_policy.value.use_cookies_for_intermediate_steps
                use_cookies_for_session            = validation_failure_policy.value.use_cookies_for_session
                use_pkce                           = validation_failure_policy.value.use_pkce
              }
            }
            dynamic "validation_policy" {
              for_each = authentication.value.validation_policy != null ? [authentication.value.validation_policy] : []
              content {
                dynamic "additional_validation_policy" {
                  for_each = validation_policy.value.additional_validation_policy != null ? [validation_policy.value.additional_validation_policy] : []
                  content {
                    audiences = additional_validation_policy.value.audiences
                    issuers   = additional_validation_policy.value.issuers
                    dynamic "verify_claims" {
                      for_each = additional_validation_policy.value.verify_claims != null ? additional_validation_policy.value.verify_claims : []
                      content {
                        is_required = verify_claims.value.is_required
                        key         = verify_claims.value.key
                        values      = verify_claims.value.values
                      }
                    }
                  }
                }
                dynamic "client_details" {
                  for_each = validation_policy.value.client_details != null ? [validation_policy.value.client_details] : []
                  content {
                    client_id                    = client_details.value.client_id
                    client_secret_id             = client_details.value.client_secret_id
                    client_secret_version_number = client_details.value.client_secret_version_number
                    type                         = client_details.value.type
                  }
                }
                is_ssl_verify_disabled = validation_policy.value.is_ssl_verify_disabled
                dynamic "keys" {
                  for_each = validation_policy.value.keys != null ? validation_policy.value.keys : []
                  content {
                    alg     = keys.value.alg
                    e       = keys.value.e
                    format  = keys.value.format
                    key     = keys.value.key
                    key_ops = keys.value.key_ops
                    kid     = keys.value.kid
                    kty     = keys.value.kty
                    n       = keys.value.n
                    use     = keys.value.use
                  }
                }
                max_cache_duration_in_hours = validation_policy.value.max_cache_duration_in_hours
                dynamic "source_uri_details" {
                  for_each = validation_policy.value.source_uri_details != null ? [validation_policy.value.source_uri_details] : []
                  content {
                    type = source_uri_details.value.type
                    uri  = source_uri_details.value.uri
                  }
                }
                type = validation_policy.value.type
                uri  = validation_policy.value.uri
              }
            }
            dynamic "verify_claims" {
              for_each = authentication.value.verify_claims != null ? authentication.value.verify_claims : []
              content {
                is_required = verify_claims.value.is_required
                key         = verify_claims.value.key
                values      = verify_claims.value.values
              }
            }
          }
        }
        dynamic "cors" {
          for_each = request_policies.value.cors != null ? [request_policies.value.cors] : []
          content {
            allowed_headers              = cors.value.allowed_headers
            allowed_methods              = cors.value.allowed_methods
            allowed_origins              = cors.value.allowed_origins
            exposed_headers              = cors.value.exposed_headers
            is_allow_credentials_enabled = cors.value.is_allow_credentials_enabled
            max_age_in_seconds           = cors.value.max_age_in_seconds
          }
        }
        dynamic "dynamic_authentication" {
          for_each = request_policies.value.dynamic_authentication != null ? [request_policies.value.dynamic_authentication] : []
          content {
            dynamic "authentication_servers" {
              for_each = dynamic_authentication.value.authentication_servers
              content {
                authentication_server_detail {
                  audiences                   = authentication_servers.value.authentication_server_detail.audiences
                  cache_key                   = authentication_servers.value.authentication_server_detail.cache_key
                  function_id                 = authentication_servers.value.authentication_server_detail.function_id
                  is_anonymous_access_allowed = authentication_servers.value.authentication_server_detail.is_anonymous_access_allowed
                  issuers                     = authentication_servers.value.authentication_server_detail.issuers
                  max_clock_skew_in_seconds   = authentication_servers.value.authentication_server_detail.max_clock_skew_in_seconds
                  parameters                  = authentication_servers.value.authentication_server_detail.parameters
                  dynamic "public_keys" {
                    for_each = authentication_servers.value.authentication_server_detail.public_keys != null ? [authentication_servers.value.authentication_server_detail.public_keys] : []
                    content {
                      is_ssl_verify_disabled = public_keys.value.is_ssl_verify_disabled
                      dynamic "keys" {
                        for_each = public_keys.value.keys != null ? public_keys.value.keys : []
                        content {
                          alg     = keys.value.alg
                          e       = keys.value.e
                          format  = keys.value.format
                          key     = keys.value.key
                          key_ops = keys.value.key_ops
                          kid     = keys.value.kid
                          kty     = keys.value.kty
                          n       = keys.value.n
                          use     = keys.value.use
                        }
                      }
                      max_cache_duration_in_hours = public_keys.value.max_cache_duration_in_hours
                      type                        = public_keys.value.type
                      uri                         = public_keys.value.uri
                    }
                  }
                  token_auth_scheme = authentication_servers.value.authentication_server_detail.token_auth_scheme
                  token_header      = authentication_servers.value.authentication_server_detail.token_header
                  token_query_param = authentication_servers.value.authentication_server_detail.token_query_param
                  type              = authentication_servers.value.authentication_server_detail.type
                  dynamic "validation_failure_policy" {
                    for_each = authentication_servers.value.authentication_server_detail.validation_failure_policy != null ? [authentication_servers.value.authentication_server_detail.validation_failure_policy] : []
                    content {
                      dynamic "client_details" {
                        for_each = validation_failure_policy.value.client_details != null ? [validation_failure_policy.value.client_details] : []
                        content {
                          client_id                    = client_details.value.client_id
                          client_secret_id             = client_details.value.client_secret_id
                          client_secret_version_number = client_details.value.client_secret_version_number
                          type                         = client_details.value.type
                        }
                      }
                      fallback_redirect_path       = validation_failure_policy.value.fallback_redirect_path
                      login_path                   = validation_failure_policy.value.login_path
                      logout_path                  = validation_failure_policy.value.logout_path
                      max_expiry_duration_in_hours = validation_failure_policy.value.max_expiry_duration_in_hours
                      response_code                = validation_failure_policy.value.response_code
                      dynamic "response_header_transformations" {
                        for_each = validation_failure_policy.value.response_header_transformations != null ? [validation_failure_policy.value.response_header_transformations] : []
                        content {
                          dynamic "filter_headers" {
                            for_each = response_header_transformations.value.filter_headers != null ? [response_header_transformations.value.filter_headers] : []
                            content {
                              dynamic "items" {
                                for_each = filter_headers.value.items != null ? filter_headers.value.items : []
                                content {
                                  name = items.value.name
                                }
                              }
                              type = filter_headers.value.type
                            }
                          }
                          dynamic "rename_headers" {
                            for_each = response_header_transformations.value.rename_headers != null ? [response_header_transformations.value.rename_headers] : []
                            content {
                              dynamic "items" {
                                for_each = rename_headers.value.items != null ? rename_headers.value.items : []
                                content {
                                  from = items.value.from
                                  to   = items.value.to
                                }
                              }
                            }
                          }
                          dynamic "set_headers" {
                            for_each = response_header_transformations.value.set_headers != null ? [response_header_transformations.value.set_headers] : []
                            content {
                              dynamic "items" {
                                for_each = set_headers.value.items != null ? set_headers.value.items : []
                                content {
                                  if_exists = items.value.if_exists
                                  name      = items.value.name
                                  values    = items.value.values
                                }
                              }
                            }
                          }
                        }
                      }
                      response_message = validation_failure_policy.value.response_message
                      response_type    = validation_failure_policy.value.response_type
                      scopes           = validation_failure_policy.value.scopes
                      dynamic "source_uri_details" {
                        for_each = validation_failure_policy.value.source_uri_details != null ? [validation_failure_policy.value.source_uri_details] : []
                        content {
                          type = source_uri_details.value.type
                          uri  = source_uri_details.value.uri
                        }
                      }
                      type                               = validation_failure_policy.value.type
                      use_cookies_for_intermediate_steps = validation_failure_policy.value.use_cookies_for_intermediate_steps
                      use_cookies_for_session            = validation_failure_policy.value.use_cookies_for_session
                      use_pkce                           = validation_failure_policy.value.use_pkce
                    }
                  }
                  dynamic "validation_policy" {
                    for_each = authentication_servers.value.authentication_server_detail.validation_policy != null ? [authentication_servers.value.authentication_server_detail.validation_policy] : []
                    content {
                      dynamic "additional_validation_policy" {
                        for_each = validation_policy.value.additional_validation_policy != null ? [validation_policy.value.additional_validation_policy] : []
                        content {
                          audiences = additional_validation_policy.value.audiences
                          issuers   = additional_validation_policy.value.issuers
                          dynamic "verify_claims" {
                            for_each = additional_validation_policy.value.verify_claims != null ? additional_validation_policy.value.verify_claims : []
                            content {
                              is_required = verify_claims.value.is_required
                              key         = verify_claims.value.key
                              values      = verify_claims.value.values
                            }
                          }
                        }
                      }
                      dynamic "client_details" {
                        for_each = validation_policy.value.client_details != null ? [validation_policy.value.client_details] : []
                        content {
                          client_id                    = client_details.value.client_id
                          client_secret_id             = client_details.value.client_secret_id
                          client_secret_version_number = client_details.value.client_secret_version_number
                          type                         = client_details.value.type
                        }
                      }
                      is_ssl_verify_disabled = validation_policy.value.is_ssl_verify_disabled
                      dynamic "keys" {
                        for_each = validation_policy.value.keys != null ? validation_policy.value.keys : []
                        content {
                          alg     = keys.value.alg
                          e       = keys.value.e
                          format  = keys.value.format
                          key     = keys.value.key
                          key_ops = keys.value.key_ops
                          kid     = keys.value.kid
                          kty     = keys.value.kty
                          n       = keys.value.n
                          use     = keys.value.use
                        }
                      }
                      max_cache_duration_in_hours = validation_policy.value.max_cache_duration_in_hours
                      dynamic "source_uri_details" {
                        for_each = validation_policy.value.source_uri_details != null ? [validation_policy.value.source_uri_details] : []
                        content {
                          type = source_uri_details.value.type
                          uri  = source_uri_details.value.uri
                        }
                      }
                      type = validation_policy.value.type
                      uri  = validation_policy.value.uri
                    }
                  }
                  dynamic "verify_claims" {
                    for_each = authentication_servers.value.authentication_server_detail.verify_claims != null ? authentication_servers.value.authentication_server_detail.verify_claims : []
                    content {
                      is_required = verify_claims.value.is_required
                      key         = verify_claims.value.key
                      values      = verify_claims.value.values
                    }
                  }
                }
                key {
                  expression = authentication_servers.value.key.expression
                  is_default = authentication_servers.value.key.is_default
                  name       = authentication_servers.value.key.name
                  type       = authentication_servers.value.key.type
                  values     = authentication_servers.value.key.values
                }
              }
            }
            selection_source {
              selector = dynamic_authentication.value.selection_source.selector
              type     = dynamic_authentication.value.selection_source.type
            }
          }
        }
        dynamic "mutual_tls" {
          for_each = request_policies.value.mutual_tls != null ? [request_policies.value.mutual_tls] : []
          content {
            allowed_sans                     = mutual_tls.value.allowed_sans
            is_verified_certificate_required = mutual_tls.value.is_verified_certificate_required
          }
        }
        dynamic "rate_limiting" {
          for_each = request_policies.value.rate_limiting != null ? [request_policies.value.rate_limiting] : []
          content {
            rate_in_requests_per_second = rate_limiting.value.rate_in_requests_per_second
            rate_key                    = rate_limiting.value.rate_key
          }
        }
        dynamic "usage_plans" {
          for_each = request_policies.value.usage_plans != null ? [request_policies.value.usage_plans] : []
          content {
            token_locations = usage_plans.value.token_locations
          }
        }
      }
    }
    dynamic "routes" {
      for_each = each.value.specification.routes
      content {
        backend {
          allowed_post_logout_uris   = routes.value.backend.allowed_post_logout_uris
          body                       = routes.value.backend.body
          connect_timeout_in_seconds = routes.value.backend.connect_timeout_in_seconds
          function_id                = routes.value.backend.function_id
          dynamic "headers" {
            for_each = routes.value.backend.headers != null ? routes.value.backend.headers : []
            content {
              name  = headers.value.name
              value = headers.value.value
            }
          }
          is_ssl_verify_disabled  = routes.value.backend.is_ssl_verify_disabled
          post_logout_state       = routes.value.backend.post_logout_state
          read_timeout_in_seconds = routes.value.backend.read_timeout_in_seconds
          dynamic "routing_backends" {
            for_each = routes.value.backend.routing_backends != null ? routes.value.backend.routing_backends : []
            content {
              dynamic "backend" {
                for_each = routing_backends.value.backend != null ? [routing_backends.value.backend] : []
                content {
                  body                       = backend.value.body
                  connect_timeout_in_seconds = backend.value.connect_timeout_in_seconds
                  function_id                = backend.value.function_id
                  is_ssl_verify_disabled     = backend.value.is_ssl_verify_disabled
                  read_timeout_in_seconds    = backend.value.read_timeout_in_seconds
                  status                     = backend.value.status
                  type                       = backend.value.type
                  url                        = backend.value.url
                }
              }
              dynamic "key" {
                for_each = routing_backends.value.key != null ? [routing_backends.value.key] : []
                content {
                  expression = key.value.expression
                  is_default = key.value.is_default
                  name       = key.value.name
                  type       = key.value.type
                  values     = key.value.values
                }
              }
            }
          }
          dynamic "selection_source" {
            for_each = routes.value.backend.selection_source != null ? [routes.value.backend.selection_source] : []
            content {
              selector = selection_source.value.selector
              type     = selection_source.value.type
            }
          }
          send_timeout_in_seconds = routes.value.backend.send_timeout_in_seconds
          status                  = routes.value.backend.status
          type                    = routes.value.backend.type
          url                     = routes.value.backend.url
        }
        dynamic "logging_policies" {
          for_each = routes.value.logging_policies != null ? [routes.value.logging_policies] : []
          content {
            dynamic "access_log" {
              for_each = logging_policies.value.access_log != null ? [logging_policies.value.access_log] : []
              content {
                is_enabled = access_log.value.is_enabled
              }
            }
            dynamic "execution_log" {
              for_each = logging_policies.value.execution_log != null ? [logging_policies.value.execution_log] : []
              content {
                is_enabled = execution_log.value.is_enabled
                log_level  = execution_log.value.log_level
              }
            }
          }
        }
        methods = routes.value.methods
        path    = routes.value.path
        dynamic "request_policies" {
          for_each = routes.value.request_policies != null ? [routes.value.request_policies] : []
          content {
            dynamic "authorization" {
              for_each = request_policies.value.authorization != null ? [request_policies.value.authorization] : []
              content {
                allowed_scope = authorization.value.allowed_scope
                type          = authorization.value.type
              }
            }
            dynamic "body_validation" {
              for_each = request_policies.value.body_validation != null ? [request_policies.value.body_validation] : []
              content {
                dynamic "content" {
                  for_each = body_validation.value.content != null ? body_validation.value.content : []
                  content {
                    media_type      = content.value.media_type
                    validation_type = content.value.validation_type
                  }
                }
                required        = body_validation.value.required
                validation_mode = body_validation.value.validation_mode
              }
            }
            dynamic "cors" {
              for_each = request_policies.value.cors != null ? [request_policies.value.cors] : []
              content {
                allowed_headers              = cors.value.allowed_headers
                allowed_methods              = cors.value.allowed_methods
                allowed_origins              = cors.value.allowed_origins
                exposed_headers              = cors.value.exposed_headers
                is_allow_credentials_enabled = cors.value.is_allow_credentials_enabled
                max_age_in_seconds           = cors.value.max_age_in_seconds
              }
            }
            dynamic "header_transformations" {
              for_each = request_policies.value.header_transformations != null ? [request_policies.value.header_transformations] : []
              content {
                dynamic "filter_headers" {
                  for_each = header_transformations.value.filter_headers != null ? [header_transformations.value.filter_headers] : []
                  content {
                    dynamic "items" {
                      for_each = filter_headers.value.items
                      content {
                        name = items.value.name
                      }
                    }
                    type = filter_headers.value.type
                  }
                }
                dynamic "rename_headers" {
                  for_each = header_transformations.value.rename_headers != null ? [header_transformations.value.rename_headers] : []
                  content {
                    dynamic "items" {
                      for_each = rename_headers.value.items
                      content {
                        from = items.value.from
                        to   = items.value.to
                      }
                    }
                  }
                }
                dynamic "set_headers" {
                  for_each = header_transformations.value.set_headers != null ? [header_transformations.value.set_headers] : []
                  content {
                    dynamic "items" {
                      for_each = set_headers.value.items
                      content {
                        if_exists = items.value.if_exists
                        name      = items.value.name
                        values    = items.value.values
                      }
                    }
                  }
                }
              }
            }
            dynamic "header_validations" {
              for_each = request_policies.value.header_validations != null ? [request_policies.value.header_validations] : []
              content {
                dynamic "headers" {
                  for_each = header_validations.value.headers != null ? header_validations.value.headers : []
                  content {
                    name     = headers.value.name
                    required = headers.value.required
                  }
                }
                validation_mode = header_validations.value.validation_mode
              }
            }
            dynamic "query_parameter_transformations" {
              for_each = request_policies.value.query_parameter_transformations != null ? [request_policies.value.query_parameter_transformations] : []
              content {
                dynamic "filter_query_parameters" {
                  for_each = query_parameter_transformations.value.filter_query_parameters != null ? [query_parameter_transformations.value.filter_query_parameters] : []
                  content {
                    dynamic "items" {
                      for_each = filter_query_parameters.value.items
                      content {
                        name = items.value.name
                      }
                    }
                    type = filter_query_parameters.value.type
                  }
                }
                dynamic "rename_query_parameters" {
                  for_each = query_parameter_transformations.value.rename_query_parameters != null ? [query_parameter_transformations.value.rename_query_parameters] : []
                  content {
                    dynamic "items" {
                      for_each = rename_query_parameters.value.items
                      content {
                        from = items.value.from
                        to   = items.value.to
                      }
                    }
                  }
                }
                dynamic "set_query_parameters" {
                  for_each = query_parameter_transformations.value.set_query_parameters != null ? [query_parameter_transformations.value.set_query_parameters] : []
                  content {
                    dynamic "items" {
                      for_each = set_query_parameters.value.items
                      content {
                        if_exists = items.value.if_exists
                        name      = items.value.name
                        values    = items.value.values
                      }
                    }
                  }
                }
              }
            }
            dynamic "query_parameter_validations" {
              for_each = request_policies.value.query_parameter_validations != null ? [request_policies.value.query_parameter_validations] : []
              content {
                dynamic "parameters" {
                  for_each = query_parameter_validations.value.parameters != null ? query_parameter_validations.value.parameters : []
                  content {
                    name     = parameters.value.name
                    required = parameters.value.required
                  }
                }
                validation_mode = query_parameter_validations.value.validation_mode
              }
            }
            dynamic "response_cache_lookup" {
              for_each = request_policies.value.response_cache_lookup != null ? [request_policies.value.response_cache_lookup] : []
              content {
                cache_key_additions        = response_cache_lookup.value.cache_key_additions
                is_enabled                 = response_cache_lookup.value.is_enabled
                is_private_caching_enabled = response_cache_lookup.value.is_private_caching_enabled
                type                       = response_cache_lookup.value.type
              }
            }
          }
        }
        dynamic "response_policies" {
          for_each = routes.value.response_policies != null ? [routes.value.response_policies] : []
          content {
            dynamic "header_transformations" {
              for_each = response_policies.value.header_transformations != null ? [response_policies.value.header_transformations] : []
              content {
                dynamic "filter_headers" {
                  for_each = header_transformations.value.filter_headers != null ? [header_transformations.value.filter_headers] : []
                  content {
                    dynamic "items" {
                      for_each = filter_headers.value.items
                      content {
                        name = items.value.name
                      }
                    }
                    type = filter_headers.value.type
                  }
                }
                dynamic "rename_headers" {
                  for_each = header_transformations.value.rename_headers != null ? [header_transformations.value.rename_headers] : []
                  content {
                    dynamic "items" {
                      for_each = rename_headers.value.items
                      content {
                        from = items.value.from
                        to   = items.value.to
                      }
                    }
                  }
                }
                dynamic "set_headers" {
                  for_each = header_transformations.value.set_headers != null ? [header_transformations.value.set_headers] : []
                  content {
                    dynamic "items" {
                      for_each = set_headers.value.items
                      content {
                        if_exists = items.value.if_exists
                        name      = items.value.name
                        values    = items.value.values
                      }
                    }
                  }
                }
              }
            }
            dynamic "response_cache_store" {
              for_each = response_policies.value.response_cache_store != null ? [response_policies.value.response_cache_store] : []
              content {
                time_to_live_in_seconds = response_cache_store.value.time_to_live_in_seconds
                type                    = response_cache_store.value.type
              }
            }
          }
        }
      }
    }
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message = locks.value.message
      type    = locks.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

