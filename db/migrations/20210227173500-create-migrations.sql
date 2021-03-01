BEGIN;

CREATE TABLE schema_migrations
(
	migration varchar(255),
	migrated_at time,
	PRIMARY KEY (migration)
);

INSERT INTO schema_migrations (migration,migrated_at)
VALUES 
	('20210229173000-create-athletes.sql','2021-02-27 17:30:00'),
	('20210229173500-create-migrations.sql','2021-02-27 17:35:00');

COMMIT;