use examination;
select 设备号,设备类别,保养类别,保养.保养单ID,保养日期,保养内容,完成情况,材料名称,数量,保养人,班组
from 保养记录 join 保养 on 保养记录.保养单ID=保养.保养单ID
join 保养消耗 on 保养消耗.记录ID=保养记录.记录ID
where 设备号="123"

use examination;
select 保养.设备类别,保养记录.设备号,上次保养日期,保养类别,当前时间,提前期
from 预警 join 保养 on 预警.上次保养日期=保养.保养日期
join 设备 on 设备.设备类别=保养.设备类别
join 保养记录 on 保养记录.保养单ID=保养.保养单ID
where 当前时间="2017-10-07"
group by 保养记录.设备号


