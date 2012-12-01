if ( (charVel.x < .5 && charVel.x >=0) || charVel.x > -.5 && charVel.x <=0)
	{
		IsWalking = false;
	}
	
	//ANIMATION
	
	if (intervalCount < 3)
	{
    intervalCount++;
 	}
	else
  	{
    	if (char.userData.currentFrame < char.userData.totalFrames && char.userData.currentFrame > 1)
		{
     	char.userData.nextFrame();
			if (IsWalking == false)
			{
			char.userData.gotoAndStop(1);
			}
   		}
		else
		{
		if (IsWalking == true)
			{
     		char.userData.gotoAndStop(2);
    		}
			else
			{
				char.userData.gotoAndStop(1);
			}
		}
    intervalCount = 0;
	}
	
	//PLAYER INPUT & MOVEMENT
	
	charVel = char.body.GetLinearVelocity();
	if ( (key[Keyboard.RIGHT] || key[Keyboard.D]) && PlayerMove == true)
	{
		if (charVel.x < 8)
		{
		charVel.x += 0.5;
		char.body.SetLinearVelocity(charVel);
		char.userData.scaleX = 1;
		IsWalking = true;
		}
	}
	if ( (key[Keyboard.LEFT] || key[Keyboard.A]) && PlayerMove == true)
	{
		if (charVel.x > -8)
		{
		charVel.x -=0.5;
		char.body.SetLinearVelocity(charVel);
		char.userData.scaleX = -1;
		IsWalking = true;
		}
	}
	
	//JUMP
	
	if ( (key[Keyboard.UP] || key[Keyboard.W])  && grounded == true && PlayerMove == true)
	{
		 charVel.y = -8.7;
		 char.body.SetLinearVelocity(charVel);
		 /*grounded = false;*/
	}
	
	// SCREEN TRANSITION
	
	// X
	
	/*Left*/
	
	if (char.x < .1)
	{
		DestroyLevelAny();
		HideBG();
		if (CurrentLevel != 116)
		{
			CurrentLevel -= 1;
		}
		else
		{
			CurrentLevel = 107;
		}
		ShowBG();
		this['CreateLevel'+CurrentLevel]();
		txtLvl.text = String(CurrentLevel);
		
		MoveTo = 23.2;
		MoveChar();
	}
	
	/*Right*/
	
	if (char.x > 23.3)
	{
		DestroyLevelAny();
		HideBG();
		if (CurrentLevel != 107)
		{
			CurrentLevel += 1;
		}
		else
		{
			CurrentLevel = 107;
		}
		ShowBG();
		this['CreateLevel'+CurrentLevel]();
		txtLvl.text = String(CurrentLevel);

		MoveTo = .2;
		MoveChar();
	}
	
	// Y
	
	/*Top*/
	
	if (char.y < 0.1)
	{
		DestroyLevelAny();
		HideBG();
		CurrentLevel += 100;
		ShowBG();
		this['CreateLevel'+CurrentLevel]();
		txtLvl.text = String(CurrentLevel);

		MoveTo = 13.9;
		MoveCharY();
	}
	
	/*Bottom*/
	
	if (char.y > 14)
	{
		DestroyLevelAny();
		HideBG();
		CurrentLevel -= 100;
		ShowBG();
		this['CreateLevel'+CurrentLevel]();
		txtLvl.text = String(CurrentLevel);

		MoveTo = 0.2;
		MoveCharY();
	}