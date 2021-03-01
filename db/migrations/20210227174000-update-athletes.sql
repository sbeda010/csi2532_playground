BEGIN;

ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;

INSERT INTO schema_migrations (migration, migrated_at)
VALUES ('20210227174000-update-athletes.sql','2021-02-27 17:40:00');

COMMIT;