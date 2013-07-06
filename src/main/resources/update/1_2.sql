CREATE TABLE ACTIVITY(
		ACTIVITY_ID INT AUTO_INCREMENT,
		USER_NAME VARCHAR(100) NOT NULL,
		REPOSITORY_NAME VARCHAR(100) NOT NULL,
		ACTIVITY_USER_NAME VARCHAR(100) NOT NULL,
		ACTIVITY_TYPE VARCHAR(100) NOT NULL,
		MESSAGE TEXT NOT NULL,
		ADDITIONAL_INFO TEXT,
		ACTIVITY_DATE TIMESTAMP NOT NULL
);

ALTER TABLE ACTIVITY ADD CONSTRAINT IDX_ACTIVITY_PK PRIMARY KEY (ACTIVITY_ID);
ALTER TABLE ACTIVITY ADD CONSTRAINT IDX_ACTIVITY_FK0 FOREIGN KEY (USER_NAME, REPOSITORY_NAME) REFERENCES REPOSITORY (USER_NAME, REPOSITORY_NAME);
ALTER TABLE ACTIVITY ADD CONSTRAINT IDX_ACTIVITY_FK1 FOREIGN KEY (ACTIVITY_USER_NAME) REFERENCES ACCOUNT (USER_NAME);
