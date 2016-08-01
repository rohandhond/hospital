# hospital

Install
```
bundle install
```

Setup DB
```
• rake db:create
• rake db:migrate
• rake db:seed
```

Run app
```
• rails s
• visit: http://localhost:3000/
```

Login as Doctor Larry
```
• Click on Sign
• email: larry@example.com
• pwd: secret
• Verify Patient Jack can be see one Patient
• Click on SignOut
```

Login as Patient Jack
```
• Click on Sign
• email: jack@example.com
• pwd: secret
• Verify file upload page for Jack
