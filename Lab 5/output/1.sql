select count(c_name)
from customer
where c_nationkey not in (
    select n_nationkey from nation where n_regionkey = 0 or n_regionkey = 3
)