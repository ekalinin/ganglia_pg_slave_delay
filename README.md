PostgreSQL Replication Delay in Ganglia
=======================================

Installation
------------

Do the follow on standby server:

```bash
$ git clone https://github.com/ekalinin/ganglia_pg_slave_delay
$ cd ganglia_pg_slave_delay
$ make install
```

Result
------

![Pg Delay](https://raw.github.com/ekalinin/ganglia_pg_slave_delay/master/screenshot.png)

How it works
------------

Every 30 seconds cron task grabs current delay:

```sql
SELECT round(extract(epoch from (now() - pg_last_xact_replay_timestamp())))
```

And posts results into ganglia via gmetric.

LICENSE
-------

See [LICENSE](https://github.com/ekalinin/ganglia_pg_slave_delay/blob/master/LICENSE)
file.
