/*
Earplugs
*/

life_fadeSound = !life_fadeSound;

if (life_fadeSound) then 
{
	1 fadeSound 0.1; // Faded to 10%
	["Your sound has been lowered.", false] spawn domsg;
}
else
{
	1 fadeSound 1; // Returned to 100%
	["Your sound has returned to normal.", false] spawn domsg;
};