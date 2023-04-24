-- answer 1
SELECT ar.* ,us.email  FROM article AS ar
INNER JOIN user AS us
ON ar.authorID = us.id;

-- answer 2
SELECT * FROM article WHERE id >=7 ORDER BY id LIMIT 6;