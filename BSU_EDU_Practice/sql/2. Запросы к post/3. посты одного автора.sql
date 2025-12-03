SELECT * 
  from post 
 where author in (SELECT id 
                    from users 
                   where name like 'Даниэль')
 order by post.created_at