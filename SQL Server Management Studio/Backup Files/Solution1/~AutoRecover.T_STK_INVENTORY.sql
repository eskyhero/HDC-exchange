select *  from T_BD_MATERIAL_L 
 
select b.FMATERIALID,b.FNAME,a.FQty,a.FSTOCKORGID,a.FSTOCKID  from T_STK_INVENTORY a 
left join  T_BD_MATERIAL_L b on
 a.FMATERIALID = b.FMATERIALID

 where a.FSTOCKORGID = 104772 and a.FSTOCKID in (141093,141086)

 select b.FMATERIALID,b.FNAME,a.FQty,a.FSTOCKORGID,a.FSTOCKID  from T_STK_INVENTORY a 
left join  T_BD_MATERIAL_L b on
 a.FMATERIALID = b.FMATERIALID

 where a.FSTOCKORGID = 104772 and a.FSTOCKID = 141093
 order by b.FMATERIALID

select *  from T_STK_INVENTORY where FMATERIALID in (107889,107890) and FSTOCKORGID = 104772 and FSTOCKID in (141093,141086)



 select b.FMATERIALID,b.FNAME,a.FQty,a.FSTOCKORGID,a.FSTOCKID,a.FAUXPROPID  from T_STK_INVENTORY a 
left join  T_BD_MATERIAL_L b on
 a.FMATERIALID = b.FMATERIALID

 where a.FSTOCKORGID = 104772 and a.FSTOCKID in (141093,141086) and b.FMATERIALID in (107889,107890)
 order by b.FMATERIALID


select *  FROM T_ORG_Organizations_L 


