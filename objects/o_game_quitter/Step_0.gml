quit+=1
if quit>20 {game_end()}
if quit=5 {SXMS_C_Stop()}
if quit=10
    {
    

for (i=0;i<200;i+=1)
{
SXMS_SFX_Stop(i)
SXMS_SFX_Free(i)}
}
if quit=15 {SXMS_I_Close()}

