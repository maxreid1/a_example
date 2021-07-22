include: "/explore_customizations/explores_with_field_sets.lkml"


### Refine the explores with field_sets to add more joins if required

explore: +order_items {
  join: distribution_centers {
    required_access_grants: [finance]
    type: left_outer
    relationship: many_to_one
    sql_on: ${inventory_items.product_distribution_center_id} = ${distribution_centers.id} ;;
  }
}
