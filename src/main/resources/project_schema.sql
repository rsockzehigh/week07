use projects;
DROP TABLE IF EXISTS PROJECT;
DROP TABLE IF EXISTS MATERIAL;
DROP TABLE IF EXISTS STEP;
DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS PROJECT_CATEGORY;

CREATE TABLE project (
project_id INT /*AUTO_INCREMENT*/ NOT NULL,
project_name VARCHAR(128) NOT NULL,
estimated_hours DECIMAL(7,2),
actual_hours DECIMAL(7,2),
difficulty INT /*AUTO_INCREMENT*/,
notes TEXT,
PRIMARY KEY(project_id)
);
CREATE TABLE material (
material_id INT /*AUTO_INCREMENT*/ NOT NULL,
project_id INT /*AUTO_INCREMENT*/ NOT NULL,
material_name VARCHAR(128) NOT NULL,
num_required INT /*AUTO_INCREMENT*/,
cost DECIMAL(7,2)
PRIMARY KEY(material_id),
FOREIGN KEY(project_id) REFERENCES project (project_id) ON DELETE CASCADE
);
CREATE TABLE step (
step_id INT /*AUTO_INCREMENT*/NOT NULL,
project_id INT /*AUTO_INCREMENT*/NOT NULL,
step_text TEXT NOT NULL,
step_order INT NOT NULL,
PRIMARY KEY(step_id),
FOREIGN KEY(project_id) REFERENCES project (project_id) ON DELETE CASCADE
);
CREATE TABLE category (
category_id INT /*AUTO_INCREMENT*/NOT NULL,
category_name VARCHAR(128) NOT NULL,
PRIMARY KEY(category_id),
foreign key (category_id) references category (category_id) on delete CASCADE
);
CREATE TABLE project_category (
project_id INT /*AUTO_INCREMENT*/NOT NULL,
category_id INT /*AUTO_INCREMENT*/NOT NULL,
FOREIGN KEY(project_id) REFERENCES project(project_id) ON DELETE CASCADE,
FOREIGN KEY(category_id) REFERENCES category (category_id) ON DELETE CASCADE
);







