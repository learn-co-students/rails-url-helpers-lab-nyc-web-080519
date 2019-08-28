Rails.application.routes.draw do

  get "/students", to: "students#index", as: "students"

  get "/students/:id", to: "students#show", as: "student" #student_path(@student)//@student

  get "/students/:id/activate", to: "students#activate", as: 'activate_student'

end
