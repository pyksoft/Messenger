# Whomsapp Messenger

## Models
### User (Devise)
- email
- password

### Conversation
- user1:references (User)
- user2:references (User)

### Message
- conversation:references (Conversation)
- sender:references (User)
- content:text