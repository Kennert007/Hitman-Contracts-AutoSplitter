state("hitmancontracts")
{
	byte Load : 0x00A2698, 0x8;
	short Start : 0x027D4D8, 0x20;
	short AllLevels : 0x00CA844, 0x4;
	byte End : 0x0181638, 0x0;
}

startup
{
    settings.Add("am", true, "All Levels");
    settings.SetToolTip("am", "Choose which levels to split after");
	
	settings.Add("level1", true, "Asylum Aftermath", "am");
	settings.Add("level2", true, "The Meat King's Party", "am");
	settings.Add("level3", true, "The Bjarkhov Bomb", "am");
	settings.Add("level4", true, "Beldingford Manor", "am");
	settings.Add("level5", true, "Rendezvous in Rotterdam", "am");
	settings.Add("level6", true, "Deadly Cargo", "am");
	settings.Add("level7", true, "Traditions of the Trade", "am");
	settings.Add("level8", true, "Slaying a Dragon", "am");
	settings.Add("level9", true, "The Wang Fou Incident", "am");
	settings.Add("level10", true, "The Seafood Massacre", "am");
	settings.Add("level11", true, "Lee Hong Assassination", "am");
	settings.Add("level12", true, "Hunter and Hunted", "am");
	
	settings.Add("option1", false, "Game Time");
	settings.SetToolTip("option1", "Enables loadless time, to see it switch livesplit comparison to Game Time");
}

start
{
	return current.Start == 0 && old.Start == 687;
}

split
{
	return(
	(settings["level1"] && current.AllLevels == 981 && old.AllLevels == 731)||
	(settings["level2"] && current.AllLevels == 728 && old.AllLevels == 981)||
	(settings["level3"] && current.AllLevels == 698 && old.AllLevels == 728)||
	(settings["level4"] && current.AllLevels == 735 && old.AllLevels == 698)||
	(settings["level5"] && current.AllLevels == 886 && old.AllLevels == 735)||
	(settings["level6"] && current.AllLevels == 894 && old.AllLevels == 886)||
	(settings["level7"] && current.AllLevels == 886 && old.AllLevels == 894)||
	(settings["level8"] && current.AllLevels == 920 && old.AllLevels == 886)||
	(settings["level9"] && current.AllLevels == 731 && old.AllLevels == 920)||
	(settings["level10"] && current.AllLevels == 905 && old.AllLevels == 731)||
	(settings["level11"] && current.AllLevels == 741 && old.AllLevels == 905)||
	(settings["level12"] && current.End == 67 && old.End == 0 && current.AllLevels == 741)
	);
}

isLoading
{
	return settings["option1"] && current.Load == 0;
}