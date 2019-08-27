explain select ea.id id,ea.archive_no archiveNo,e.id enterpriseId,e.name enterpriseName,e.type enterpriseType,ea.tag tag,
(select eu.name from ENTERPRISE_USER eu where eu.id=ea.creator) creatorName,ea.created_at createdAt
from (select max(id) id,archive_no,max(enterprise_id) enterprise_id,tag,max(creator) creator,min(created_at) created_at from ENTERPRISE_ARCHIVE
group by archive_no, tag) ea left join ENTERPRISE e on ea.enterprise_id = e.id;

-- 2优化方案
explain select ea.id id,ea.archive_no archiveNo,e.id enterpriseId,e.name enterpriseName,e.type enterpriseType,ea.tag tag,
eu.name creatorName,ea.created_at createdAt
from (select max(id) id,archive_no,max(enterprise_id) enterprise_id,tag,max(creator) creator,min(created_at) created_at from ENTERPRISE_ARCHIVE
group by archive_no, tag) ea left join ENTERPRISE e on ea.enterprise_id = e.id left join ENTERPRISE_USER eu on eu.id=ea.creator;

-- 3优化方案
explain select ea.id id,ea.archive_no archiveNo,e.id enterpriseId,e.name enterpriseName,e.type enterpriseType,ea.tag tag,eu.name creatorName,ea.created_at createdAt
from ENTERPRISE_ARCHIVE ea inner join (select min(id) id from ENTERPRISE_ARCHIVE group by archive_no, tag) tem on ea.id=tem.id 
left join ENTERPRISE e on ea.enterprise_id = e.id left join ENTERPRISE_USER eu on eu.id=ea.creator;
