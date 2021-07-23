connection: "looker-private-demo"



access_grant: hr {
  user_attribute: department
  allowed_values: ["hr"]
}

access_grant: finance {
  user_attribute: department
  allowed_values: ["finance"]
}

access_grant: product {
  user_attribute: department
  allowed_values: ["product"]
}

# access_grant: can_see_pii {
#   user_attribute: can_see_pii
#   allowed_values: ["yes"]
# }

access_grant: finance_or_product {
  user_attribute: department
  allowed_values: ["finance","product"]
}

## Include base Explores that "everyone" should have access to. Build content for
include: "/explores/users.explore"
include: "/explores/sample.explore"

### Team-specific customizations
include: "/explore_customizations/explores_with_custom_joins.lkml"
include: "/derived_tables/*.lkml"


### Expose out joins here. Because we have the base explores as fields = empty, we have to be very particular here about fields that are included

explore: +order_items {
  fields: [order_items.sample_set*, order_items.hr_order_items*, order_items.finance_order_items*, inventory_item_id, distribution_centers.name]
}

explore: +users {
  fields: [users.generic_fields*,users.pii*]
}

explore: +sample {
  fields: [sample.status]
}

### Refinements for specific fields
