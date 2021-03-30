# README

mysql2: sudo apt-get install libmysqlclient-dev

- Tạo full chức năng:
    - rails g scaffold posts name:string title:string content:string
- Tạo database từ file hoặc gặp lỗi "Migrations are pending. To resolve this issue":
    - bin/rails db:migrate RAILS_ENV=development

- bundle install