# World Cup Database (PostgreSQL)

This project is part of the **Relational Databases Certification** from [freeCodeCamp](https://www.freecodecamp.org/), specifically the "World Cup Database" project.

The goal is to build a PostgreSQL relational database that stores World Cup match data and allows for meaningful queries, using `games.csv` as the input source. This project demonstrates skills in database design, data import with Bash, and SQL querying.

---

## 📁 Project Structure

- `games.csv` – CSV file containing World Cup match data.
- `insert_data.sh` – Bash script that imports data into PostgreSQL from `games.csv`.
- `queries.sh` – Bash script that runs SQL queries to retrieve specific insights from the database.
- `worldcup.sql` (optional) – SQL dump file to restore the database.

---

## 🏗️ Database Schema

### `teams`
| Column    | Type    | Constraints           |
|-----------|---------|------------------------|
| team_id   | SERIAL  | PRIMARY KEY            |
| name      | TEXT    | UNIQUE, NOT NULL       |

### `games`
| Column         | Type    | Constraints                       |
|----------------|---------|------------------------------------|
| game_id        | SERIAL  | PRIMARY KEY                        |
| year           | INT     | NOT NULL                           |
| round          | TEXT    | NOT NULL                           |
| winner_id      | INT     | FOREIGN KEY → teams(team_id), NOT NULL |
| opponent_id    | INT     | FOREIGN KEY → teams(team_id), NOT NULL |
| winner_goals   | INT     | NOT NULL                           |
| opponent_goals | INT     | NOT NULL                           |
