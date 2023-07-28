-- Users
drop table users;
CREATE TABLE users (
Id SERIAL PRIMARY KEY,
Reputation INTEGER ,
CreationDate TIMESTAMP ,
Views INTEGER ,
UpVotes INTEGER ,
DownVotes INTEGER
);

-- Posts
drop table posts;
CREATE TABLE posts (
	Id SERIAL PRIMARY KEY,
	PostTypeId SMALLINT ,
	CreationDate TIMESTAMP ,
	Score INTEGER ,
	ViewCount INTEGER,
	OwnerUserId INTEGER,
  AnswerCount INTEGER ,
  CommentCount INTEGER ,
  FavoriteCount INTEGER,
  LastEditorUserId INTEGER
);

-- PostLinks
drop table postLinks;
CREATE TABLE postLinks (
	Id SERIAL PRIMARY KEY,
	CreationDate TIMESTAMP ,
	PostId INTEGER ,
	RelatedPostId INTEGER ,
	LinkTypeId SMALLINT
);

-- PostHistory
drop table postHistory;
CREATE TABLE postHistory (
	Id SERIAL PRIMARY KEY,
	PostHistoryTypeId SMALLINT ,
	PostId INTEGER ,
	CreationDate TIMESTAMP ,
	UserId INTEGER
);

-- Comments
drop table comments;
CREATE TABLE comments (
	Id SERIAL PRIMARY KEY,
	PostId INTEGER ,
	Score SMALLINT ,
  CreationDate TIMESTAMP ,
	UserId INTEGER
);

-- Votes
drop table votes;
CREATE TABLE votes (
	Id SERIAL PRIMARY KEY,
	PostId INTEGER,
	VoteTypeId SMALLINT ,
	CreationDate TIMESTAMP ,
	UserId INTEGER,
	BountyAmount SMALLINT
);

-- Badges
drop table badges;
CREATE TABLE badges (
	Id SERIAL PRIMARY KEY,
	UserId INTEGER ,
	Date TIMESTAMP
);

-- Tags
drop table tags;
CREATE TABLE tags (
	Id SERIAL PRIMARY KEY,
	Count INTEGER ,
	ExcerptPostId INTEGER
);
