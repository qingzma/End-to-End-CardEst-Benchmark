-- Users
drop table users;
CREATE TABLE users (
Id SERIAL PRIMARY KEY,
Reputation INTEGER ,
CreationDate BIGINT ,
Views INTEGER ,
UpVotes INTEGER ,
DownVotes INTEGER
);

-- Posts
drop table posts;
CREATE TABLE posts (
	Id SERIAL PRIMARY KEY,
	PostTypeId SMALLINT ,
	CreationDate BIGINT ,
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
	CreationDate BIGINT ,
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
	CreationDate BIGINT ,
	UserId INTEGER
);

-- Comments
drop table comments;
CREATE TABLE comments (
	Id SERIAL PRIMARY KEY,
	PostId INTEGER ,
	Score SMALLINT ,
  CreationDate BIGINT ,
	UserId INTEGER
);

-- Votes
drop table votes;
CREATE TABLE votes (
	Id SERIAL PRIMARY KEY,
	PostId INTEGER,
	VoteTypeId SMALLINT ,
	CreationDate BIGINT ,
	UserId INTEGER,
	BountyAmount SMALLINT
);

-- Badges
drop table badges;
CREATE TABLE badges (
	Id SERIAL PRIMARY KEY,
	UserId INTEGER ,
	Date BIGINT
);

-- Tags
drop table tags;
CREATE TABLE tags (
	Id SERIAL PRIMARY KEY,
	Count INTEGER ,
	ExcerptPostId INTEGER
);
