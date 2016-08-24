create table directory (
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username        VARCHAR(100),
    department      VARCHAR(100),
    name            VARCHAR(100),
    access_token    VARCHAR(30)
    );

insert into directory (username, department, name, access_token)
    values ('rdm001', 'thesimpsons', 'homer', NULL);

insert into directory (username, department, name, access_token)
    values ('rdm002', 'thesimpsons', 'marge', NULL);

insert into directory (username, department, name, access_token)
    values ('rdm003', 'thesimpsons', 'maggie', NULL);

insert into directory (username, department, name, access_token)
    values ('rdm004', 'thesimpsons', 'lisa', NULL);

insert into directory (username, department, name, access_token)
    values ('rdm005', 'thesimpsons', 'bart', NULL);