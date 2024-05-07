Rails.application.routes.draw do
get("/", { :controller => "users", :action => "index"})

get("/users" , { :controller => "users", :action => "index"})
get("/users/:username" , { :controller => "users", :action => "show"})
post("/add_user" , { :controller => "users", :action => "create"})

get("/photos" , { :controller => "photos", :action => "index"})
get("/photos/:id" , { :controller => "photos", :action => "show"})
get("/delete_photo/:id" , { :controller => "photos", :action => "destroy"})
post("/insert_photo" , { :controller => "photos", :action => "create"})
post("/update_photo/:modify_id" , { :controller => "photos", :action => "update"})
end
