select *
  from users
 where id not in (SELECT author
                    from post)