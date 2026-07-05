package httpapi.authz

# HTTP API request
import input

default allow

allow {
  input.path == "home"
  input.user == "john"
}

