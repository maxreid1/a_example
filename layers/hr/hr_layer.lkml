include: "/explores/order_items_base.explore.lkml"
include: "/explores/users_base.explore.lkml"
# include: "/layers/hr/refined_views/*.lkml"
include: "/views/users.view.lkml"

access_grant: hr {
  user_attribute: department
  allowed_values: ["hr"]
}

explore: order_items_hr {
  extension: required
  extends: [order_items_base]
  label: "Order Items"
  required_access_grants: [hr]
  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }
}

explore: users_hr {
  extension: required
  extends: [users_base]
  label: "Users"
  fields: [users.pii*, users.generic_fields*]
  required_access_grants: [hr]
}
