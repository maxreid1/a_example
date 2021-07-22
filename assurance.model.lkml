connection: "looker-private-demo"

## Include base Explores that "everyone" should have access to. Build content for


access_grant: hr {
  user_attribute: department
  allowed_values: ["hr"]
}

access_grant: finance {
  user_attribute: department
  allowed_values: ["finance"]
}

### Team-specific customications

include: "/explore_customizations/explores_with_custom_joins.lkml"

### Expose out joins here. Because we have the base explores as fields = empty, we have to be very particular here about fields that are included

explore: +order_items {
  fields: [order_items.sample_set*, order_items_hr.hr_order_items*, order_items_finance.finance_order_items*, inventory_item_id, distribution_centers.name]
}

explore: +users {
  fields: [users.generic_fields*,users_hr.pii*]
}


### Refinements for specific fields
