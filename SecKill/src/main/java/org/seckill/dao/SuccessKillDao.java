package org.seckill.dao;
import org.seckill.entity.*;

public interface SuccessKillDao {
    /*
    *插入购买明细，可以过滤重复
    * */
    int insertSuccessKilled(long seckillid,long userPhone);

    SuccessKilled queryByIdWithSeckill(long seckillId);
}
