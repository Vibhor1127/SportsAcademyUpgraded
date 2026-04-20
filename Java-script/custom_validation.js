function emptyCheckBox(sportsArray)
{
	var flag=0
	//alert("in js")
	for(i=0;i<sportsArray.length;i++)
	{
		if(sportsArray[i].checked)
		{
			flag=1;
			break;
		}
	}
	
	if(flag==0)
	return true
	 else
	return false
}