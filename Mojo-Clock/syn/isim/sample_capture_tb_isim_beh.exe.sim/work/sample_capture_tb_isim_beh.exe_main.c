/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_04284627112054182733_2708139815_init();
    xilinxcorelib_ver_m_18166792875774041790_0914047351_init();
    xilinxcorelib_ver_m_03165991153648205951_0512987110_init();
    xilinxcorelib_ver_m_10066368518302646626_2821194223_init();
    work_m_04920115474770924055_1138265377_init();
    work_m_00440025139008871775_2173978420_init();
    work_m_16915886137481133846_0904183025_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_16915886137481133846_0904183025");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
