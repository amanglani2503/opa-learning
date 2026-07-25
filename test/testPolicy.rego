package test

import data.policies.allow_input

test_allow_is_false_by_default if {
    not allow_input
}

test_allow_if_admin if {
    allow_input with input as {
        "user": {
            "roles": ["admin"]
        }
    }
}

test_not_allow_if_not_admin if {
    not allow_input with input as {
        "user": {
            "roles": ["developer"]
        }
    }
}