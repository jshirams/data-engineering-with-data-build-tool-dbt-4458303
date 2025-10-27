select
  violation_code,
  count(summons_number) as ticket_count,
  sum(fee_usd) as total_revenue_usd
from  
  {{ref('silver_violation_tickets')}}
group BY
  violation_code
order BY
  total_revenue_usd desc