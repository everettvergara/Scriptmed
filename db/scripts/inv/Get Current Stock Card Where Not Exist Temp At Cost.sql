 select c.name as item_name,
		b.serbalot,
		d.name as wh_id,
		sum(a.qty) as qty
 from	tb_inv_lr_sc as a 
		inner join tb_inv_lr_serbalot as b on
		a.serbalot_id = b.serbalot_id

		inner join tb_inv_mf_item as c on
		b.item_id = c.item_id

		inner join tb_inv_mf_wh as d on
		a.wh_id = d.wh_id
 where	not exists (select * from temp_at_cost as x where b.serbalot = x.lot_no)
group
by		c.name,
		b.serbalot,
		d.name