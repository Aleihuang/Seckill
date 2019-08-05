package org.seckill.dao;
import org.seckill.entity.*;

public interface SuccessKillDao {
    /**
     *
     * @param seckillId
     * @param userPhone
     * @return
     */
    int insertSuccessKilled(long seckillId,long userPhone);

    /**
     *
     * @param seckillId
     * @return
     */
    SuccessKilled queryByIdWithSeckill(long seckillId);
}
