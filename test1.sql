#建立数据库
CREATE DATABASE gradesystem;
#连接数据库
USE gradesystem;
#建立学生table
CREATE TABLE student
(sid int(10) PRIMARY KEY AUTO_INCREMENT,
 sname char(12),
 gender enum('male','female')
 );
 #建立course表
 CREATE TABLE course
 (cid int(10) PRIMARY KEY AUTO_INCREMENT,
  cname char(12) NOT NULL
  );
  #建立mark表
  CREATE TABLE mark 
  (
  mid int(10) PRIMARY KEY AUTO_INCREMENT,
  sid int(10) NOT NULL,
  cid int(10) NOT NULL,
  score int(10) NOT NULL,
  CONSTRAINT sid_m FOREIGN KEY (sid) REFERENCES student(sid),
  CONSTRAINT cid_m FOREIGN KEY (cid) REFERENCES course(cid)
  );
  INSERT INTO student(sname,gender) values('tom','male');
  INSERT INTO student(sname,gender) values('jack','male');
  INSERT INTO student(sname,gender) values('rose','female');
  INSERT INTO course(cname) values('math');
  INSERT INTO course(cname) values('physics');
  INSERT INTO course(cname) values('chemistry');
  INSERT INTO mark(sid,cid,score) values(1,1,80);
  INSERT INTO mark(sid,cid,score) values(2,1,75);
  show tables;













