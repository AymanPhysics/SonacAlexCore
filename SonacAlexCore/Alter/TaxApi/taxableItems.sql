
create table taxableItems
(
ItemId bigint,
taxType nvarchar(100),
taxTypeName nvarchar(1000),
amount float,
subType nvarchar(100),
subTypeName nvarchar(1000),
rate float
)