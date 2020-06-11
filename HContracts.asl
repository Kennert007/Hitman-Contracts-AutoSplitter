state("hitmancontracts")
{
	short AllLevels : 0x00Ca844, 0x4;
	byte End : 0x0181638, 0x0;
}

startup
{
    settings.Add("am", true, "All Levels");
    settings.SetToolTip("am", "Choose which levels to split after");
	
	settings.Add("option1", true, "Asylum Aftermath", "am");
	settings.Add("option2", true, "The Meat King's Party", "am");
	settings.Add("option3", true, "The Bjarkhov Bomb", "am");
	settings.Add("option4", true, "Beldingford Manor", "am");
	settings.Add("option5", true, "Rendezvous in Rotterdam", "am");
	settings.Add("option6", true, "Deadly Cargo", "am");
	settings.Add("option7", true, "Traditions of the Trade", "am");
	settings.Add("option8", true, "Slaying a Dragon", "am");
	settings.Add("option9", true, "The Wang Fou Incident", "am");
	settings.Add("option10", true, "The Seafood Massacre", "am");
	settings.Add("option11", true, "Lee Hong Assassination", "am");
	settings.Add("option12", true, "Hunter and Hunted", "am");
}

split
{
	if (settings["option1"] && current.AllLevels == 981 && old.AllLevels == 731)
	{
		return true;
	}
	if (settings["option2"] && current.AllLevels == 728 && old.AllLevels == 981)
	{
		return true;
	}
	if (settings["option3"] && current.AllLevels == 698 && old.AllLevels == 728)
	{
		return true;
	}
	if (settings["option4"] && current.AllLevels == 735 && old.AllLevels == 698)
	{
		return true;
	}
	if (settings["option5"] && current.AllLevels == 886 && old.AllLevels == 735)
	{
		return true;
	}
	if (settings["option6"] && current.AllLevels == 894 && old.AllLevels == 886)
	{
		return true;
	}
	if (settings["option7"] && current.AllLevels == 886 && old.AllLevels == 894)
	{
		return true;
	}
	if (settings["option8"] && current.AllLevels == 920 && old.AllLevels == 886)
	{
		return true;
	}
	if (settings["option9"] && current.AllLevels == 731 && old.AllLevels == 920)
	{
		return true;
	}
	if (settings["option10"] && current.AllLevels == 905 && old.AllLevels == 731)
	{
		return true;
	}
	if (settings["option11"] && current.AllLevels == 741 && old.AllLevels == 905)
	{
		return true;
	}
	if (settings["option12"] && current.End == 67 && old.End == 0 && current.AllLevels == 741)
	{
		return true;
	}
}