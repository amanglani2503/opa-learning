package policies

default allow = false

allow if {
    1 == 1
    2 == 2
    3 == 3
}

# opa eval --data policies/policy.rego "data.policies.allow"

# to get just true or false as response use command - opa eval --format raw --data policies/policy.rego "data.policies.allow"