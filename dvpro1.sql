CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "Email" varchar NOT NULL,
  "password" varchar UNIQUE NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "CoursesVideos" (
  "id" serial PRIMARY KEY,
  "title" varchar UNIQUE NOT NULL,
  "url" string NOT NULL
);

CREATE TABLE "Courses" (
  "id" serial PRIMARY KEY,
  "coursesid" varchar NOT NULL,
  "title" varchar NOT NULL,
  "descripcion" varchar NOT NULL,
  "Level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "Categories" (
  "id" serial PRIMARY KEY,
  "Name" varchar NOT NULL,
  "catid_id" varchar NOT NULL
);

ALTER TABLE "Courses" ADD FOREIGN KEY ("coursesid") REFERENCES "users" ("id");

ALTER TABLE "Categories" ADD FOREIGN KEY ("catid_id") REFERENCES "Courses" ("id");

ALTER TABLE "Categories" ADD FOREIGN KEY ("catid_id") REFERENCES "CoursesVideos" ("id");
