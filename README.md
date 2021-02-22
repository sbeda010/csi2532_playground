# csi2532_playground


### Q1
#### entity relation
![erQ1](model%20er/q1.png)
#### diagramme relationnel
![rgQ1](digramme%20relationnel/q1.png)
#### SQL
```sql
CREATE TABLE professeurs(
	SSN int,
	PRIMARY KEY (SSN)
);

CREATE TABLE cours(
	courseid varchar(10),
	PRIMARY KEY (courseid)
);

CREATE TABLE teaches(
	courseid varchar(10),
	SSN int,
	semester varchar(10),
	FOREIGN KEY (courseid) REFERENCES cours,
	FOREIGN KEY (SSN) REFERENCES professeurs
);
```
### Q3
#### entity relation
![erQ3](model%20er/q3.png)
#### diagramme relationnel
![rgQ3](digramme%20relationnel/q3.png)
#### SQL
```sql
CREATE TABLE professeurs(
	SSN int,
	courseid varchar(10) NOT NULL,
	PRIMARY KEY (SSN),
	FOREIGN KEY (courseid) REFERENCES cours,
);

CREATE TABLE cours(
	courseid varchar(10),
	PRIMARY KEY (courseid)
);
```

### Q5
#### entity relation
![erQ5](model%20er/q5.png)
#### diagramme relationnel
![rgQ5](digramme%20relationnel/q5.png)
#### SQL
```sql
CREATE TABLE professeurs(
	SSN int,
	PRIMARY KEY (SSN)
);

CREATE TABLE cours(
	courseid varchar(10),
	PRIMARY KEY (courseid)
);

CREATE TABLE teaches(
	courseid varchar(10),
	SSN int,
	semester varchar(10),
	FOREIGN KEY (courseid) REFERENCES cours,
	FOREIGN KEY (SSN) REFERENCES professeurs
);
```

### Q6
#### entity relation
![erQ6](model%20er/q6.png)
#### diagramme relationnel
![rgQ6](digramme%20relationnel/q6.png)
#### SQL
```sql
CREATE TABLE professeurs(
	SSN int,
	PRIMARY KEY (SSN)
);

CREATE TABLE cours(
	courseid varchar(10),
	PRIMARY KEY (courseid)
);

CREATE TABLE equipe_professeurs(
	groupid varchar(10),
	PRIMARY KEY (groupid)
);

CREATE TABLE teaches(
	groupid varchar(10),
	courseid varchar(10),
	semester varchar(10),
	FOREIGN KEY (courseid) REFERENCES cours,
	FOREIGN KEY (groupid) REFERENCES equipe_professeurs
);

CREATE TABLE part_of(
	groupid varchar(10),
	SSN int,
	FOREIGN KEY (SSN) REFERENCES professeurs,
	FOREIGN KEY (groupid) REFERENCES equipe_professeurs
);
```