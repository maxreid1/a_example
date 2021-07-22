include: "/views/order_items.view.lkml"
include: "/views/inventory_items.view.lkml"

explore: order_items_base {
  extension: required
  view_name: order_items
  join: inventory_items {
    relationship: many_to_one
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
  }
}
