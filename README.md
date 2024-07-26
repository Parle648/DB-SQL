```mermaid
erDiagram
    USERS }|..|{ FILES : has
    USERS ||--o{ MOVIES : places
    USERS ||--o{ DIRECTORS : "employs"
    FILES ||--o{ MOVIES : "directed by"
    MOVIES ||--o{ MOVIE_GENRES : "categorized by"
    GENRES ||--|{ MOVIE_GENRES : includes
    DIRECTORS ||--|{ MOVIES : directs
    CHARACTERS ||--o{ PERSONS : "portrayed by"
    CHARACTERS ||--|{ MOVIES_CHARACTERS : "appears in"
    MOVIES ||--|{ MOVIES_CHARACTERS : "includes"
```