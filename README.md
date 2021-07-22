1. Base explores always with empty field list and joins for all users
2. Universal Views should have automatically generated fields, and hidden: yes for those you don't want to expose to everyone
3. Each team has two types of modifications: custom sets, and specific views/joins.

Custom Sets:
- Create a refined view in the team_views folder under the respective team
- Include the base view
- Refine the view and add dimensions, measures with access grants

Specific views/joins
- Add view file to that teams folder under custom_views
- Add a required access grant to the view file

Explore Customizations:

4. In the explores_with_custom_joins, refine the Explores to add joins
5. In the model, refine the Explores to add the only the fields/sets you need. (Up until this point, all the fields are hidden because of the empty field list in the base explores)



Linting rules:
- Empty set on the base explroes
- Required access grant on each dimension/measure in the field_sets in finance/hr
- Required access grant on view file in the 'custom_views' in the 'team_views' folders

Adding a new metric:
- If specific to a particular team, add it to their view in the field_set folder and add to a set/explore.
- If more broad, add to universal views
- If multiple groups, add it to either a separate view or within existing view, with a new access grant (like finance_or_hr as an example)
