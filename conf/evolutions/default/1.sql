# --- !Ups

create table if not exists playdb.people(
    id INT not null primary key auto_increment,
    name VARCHAR(255) not null,
    age INT not null
);
alter table playdb.people CONVERT TO CHARACTER SET utf8mb4;

# --- create table "people" (
# ---   "id" bigint generated by default as identity(start with 1) not null primary key,
# ---   "name" varchar not null,
# ---   "age" int not null
# --- );


# --- !Downs
drop table if exists people;

# --- drop table "people" if exists;