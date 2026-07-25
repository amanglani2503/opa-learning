package policies

default allow_input = false

allow_input if {
    input.user.roles[_] == "admin"
}

# opa eval --format raw --data policies/oneInputPolicy.rego --input input/input.json "data.policies.allow"