with order as
{
    select * from {{ ref('raw_orders') }}
}

select orderid,
        sum(ordersellingprice) as total_sp
        from orders
        group by 1
        having total_sp < 0 