include: "/explores/order_items_base.explore.lkml"
include: "/explores/users_base.explore.lkml"
include: "/universal_views/*.view.lkml"
include: "/team_views/*/*/*.lkml"

### Extend base explore here, then add fields (that are permissioned with required_access_grants)
## Every explore that makes the model should be included here

explore: order_items {
  extends: [order_items_base]
  ### Field Sets
  join: order_items_hr {
    relationship: one_to_one
    sql:  ;;
  }
  join: order_items_finance {
    relationship: one_to_one
    sql:  ;;
  }
}

explore: users {
  extends: [users_base]
  join: users_hr {
    relationship: one_to_one
    sql:  ;;
  }
}
