variable "servicebus_topic_authorization_rules" {
  description = <<EOT
Map of servicebus_topic_authorization_rules, attributes below
Required:
    - name
    - topic_id
Optional:
    - listen
    - manage
    - send
EOT

  type = map(object({
    name     = string
    topic_id = string
    listen   = optional(bool, false)
    manage   = optional(bool, false)
    send     = optional(bool, false)
  }))
}

