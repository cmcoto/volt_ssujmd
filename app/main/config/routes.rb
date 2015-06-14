# See https://github.com/voltrb/volt#routes for more info on routes

client '/about', action: 'about'

client '/admin', controller: 'admins', action: 'index'
client '/chat', action: 'chat'

# Routes for login and signup, provided by user_templates component gem
client '/signup', component: 'user_templates', controller: 'signup'
client '/login', component: 'user_templates', controller: 'login'
client '/account', component: 'user_templates', controller: 'accounts', action: 'index'
client '/forgot', component: 'user_templates', controller: 'login', action: 'forgot'
# The main route, this should be last. It will match any params not
# previously matched.
client '/', {}
