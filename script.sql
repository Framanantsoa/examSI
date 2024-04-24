create database examSI;

use examSI;

create table utilisateurs(
    idUsr int primary key auto_increment,
    email varchar(40) not null,
    motdepasse varchar(55) not null
)engine=innodb;

create table simulation(
    idSim int primary key auto_increment,
    nom varchar(35),
    idUsr int,
    dureeMois int,
    dateDebut date,
    mensualite decimal(18,2),
    foreign key (idUsr) references utilisateurs(idUsr)
)engine=innodb;