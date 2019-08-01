package org.seckill.dao;

import java.util.Date;
import java.util.List;

import org.seckill.entity.*;

public interface SecKillDao {


    int reduceNumber(long seckillid, Date killTime);

    SecKill queryById(long seckillid);


    List<SecKill> queryAll(int offset, int limit);
}
