include: "/universal_views/users.view.lkml"

## Require fields to be empty

explore: users_base {
  fields: []
  extension: required
  view_name: users
}
