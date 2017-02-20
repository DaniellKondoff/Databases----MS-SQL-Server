Select i.Name as Item,
i.Price,
i.MinLevel,
gt.Name as 'Forbidden Game Type'
 from Items as i
LEFT JOIN GameTypeForbiddenItems as gtf
ON i.Id=gtf.ItemId
LEFT JOIN GameTypes as gt
ON gtf.GameTypeId = gt.Id
Order BY gt.Name DESC, i.Name ASC