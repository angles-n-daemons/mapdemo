CREATE TABLE MapNodeObject(
  map_node_id INT NOT NULL AUTO_INCREMENT,
  map_node_name VARCHAR(100),
  map_node_mapid VARCHAR(100),
  map_object_properties TEXT,
  map_json_id INT,
  map_template_id INT,
  FOREIGN KEY (map_template_id) References MapObjectTemplate(map_template_id),
  FOREIGN KEY map_json_id References MapObjectJSON(map_json_id),
  PRIMARY KEY (map_node_id)
);

CREATE TABLE MapLeafObject(
  map_leaf_id INT NOT NULL AUTO_INCREMENT,
  map_leaf_name VARCHAR(100),
  map_leaf_properties TEXT
  map_json_id INT,
  map_template_id INT,
  FOREIGN KEY (map_template_id) References MapObjectTemplate(map_template_id),
  FOREIGN KEY map_json_id References MapObjectJSON(map_json_id),
  PRIMARY KEY (map_leaf_id)
);

CREATE TABLE MapObjectJSON(
  map_json_id INT NOT NULL AUTO_INCREMENT,
  map_json_name VARCHAR(100),
  object_json TEXT,
  PRIMARY KEY (map_json_id)
);

CREATE TABLE MapObjectTemplate(
  map_template_id INT NOT NULL AUTO_INCREMENT,
  map_template_name VARCHAR(50),
  PRIMARY KEY (map_template_id)
);

CREATE TABLE MapTemplateContainsField(
  map_template_id INT,
  map_field_id INT,
  FOREIGN KEY (map_template_id) References MapObjectTemplate(map_template_id),
  FOREIGN KEY (map_field_id) References MapField(map_field_id)
  PRIMARY KEY (map_template_id, map_field_id)
);

CREATE TABLE MapField(
  map_field_id INT NOT NULL AUTO_INCREMENT,
  map_field_type VARCHAR(20),
  PRIMARY KEY (map_field_id)
);