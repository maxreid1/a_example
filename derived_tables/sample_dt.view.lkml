# If necessary, uncomment the line below to include explore_source.
# include: "order_items.explore.lkml"

view: sample {
  derived_table: {
    sql_trigger_value: 0=1 ;;
    explore_source: order_items {
      column: count {}
      column: status {}
    }
  }
  dimension: count {
    type: number
  }
  dimension: status {}
}
