*** |  (C) 2008-2019 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

vm_prod_heaven_timber.fx(j,kforestry) = 0;

i21_trade_bal_reduction(t_all,k_trade)=f21_trade_bal_reduction(t_all,"easytrade","%c21_trade_liberalization%");
i21_trade_bal_reduction(t_all,k_hardtrade21)=f21_trade_bal_reduction(t_all,"hardtrade","%c21_trade_liberalization%");
*i21_trade_bal_reduction(t_all,"wood")$(m_year(t_all) >= 2050) = 0.5;
*i21_trade_bal_reduction(t_all,"woodfuel") = i21_trade_bal_reduction(t_all,"wood");

i21_trade_margin(i2,k_trade) = f21_trade_margin(i2,k_trade);

if ((s21_trade_tariff=1),
    i21_trade_tariff(i2,k_trade) = f21_trade_tariff(i2,k_trade);
elseif (s21_trade_tariff=0),
    i21_trade_tariff(i2,k_trade) = 0;
);

f21_self_suff(t_all,"MEA",kforestry) = 0.1;
f21_exp_shr(t_all,"MEA",kforestry) = 0;
*f21_self_suff(t_all,"JPN",kforestry) = 0.1;
*f21_self_suff(t_all,"EUR","woodfuel") = 1.09;

v21_supply_missing.l(i,k_trade) = 0;
v21_supply_missing.fx(i,k_trade) = 0;
v21_supply_missing.lo(i,"wood") = 0;
v21_supply_missing.lo(i,"woodfuel") = 0;
v21_supply_missing.up(i,"wood") = 500 ;
v21_supply_missing.up(i,"woodfuel") = 100 ;

v21_cost_supply_missing.l(i,k_trade) = 0;
v21_cost_export.l(i,k_trade) = 0;

pm_selfsuff_ext(t_ext,i,kforestry) = f21_self_suff("y2150",i,kforestry);
pm_selfsuff_ext(t_all,i,kforestry) = f21_self_suff(t_all,i,kforestry);
