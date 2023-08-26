insert into user (username,password) values('lau','123');
insert into user (username,password) values('cat','123');
insert into user (username,password) values('diego','123');

insert into autorities (name) values ("ADMINISTRATIVO");
insert into autorities (name) values ("CLIENTE");
insert into autorities (name) values ("PROFESIONAL");

insert into user_authority (username,authority_id) values("lau",1);
insert into user_authority (username,authority_id) values("cat",2);
insert into user_authority (username,authority_id) values("diego",3);