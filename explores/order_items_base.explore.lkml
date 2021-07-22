include: "/universal_views/order_items.view.lkml"
include: "/universal_views/inventory_items.view.lkml"

## Require fields to be empty

explore: order_items_base {
  fields: []
  extension: required
  view_name: order_items
  join: inventory_items {
    relationship: many_to_one
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
  }
}
