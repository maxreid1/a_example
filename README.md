1. Base explores always with empty field list and joins for all users
2. Universal Views should have fields that all users can access
3. Each team has two types of modifications: custom sets, and specific views/joins.

Custom Sets:
- Create a view file that extends the universal view in the field_sets folder
- Add a required access grant on that view
- Add the specific dimensions/measures
- (Optional) Include them in a set

Specific views/joins
- Add view file to that teams folder under custom_views
- Add a required access grant

Explore Customizations:
4. In the Explores with field sets, add the field set joins as bare joins
5. In the Explores with custom joins, refine the Explores with field sets and add joins
6. In the model, refine the Explores to add the only the fields/sets you need. (Up until this point, all the fields are hidden because of the empty field list in the base explores)



Linting rules:
- Empty set on the base explroes
- Required access grant on view file in finance/hr
- Required access grant on joins in the explore_customizations folder
