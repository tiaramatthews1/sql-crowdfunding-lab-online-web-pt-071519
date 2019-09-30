def selects_the_user_name_age_and_pledge_amount_for_all_pledges
"SELECT users.name,users.age,SUM(amount) FROM users, pledges 
ON pledges.user_id = users.id 
GROUP BY pledges.user_id ORDER BY name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_
met_their_funding_goal
"SELECT Projects.title, SUM(amount) - Projects.funding_goal FROM projects, pledges 
WHERE pledges.project_id = projects.id GROUP BY Projects.title 
HAVING projects.id = pledges.project_id ORDER BY SUM(amount), 
Projects.funding_goal > -1 DESC LIMIT 2;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them
_by_the_amount 
"SELECT Users.name, SUM(amount) FROM pledges INNER JOIN users 
ON pledges.user_id = users.id 
GROUP BY users.name ORDER BY SUM(amount) ASC;"
end
def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category 
"SELECT projects.category, pledges.amount FROM pledges LEFT JOIN projects 
ON pledges.project_id = projects.id WHERE projects.category = 'music';" 
end
def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the
_book_category
"SELECT projects.category, SUM(amount) FROM pledges LEFT JOIN projects 
ON pledges.project_id = projects.id 
GROUP BY projects.category HAVING projects.category = 'books';" 
end
