*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de


positive variables
 v71_prod_rum(j,kli_rum,kforage)          production of pasture and fodder fet ruminants within a cluster
 ;
 
equations
 q71_feed_rum_liv(j,kforage)                     production constraint for ruminant livestock products
 q71_prod_mon_liv(j,kli_mon)                     production constraint for monogastrics livestock products
 q71_sum_rum_liv(j,kli_rum)                     total production of pasture and fodder fet ruminants
 ;

parameters
 i71_urban_area_share(j)                             share of urban area within a region (1)
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov71_prod_rum(t,j,kli_rum,kforage,type) production of pasture and fodder fet ruminants within a cluster
 oq71_feed_rum_liv(t,j,kforage,type)     production constraint for ruminant livestock products
 oq71_prod_mon_liv(t,j,kli_mon,type)     production constraint for monogastrics livestock products
 oq71_sum_rum_liv(t,j,kli_rum,type)      total production of pasture and fodder fet ruminants
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################