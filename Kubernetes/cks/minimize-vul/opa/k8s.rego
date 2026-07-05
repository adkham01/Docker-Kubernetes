package systemrequiredlabels

import data.lib.helpers

violation[{"msg": msg, "details": {"missing_labels": missing}] {
    provided := {label | input.request.object.metadata.labels[label]}
    required := {label | label := ["billing"]}
    missing := required - provided
    count(missing) > 0
    msg := sprintf("you must provide labels : %v", [missing])
}
