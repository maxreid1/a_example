connection: "looker-private-demo"

## Include base Explores that "everyone" should have access to. Build content for

include: "/explores/order_items_base.explore.lkml"
include: "/explores/users_base.explore.lkml"

access_grant: hr {
  user_attribute: department
  allowed_values: ["hr"]
}

access_grant: finance {
  user_attribute: department
  allowed_values: ["finance"]
}

explore: order_items {
  extends: [order_items_base]
  required_access_grants: [finance, hr]
}

explore: users {
  extends: [users_base]
  required_access_grants: [finance, hr]
}
