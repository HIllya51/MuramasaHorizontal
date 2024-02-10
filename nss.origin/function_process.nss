$Revision: 45 $

//============//
.//◆斬撃
//============//

//============//
..//Delete用
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_Delete
function SL_Delete(){

	Request("@Slash_*", Disused);
	Request("@slash*", Disused);
	Request("@blood*", Disused);

}


//============//
..//上から下
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_down
function SL_down(SlashX,SlashY,SlashZoom){

	$slash_name=1;

	while($slash_name<8){

		$ナット名1="slashD"+$slash_name;

		$画像="cg/anime/slash01a_0"+$slash_name+".png";

		CreateTexture($ナット名1, 3000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashZoom, SlashZoom, null, true);
		Move($ナット名1, 0, SlashX, SlashY, null, true);

		$slash_name++:
	}

}

/*===============*/
...//優先度変更
/*===============*/
...//SL_down2
function SL_down2($SLDPri,SlashX,SlashY,SlashZoom){

	$slash_name=1;

	while($slash_name<8){

		$ナット名1="slashD"+$slash_name;

		$画像="cg/anime/slash01a_0"+$slash_name+".png";

		CreateTexture($ナット名1, $SLDPri, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashZoom, SlashZoom, null, true);
		Move($ナット名1, 0, SlashX, SlashY, null, true);

		$slash_name++:
	}

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_downfade2
function SL_downfade2($SLD_TIME){

	$slash_nameF=1;

	$SLD_TIME = $SLD_TIME+1;

	while($slash_nameF<8){
		if($slash_nameF<8){$前ナット名1="@slashD"+$slash_nameF;$slash_nameF++;}
		if($SpeedNumV1<8){$現ナット名1="@slashD"+$slash_nameF;}
		Fade("$現ナット名1", 0, 1000, null, true);
		Fade("$前ナット名1", 0, 0, null, false);
		Wait($SLD_TIME);
	}
	Request("@slashD*", Disused);

}


//――――――――――――――――――――――――――――――――――――――//
...//SL_downfade
function SL_downfade($SLD_TIME){

	CreateProcess("Slash_down", 15000, 0, 0, "SL_downMoveProcess");
	Request("Slash_down", Start);
	SetAlias("Slash_down","Slash_down");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_downMoveProcess
function SL_downMoveProcess(){

	begin:
	$slash_nameF=1;

	while($slash_nameF<8){

		if($slash_nameF<8){
		$前ナット名1="@slashD"+$slash_nameF;
		$slash_nameF++;
		}
		if($SpeedNumV1<8){
		$現ナット名1="@slashD"+$slash_nameF;
		}
		Fade("$現ナット名1", 0, 1000, null, true);
		Fade("$前ナット名1", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//下から上
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_up
function SL_up(SlashupX,SlashupY,SlashupZoom){

	$slashup_name=1;

	while($slashup_name<8){

		$ナット名1="slashU"+$slashup_name;

		$画像="cg/anime/slash02a_0"+$slashup_name+".png";

		CreateTexture($ナット名1, 3000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashupZoom, SlashupZoom, null, true);
		Move($ナット名1, 0, SlashupX, SlashupY, null, true);
		$slashup_name++:
	}

}

/*===============*/
...//優先度変更
/*===============*/
...//SL_up2
function SL_up2($SLUPri,SlashupX,SlashupY,SlashupZoom){

	$slashup_name=1;

	while($slashup_name<8){

		$ナット名1="slashU"+$slashup_name;

		$画像="cg/anime/slash02a_0"+$slashup_name+".png";

		CreateTexture($ナット名1, $SLUPri, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashupZoom, SlashupZoom, null, true);
		Move($ナット名1, 0, SlashupX, SlashupY, null, true);
		$slashup_name++:
	}

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_upfade2
function SL_upfade2($SLD_TIME){

	$slash_nameFup=1;
	$SLD_TIME = $SLD_TIME+1;

	while($slash_nameFup<8){

		if($slash_nameFup<8){$前ナット名1U="@slashU"+$slash_nameFup;$slash_nameFup++;}
		if($slash_nameFup<8){$現ナット名1U="@slashU"+$slash_nameFup;}
		Fade("$現ナット名1U", 0, 1000, null, true);
		Fade("$前ナット名1U", 0, 0, null, false);
		Wait($SLD_TIME);
	}
	Request("@slashU*", Disused);
}

//――――――――――――――――――――――――――――――――――――――//
...//SL_upfade
function SL_upfade($SLD_TIME){

	CreateProcess("Slash_up", 150, 0, 0, "SL_upMoveProcess");
	Request("Slash_up", Start);
	SetAlias("Slash_up","Slash_up");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_upMoveProcess
function SL_upMoveProcess(){

	begin:

	$slash_nameFup=1;

	while($slash_nameFup<8){

		if($slash_nameFup<8){
		$前ナット名1U="@slashU"+$slash_nameFup;
		$slash_nameFup++;
		}
		if($slash_nameFup<8){
		$現ナット名1U="@slashU"+$slash_nameFup;
		}
		Fade("$現ナット名1U", 0, 1000, null, true);
		Fade("$前ナット名1U", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//左から右
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_right
function SL_right(SlashrightX,SlashrightY,SlashrightZoom){

	$slashright_name=1;

	while($slashright_name<9){

		$ナット名1="slashR"+$slashright_name;

		$画像="cg/anime/slash12a_0"+$slashright_name+".png";

		CreateTexture($ナット名1, 3000, Center, Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashrightZoom, SlashrightZoom, null, true);
		Move($ナット名1, 0, SlashrightX, SlashrightY, null, true);
		$slashright_name++:
	}

}

/*===============*/
...//優先度変更
/*===============*/
...//SL_right2
function SL_right2($SLRPri,SlashrightX,SlashrightY,SlashrightZoom){

	$slashright_name=1;

	while($slashright_name<9){

		$ナット名1="slashR"+$slashright_name;

		$画像="cg/anime/slash12a_0"+$slashright_name+".png";

		CreateTexture($ナット名1, $SLRPri, Center, Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashrightZoom, SlashrightZoom, null, true);
		Move($ナット名1, 0, SlashrightX, SlashrightY, null, true);
		$slashright_name++:
	}

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightfade2
function SL_rightfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFright=1;

	while($slash_nameFright<9){
		if($slash_nameFright<9){$前ナット名1R="@slashR"+$slash_nameFright;$slash_nameFright++;}
		if($slash_nameFright<9){$現ナット名1R="@slashR"+$slash_nameFright;}
		Fade("$現ナット名1R", 0, 1000, null, true);
		Fade("$前ナット名1R", 0, 0, null, false);
		Wait($SLD_TIME);
	}

	Request("@slashR*", Disused);
}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightfade
function SL_rightfade($SLD_TIME){

	CreateProcess("Slash_right", 150, 0, 0, "SL_rightMoveProcess");
	Request("Slash_right", Start);
	SetAlias("Slash_right","Slash_right");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightMoveProcess
function SL_rightMoveProcess(){

	begin:

	$slash_nameFright=1;

	while($slash_nameFright<9){

		if($slash_nameFright<9){
		$前ナット名1R="@slashR"+$slash_nameFright;
		$slash_nameFright++;
		}
		if($slash_nameFright<9){
		$現ナット名1R="@slashR"+$slash_nameFright;
		}
		Fade("$現ナット名1R", 0, 1000, null, true);
		Fade("$前ナット名1R", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//右から左
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_left
function SL_left(SlashleftX,SlashleftY,SlashleftZoom){

	$slashleft_name=1;

	while($slashleft_name<9){

		$ナット名1="slashL"+$slashleft_name;

		$画像="cg/anime/slash11a_0"+$slashleft_name+".png";

		CreateTexture($ナット名1, 3000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashleftZoom, SlashleftZoom, null, true);
		Move($ナット名1, 0, SlashleftX, SlashleftY, null, true);
		$slashleft_name++:
	}

}

/*===============*/
...//優先度変更
/*===============*/
...//SL_left2
function SL_left2($SLLPri,SlashleftX,SlashleftY,SlashleftZoom){

	$slashleft_name=1;

	while($slashleft_name<9){

		$ナット名1="slashL"+$slashleft_name;

		$画像="cg/anime/slash11a_0"+$slashleft_name+".png";

		CreateTexture($ナット名1, $SLLPri, Center,Middle, $画像);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashleftZoom, SlashleftZoom, null, true);
		Move($ナット名1, 0, SlashleftX, SlashleftY, null, true);
		$slashleft_name++:
	}

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_leftfade2
function SL_leftfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;
	$slash_nameFleft=1;

	while($slash_nameFleft<9){
		if($slash_nameFleft<9){$前ナット名1L="@slashL"+$slash_nameFleft;$slash_nameFleft++;}
		if($slash_nameFleft<9){$現ナット名1L="@slashL"+$slash_nameFleft;}
		Fade("$現ナット名1L", 0, 1000, null, true);
		Fade("$前ナット名1L", 0, 0, null, false);
		Wait($SLD_TIME);
	}

	Request("@slashL*", Disused);
}

//――――――――――――――――――――――――――――――――――――――//
...//SL_leftfade
function SL_leftfade($SLD_TIME){

	CreateProcess("Slash_left", 150, 0, 0, "SL_leftMoveProcess");
	Request("Slash_left", Start);
	SetAlias("Slash_left","Slash_left");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_leftMoveProcess
function SL_leftMoveProcess(){

	begin:

	$slash_nameFleft=1;

	while($slash_nameFleft<9){

		if($slash_nameFleft<9){
		$前ナット名1L="@slashL"+$slash_nameFleft;
		$slash_nameFleft++;
		}
		if($slash_nameFleft<9){
		$現ナット名1L="@slashL"+$slash_nameFleft;
		}
		Fade("$現ナット名1L", 0, 1000, null, true);
		Fade("$前ナット名1L", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//左上から右下
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdown
function SL_rightdown(SlashrightdownX,SlashrightdownY,SlashrightdownZoom){

	$slashrightdown_name=1;

	while($slashrightdown_name<9){

		$ナット名1="slashRD"+$slashrightdown_name;

		$画像="cg/anime/slash05a_0"+$slashrightdown_name+".png";

		CreateTexture($ナット名1, 3000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashrightdownZoom, SlashrightdownZoom, null, true);
		Move($ナット名1, 0, SlashrightdownX, SlashrightdownY, null, true);
		$slashrightdown_name++:
	}



}

/*===============*/
...//優先度変更
/*===============*/
...//SL_rightdown2
function SL_rightdown2($SRDPri,SlashrightdownX,SlashrightdownY,SlashrightdownZoom){

	$slashrightdown_name=1;

	while($slashrightdown_name<9){

		$ナット名1="slashRD"+$slashrightdown_name;

		$画像="cg/anime/slash05a_0"+$slashrightdown_name+".png";

		CreateTexture($ナット名1, $SRDPri, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashrightdownZoom, SlashrightdownZoom, null, true);
		Move($ナット名1, 0, SlashrightdownX, SlashrightdownY, null, true);
		$slashrightdown_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdownfade2
function SL_rightdownfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;
	$slash_nameFrightdown=1;

	while($slash_nameFrightdown<9){
		if($slash_nameFrightdown<9){$前ナット名1RD="@slashRD"+$slash_nameFrightdown;$slash_nameFrightdown++;}
		if($slash_nameFrightdown<9){$現ナット名1RD="@slashRD"+$slash_nameFrightdown;}
		Fade("$現ナット名1RD", 0, 1000, null, true);
		Fade("$前ナット名1RD", 0, 0, null, false);
		Wait($SLD_TIME);
	}

	Request("@slashRD*", Disused);
}

//??????????????????????????????????????//
...//SL_rightdownfade
function SL_rightdownfade($SLD_TIME){

	CreateProcess("Slash_rightdown", 150, 0, 0, "SL_rightdownMoveProcess");
	Request("Slash_rightdown", Start);
	SetAlias("Slash_rightdown","Slash_rightdown");

}

//??????????????????????????????????????//
...//SL_rightdownMoveProcess
function SL_rightdownMoveProcess(){

	begin:

	$slash_nameFrightdown=1;

	while($slash_nameFrightdown<9){

		if($slash_nameFrightdown<9){
		$前ナット名1RD="@slashRD"+$slash_nameFrightdown;
		$slash_nameFrightdown++;
		}
		if($slash_nameFrightdown<9){
		$現ナット名1RD="@slashRD"+$slash_nameFrightdown;
		}
		Fade("$現ナット名1RD", 0, 1000, null, true);
		Fade("$前ナット名1RD", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//左下から右上【09/01/27修正】
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_leftup
function SL_leftup(SlashrightupX,SlashrightupY,SlashrightupZoom){

	$slashrightup_name=1;

	while($slashrightup_name<9){

		$ナット名1="slashRU"+$slashrightup_name;

		$画像="cg/anime/slash07a_0"+$slashrightup_name+".png";

		CreateTexture($ナット名1, 3000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashrightupZoom, SlashrightupZoom, null, true);
		Move($ナット名1, 0, SlashrightupX, SlashrightupY, null, true);
		$slashrightup_name++:
	}

}

/*===============*/
...//優先度変更
/*===============*/
...//SL_leftup2
function SL_leftup2($SLLUPri,SlashrightupX,SlashrightupY,SlashrightupZoom){

	$slashrightup_name=1;

	while($slashrightup_name<9){

		$ナット名1="slashRU"+$slashrightup_name;

		$画像="cg/anime/slash07a_0"+$slashrightup_name+".png";

		CreateTexture($ナット名1, $SLLUPri, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashrightupZoom, SlashrightupZoom, null, true);
		Move($ナット名1, 0, SlashrightupX, SlashrightupY, null, true);
		$slashrightup_name++:
	}

}


//――――――――――――――――――――――――――――――――――――――//
...//SL_leftupfade2
function SL_leftupfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFrightup=1;

	while($slash_nameFrightup<9){
		if($slash_nameFrightup<9){$前ナット名1RU="@slashRU"+$slash_nameFrightup;$slash_nameFrightup++;}
		if($slash_nameFrightup<9){$現ナット名1RU="@slashRU"+$slash_nameFrightup;}
		Fade("$現ナット名1RU", 0, 1000, null, true);
		Fade("$前ナット名1RU", 0, 0, null, false);
		Wait($SLD_TIME);
	}
	Request("@slashRU*", Disused);
}

//――――――――――――――――――――――――――――――――――――――//
...//SL_leftupfade
function SL_leftupfade($SLD_TIME){

	CreateProcess("Slash_leftup", 150, 0, 0, "SL_leftupMoveProcess");
	Request("Slash_leftup", Start);
	SetAlias("Slash_leftup","Slash_leftup");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_leftupMoveProcess
function SL_leftupMoveProcess(){

	begin:

	$slash_nameFrightup=1;

	while($slash_nameFrightup<9){

		if($slash_nameFrightup<9){
		$前ナット名1RU="@slashRU"+$slash_nameFrightup;
		$slash_nameFrightup++;
		}
		if($slash_nameFrightup<9){
		$現ナット名1RU="@slashRU"+$slash_nameFrightup;
		}
		Fade("$現ナット名1RU", 0, 1000, null, true);
		Fade("$前ナット名1RU", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//右上から左下
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_leftdown
function SL_leftdown(SlashleftdownX,SlashleftdownY,SlashleftdownZoom){

	$slashleftdown_name=1;

	while($slashleftdown_name<9){

		$ナット名1="slashLD"+$slashleftdown_name;

		$画像="cg/anime/slash03a_0"+$slashleftdown_name+".png";

		CreateTexture($ナット名1, 3000, Center,middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashleftdownZoom, SlashleftdownZoom, null, true);
		Move($ナット名1, 0, SlashleftdownX, SlashleftdownY, null, true);
		$slashleftdown_name++:
	}



}

/*===============*/
...//優先度変更
/*===============*/
...//SL_leftdown2
function SL_leftdown2($SLLDPri,SlashleftdownX,SlashleftdownY,SlashleftdownZoom){

	$slashleftdown_name=1;

	while($slashleftdown_name<9){

		$ナット名1="slashLD"+$slashleftdown_name;

		$画像="cg/anime/slash03a_0"+$slashleftdown_name+".png";

		CreateTexture($ナット名1, $SLLDPri, Center,middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashleftdownZoom, SlashleftdownZoom, null, true);
		Move($ナット名1, 0, SlashleftdownX, SlashleftdownY, null, true);
		$slashleftdown_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_leftdownfade2
function SL_leftdownfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFleftdown=1;

	while($slash_nameFleftdown<9){

		if($slash_nameFleftdown<9){
		$前ナット名1LD="@slashLD"+$slash_nameFleftdown;
		$slash_nameFleftdown++;
		}
		if($slash_nameFleftdown<9){
		$現ナット名1LD="@slashLD"+$slash_nameFleftdown;
		}
		Fade("$現ナット名1LD", 0, 1000, null, true);
		Fade("$前ナット名1LD", 0, 0, null, false);
		Wait($SLD_TIME);
	}
	Request("@slashLD*", Disused);
}

//??????????????????????????????????????//
...//SL_leftdownfade
function SL_leftdownfade($SLD_TIME){

	CreateProcess("Slash_leftdown", 150, 0, 0, "SL_leftdownMoveProcess");
	Request("Slash_leftdown", Start);
	SetAlias("Slash_leftdown","Slash_leftdown");

}

//??????????????????????????????????????//
...//SL_leftdownMoveProcess
function SL_leftdownMoveProcess(){

	begin:

	$slash_nameFleftdown=1;

	while($slash_nameFleftdown<9){

		if($slash_nameFleftdown<9){
		$前ナット名1LD="@slashLD"+$slash_nameFleftdown;
		$slash_nameFleftdown++;
		}
		if($slash_nameFleftdown<9){
		$現ナット名1LD="@slashLD"+$slash_nameFleftdown;
		}
		Fade("$現ナット名1LD", 0, 1000, null, true);
		Fade("$前ナット名1LD", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//右下から左上【09/01/27修正】
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_rightup
function SL_rightup(SlashleftupX,SlashleftupY,SlashleftupZoom){

	$slashleftup_name=1;

	while($slashleftup_name<9){

		$ナット名1="slashLU"+$slashleftup_name;

		$画像="cg/anime/slash08a_0"+$slashleftup_name+".png";

		CreateTexture($ナット名1, 3000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashleftupZoom, SlashleftupZoom, null, true);
		Move($ナット名1, 0, SlashleftupX, SlashleftupY, null, true);
		$slashleftup_name++:
	}



}

/*===============*/
...//優先度変更
/*===============*/
...//SL_rightup2
function SL_rightup2($SLRUPri,SlashleftupX,SlashleftupY,SlashleftupZoom){

	$slashleftup_name=1;

	while($slashleftup_name<9){

		$ナット名1="slashLU"+$slashleftup_name;

		$画像="cg/anime/slash08a_0"+$slashleftup_name+".png";

		CreateTexture($ナット名1, $SLRUPri, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashleftupZoom, SlashleftupZoom, null, true);
		Move($ナット名1, 0, SlashleftupX, SlashleftupY, null, true);
		$slashleftup_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightupfade2
function SL_rightupfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFleftup=1;

	while($slash_nameFleftup<9){

		if($slash_nameFleftup<9){
		$前ナット名1LU="@slashLU"+$slash_nameFleftup;
		$slash_nameFleftup++;
		}
		if($slash_nameFleftup<9){
		$現ナット名1LU="@slashLU"+$slash_nameFleftup;
		}
		Fade("$現ナット名1LU", 0, 1000, null, true);
		Fade("$前ナット名1LU", 0, 0, null, false);
		Wait($SLD_TIME);
	}
	Request("@slashLU*", Disused);
}

//――――――――――――――――――――――――――――――――――――――//
...//SL_leftupfade
function SL_rightupfade($SLD_TIME){

	CreateProcess("Slash_rightup", 150, 0, 0, "SL_rightupMoveProcess");
	Request("Slash_rightup", Start);
	SetAlias("Slash_rightup","Slash_rightup");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightupMoveProcess
function SL_rightupMoveProcess(){

	begin:

	$slash_nameFleftup=1;

	while($slash_nameFleftup<9){

		if($slash_nameFleftup<9){
		$前ナット名1LU="@slashLU"+$slash_nameFleftup;
		$slash_nameFleftup++;
		}
		if($slash_nameFleftup<9){
		$現ナット名1LU="@slashLU"+$slash_nameFleftup;
		}
		Fade("$現ナット名1LU", 0, 1000, null, true);
		Fade("$前ナット名1LU", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}


//============//
..//手前から奥
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_centerout
function SL_centerout(SlashcenteroutX,SlashcenteroutY,SlashcenteroutZoom){

	$slashcenterout_name=1;

	while($slashcenterout_name<10){

		$ナット名1="slashCO"+$slashcenterout_name;

		$画像="cg/anime/slash09a_0"+$slashcenterout_name+".png";

		CreateTexture($ナット名1, 3000, Center, Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashcenteroutZoom, SlashcenteroutZoom, null, true);
		Move($ナット名1, 0, SlashcenteroutX, SlashcenteroutY, null, true);
		$slashcenterout_name++:
	}



}

/*===============*/
...//優先度変更
/*===============*/
...//SL_centerout2
function SL_centerout2($SLCOPri,SlashcenteroutX,SlashcenteroutY,SlashcenteroutZoom){

	$slashcenterout_name=1;

	while($slashcenterout_name<10){

		$ナット名1="slashCO"+$slashcenterout_name;

		$画像="cg/anime/slash09a_0"+$slashcenterout_name+".png";

		CreateTexture($ナット名1, $SLCOPri, Center, Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashcenteroutZoom, SlashcenteroutZoom, null, true);
		Move($ナット名1, 0, SlashcenteroutX, SlashcenteroutY, null, true);
		$slashcenterout_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_centeroutfade2
function SL_centeroutfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFcenterout=1;

	while($slash_nameFcenterout<10){
		if($slash_nameFcenterout<10){$前ナット名1CO="@slashCO"+$slash_nameFcenterout;$slash_nameFcenterout++;}
		if($slash_nameFcenterout<10){$現ナット名1CO="@slashCO"+$slash_nameFcenterout;}
		Fade("$現ナット名1CO", 0, 1000, null, true);
		Fade("$前ナット名1CO", 0, 0, null, false);
		Wait($SLD_TIME);
	}

	Request("@slashCO*", Disused);

}

//??????????????????????????????????????//
...//SL_centeroutfade
function SL_centeroutfade($SLD_TIME){

	CreateProcess("Slash_centerout", 150, 0, 0, "SL_centeroutMoveProcess");
	Request("Slash_centerout", Start);
	SetAlias("Slash_centerout","Slash_centerout");

}

//??????????????????????????????????????//
...//SL_centeroutMoveProcess
function SL_centeroutMoveProcess(){

	begin:

	$slash_nameFcenterout=1;

	while($slash_nameFcenterout<10){

		if($slash_nameFcenterout<10){
		$前ナット名1CO="@slashCO"+$slash_nameFcenterout;
		$slash_nameFcenterout++;
		}
		if($slash_nameFcenterout<10){
		$現ナット名1CO="@slashCO"+$slash_nameFcenterout;
		}
		Fade("$現ナット名1CO", 0, 1000, null, true);
		Fade("$前ナット名1CO", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//奥から手前
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_centerin
function SL_centerin(SlashcenterinX,SlashcenterinY,SlashcenterinZoom){

	$slashcenterin_name=1;

	while($slashcenterin_name<10){

		$ナット名1="slashCI"+$slashcenterin_name;

		$画像="cg/anime/slash10a_0"+$slashcenterin_name+".png";

		CreateTexture($ナット名1, 3000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashcenterinZoom, SlashcenterinZoom, null, true);
		Move($ナット名1, 0, SlashcenterinX, SlashcenterinY, null, true);
		$slashcenterin_name++:
	}



}

/*===============*/
...//優先度変更
/*===============*/
...//SL_centerin2
function SL_centerin2($SLCIPri,SlashcenterinX,SlashcenterinY,SlashcenterinZoom){

	$slashcenterin_name=1;

	while($slashcenterin_name<10){

		$ナット名1="slashCI"+$slashcenterin_name;

		$画像="cg/anime/slash10a_0"+$slashcenterin_name+".png";

		CreateTexture($ナット名1, $SLCIPri, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashcenterinZoom, SlashcenterinZoom, null, true);
		Move($ナット名1, 0, SlashcenterinX, SlashcenterinY, null, true);
		$slashcenterin_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_centerinfade2
function SL_centerinfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;
	$slash_nameFcenterin=1;

	while($slash_nameFcenterin<10){
		if($slash_nameFcenterin<10){$前ナット名1CI="@slashCI"+$slash_nameFcenterin;$slash_nameFcenterin++;}
		if($slash_nameFcenterin<10){$現ナット名1CI="@slashCI"+$slash_nameFcenterin;}
		Fade("$現ナット名1CI", 0, 1000, null, true);
		Fade("$前ナット名1CI", 0, 0, null, false);
		Wait($SLD_TIME);
	}
	Request("@slashCI*", Disused);
}


//??????????????????????????????????????//
...//SL_centerinfade
function SL_centerinfade($SLD_TIME){

	CreateProcess("Slash_centerin", 150, 0, 0, "SL_centerinMoveProcess");
	Request("Slash_centerin", Start);
	SetAlias("Slash_centerin","Slash_centerin");

}

//??????????????????????????????????????//
...//SL_centerinMoveProcess
function SL_centerinMoveProcess(){

	begin:

	$slash_nameFcenterin=1;

	while($slash_nameFcenterin<10){

		if($slash_nameFcenterin<10){
		$前ナット名1CI="@slashCI"+$slash_nameFcenterin;
		$slash_nameFcenterin++;
		}
		if($slash_nameFcenterin<10){
		$現ナット名1CI="@slashCI"+$slash_nameFcenterin;
		}
		Fade("$現ナット名1CI", 0, 1000, null, true);
		Fade("$前ナット名1CI", 0, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//血しぶき前から
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_centerdam
function SL_centerdam(SlashcenterDamX,SlashcenterDamY,SlashcenterDamZoom){

	$slashcenterDam_name=1;

	while($slashcenterDam_name<16){

		$ナット名1="bloodC"+$slashcenterDam_name;

		$画像="cg/anime/blood01a_"+$slashcenterDam_name+".png";

		CreateTexture($ナット名1, 14000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashcenterDamZoom, SlashcenterDamZoom, null, true);
		Move($ナット名1, 0, SlashcenterDamX, SlashcenterDamY, null, true);
		$slashcenterDam_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_centerdamfade2
function SL_centerdamfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFcenterDam=1;

	while($slash_nameFcenterDam<=15){
		if($slash_nameFcenterDam<=15){
			$前ナット名1BC="@bloodC"+$slash_nameFcenterDam;
			$slash_nameFcenterDam++;
		}
		if($slash_nameFcenterDam<=15){
			$現ナット名1BC="@bloodC"+$slash_nameFcenterDam;
		}

			Fade("$現ナット名1BC", 0, 1000, null, true);
			Fade("$前ナット名1BC", 10, 0, null, false);
			Wait($SLD_TIME);
//			WaitKey();
	}
	Move("@bloodC1", 500, @0, @+10, null, false);
	Move("@bloodC5", 500, @0, @+10, null, false);
	Move("@bloodC10", 500, @0, @+20, null, false);
	Move("@bloodC15", 500, @0, @+10, null, false);
	Fade("@bloodC*", 300, 0, null, true);
	Request("@bloodC*", Disused);

}


//??????????????????????????????????????//
...//SL_centerdamfade
function SL_centerdamfade($SLD_TIME){

	CreateProcess("Blood_centerDam", 150, 0, 0, "SL_centerdamMoveProcess");
	Request("Blood_centerDam", Start);
	SetAlias("Blood_centerDam","Slash_centerDam");

}

//??????????????????????????????????????//
...//SL_centerdamMoveProcess
function SL_centerdamMoveProcess(){

	begin:

	$slash_nameFcenterDam=1;

	while($slash_nameFcenterDam<16){

		if($slash_nameFcenterDam<16){
		$前ナット名1BC="@bloodC"+$slash_nameFcenterDam;
		$slash_nameFcenterDam++;
		}
		if($slash_nameFcenterDam<16){
		$現ナット名1BC="@bloodC"+$slash_nameFcenterDam;
		}
		Fade("$現ナット名1BC", 0, 1000, null, true);
		Fade("$前ナット名1BC", 10, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//血しぶき左下
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_leftdam
function SL_leftdam(SlashleftDamX,SlashleftDamY,SlashleftDamZoom){

	$slashleftDam_name=1;

	while($slashleftDam_name<15){

		$ナット名1="bloodL"+$slashleftDam_name;

		$画像="cg/anime/blood02a_"+$slashleftDam_name+".png";

		CreateTexture($ナット名1, 14000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashleftDamZoom, SlashleftDamZoom, null, true);
		Move($ナット名1, 0, SlashleftDamX, SlashleftDamY, null, true);
		$slashleftDam_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_leftdamfade2
function SL_leftdamfade2($SLD_TIME)
{

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFleftDam=1;

	while($slash_nameFleftDam<16){

		if($slash_nameFleftDam<16){
		$前ナット名1BL="@bloodL"+$slash_nameFleftDam;
		$slash_nameFleftDam++;
		}
		if($slash_nameFleftDam<16){
		$現ナット名1BL="@bloodL"+$slash_nameFleftDam;
		}
		Fade("$現ナット名1BL", 0, 1000, null, true);
		Fade("$前ナット名1BL", 10, 0, null, false);
		Wait($SLD_TIME);
	}
//	Move("@bloodL10", 500, @0, @+30, null, false);
//	Move("@bloodL15", 500, @0, @+20, null, false);
	Fade("@bloodL*", 300, 0, null, true);
	Request("@bloodL*", Disused);

}

//??????????????????????????????????????//
...//SL_leftdamfade
function SL_leftdamfade($SLD_TIME){

	CreateProcess("Blood_leftDam", 150, 0, 0, "SL_leftdamMoveProcess");
	Request("Blood_leftDam", Start);
	SetAlias("Blood_leftDam","Slash_leftDam");

}

//??????????????????????????????????????//
...//SL_leftdamMoveProcess
function SL_leftdamMoveProcess(){

	begin:

	$slash_nameFleftDam=1;

	while($slash_nameFleftDam<16){

		if($slash_nameFleftDam<16){
		$前ナット名1BL="@bloodL"+$slash_nameFleftDam;
		$slash_nameFleftDam++;
		}
		if($slash_nameFleftDam<16){
		$現ナット名1BL="@bloodL"+$slash_nameFleftDam;
		}
		Fade("$現ナット名1BL", 0, 1000, null, true);
		Fade("$前ナット名1BL", 10, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//血しぶき右下
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdam
function SL_rightdam(SlashrightDamX,SlashrightDamY,SlashrightDamZoom){

	$slashrightDam_name=1;

	while($slashrightDam_name<15){

		$ナット名1="bloodR"+$slashrightDam_name;

		$画像="cg/anime/blood02b_"+$slashrightDam_name+".png";

		CreateTexture($ナット名1, 14000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetVertex($ナット名1, 512, 388);
		SetAlias($ナット名1,$ナット名1);
		Zoom($ナット名1, 0, SlashrightDamZoom, SlashrightDamZoom, null, true);
		Move($ナット名1, 0, SlashrightDamX, SlashrightDamY, null, true);
		$slashrightDam_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdamfade2
function SL_rightdamfade2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFrightDam=1;

	while($slash_nameFrightDam<16){

		if($slash_nameFrightDam<16){
		$前ナット名1BR="@bloodR"+$slash_nameFrightDam;
		$slash_nameFrightDam++;
		}
		if($slash_nameFrightDam<16){
		$現ナット名1BR="@bloodR"+$slash_nameFrightDam;
		}
		Fade("$現ナット名1BR", 0, 1000, null, true);
		Fade("$前ナット名1BR", 10, 0, null, false);
		Wait($SLD_TIME);
	}

	Move("@bloodR1", 500, @0, @+10, null, false);
	Move("@bloodR5", 500, @0, @+10, null, false);
	Move("@bloodR10", 500, @0, @+20, null, false);
	Move("@bloodR15", 500, @0, @+10, null, false);
	Fade("@bloodR*", 300, 0, null, true);

	Request("@bloodR*", Disused);

}

//??????????????????????????????????????//
...//SL_rightdamfade
function SL_rightdamfade($SLD_TIME){

	CreateProcess("Blood_rightDam", 150, 0, 0, "SL_rightdamMoveProcess");
	Request("Blood_rightDam", Start);
	SetAlias("Blood_rightDam","Slash_rightDam");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdamMoveProcess
function SL_rightdamMoveProcess(){

	begin:

	$slash_nameFrightDam=1;

	while($slash_nameFrightDam<16){

		if($slash_nameFrightDam<16){
		$前ナット名1BR="@bloodR"+$slash_nameFrightDam;
		$slash_nameFrightDam++;
		}
		if($slash_nameFrightDam<16){
		$現ナット名1BR="@bloodR"+$slash_nameFrightDam;
		}
		Fade($現ナット名1BR, 0, 1000, null, true);
		Fade($前ナット名1BR, 10, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//【新規】血しぶき前から
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_centerdamN
function SL_centerdamN(SlashcenterDamX,SlashcenterDamY,SlashcenterDamZoom){

	$slashcenterDam_name=1;

	while($slashcenterDam_name<15){

		$ナット名1="bloodC"+$slashcenterDam_name;

		$画像="cg/anime/Center/bloodA_"+$slashcenterDam_name+".png";

		CreateTexture($ナット名1, 14000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashcenterDamZoom, SlashcenterDamZoom, null, true);
		Move($ナット名1, 0, SlashcenterDamX, SlashcenterDamY, null, true);
		$slashcenterDam_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_centerdamfadeN2
function SL_centerdamfadeN2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFcenterDam=1;

	while($slash_nameFcenterDam<=14){
		if($slash_nameFcenterDam<=14){
			$前ナット名1BC="@bloodC"+$slash_nameFcenterDam;
			$slash_nameFcenterDam++;
		}
		if($slash_nameFcenterDam<=14){
			$現ナット名1BC="@bloodC"+$slash_nameFcenterDam;
		}

			Fade("$現ナット名1BC", 0, 1000, null, true);
			Fade("$前ナット名1BC", 10, 0, null, false);
			Wait($SLD_TIME);
//			WaitKey();
	}
	Move("@bloodC1", 500, @0, @+10, null, false);
	Move("@bloodC5", 500, @0, @+10, null, false);
	Move("@bloodC10", 500, @0, @+20, null, false);
	Move("@bloodC15", 500, @0, @+10, null, false);
	Fade("@bloodC*", 300, 0, null, true);
	Request("@bloodC*", Disused);

}


//??????????????????????????????????????//
...//SL_centerdamfadeN
function SL_centerdamfadeN($SLD_TIME){

	CreateProcess("Blood_centerDam", 150, 0, 0, "SL_centerdamMoveProcessN");
	Request("Blood_centerDam", Start);
	SetAlias("Blood_centerDam","Slash_centerDam");

}

//??????????????????????????????????????//
...//SL_centerdamMoveProcessN
function SL_centerdamMoveProcessN(){

	begin:

	$slash_nameFcenterDam=1;

	while($slash_nameFcenterDam<15){

		if($slash_nameFcenterDam<15){
		$前ナット名1BC="@bloodC"+$slash_nameFcenterDam;
		$slash_nameFcenterDam++;
		}
		if($slash_nameFcenterDam<16){
		$現ナット名1BC="@bloodC"+$slash_nameFcenterDam;
		}
		Fade("$現ナット名1BC", 0, 1000, null, true);
		Fade("$前ナット名1BC", 10, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//【新規】血しぶき左下
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_leftdamN
function SL_leftdamN(SlashleftDamX,SlashleftDamY,SlashleftDamZoom){

	$slashleftDam_name=1;

	while($slashleftDam_name<15){

		$ナット名1="bloodL"+$slashleftDam_name;

		$画像="cg/anime/Left/blood_C_"+$slashleftDam_name+".png";

		CreateTexture($ナット名1, 14000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Zoom($ナット名1, 0, SlashleftDamZoom, SlashleftDamZoom, null, true);
		Move($ナット名1, 0, SlashleftDamX, SlashleftDamY, null, true);
		$slashleftDam_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_leftdamfadeN2
function SL_leftdamfadeN2($SLD_TIME)
{

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFleftDam=1;

	while($slash_nameFleftDam<16){

		if($slash_nameFleftDam<16){
		$前ナット名1BL="@bloodL"+$slash_nameFleftDam;
		$slash_nameFleftDam++;
		}
		if($slash_nameFleftDam<16){
		$現ナット名1BL="@bloodL"+$slash_nameFleftDam;
		}
		Fade("$現ナット名1BL", 0, 1000, null, true);
		Fade("$前ナット名1BL", 10, 0, null, false);
		Wait($SLD_TIME);
	}
//	Move("@bloodL10", 500, @0, @+30, null, false);
//	Move("@bloodL15", 500, @0, @+20, null, false);
	Fade("@bloodL*", 300, 0, null, true);
	Request("@bloodL*", Disused);

}

//??????????????????????????????????????//
...//SL_leftdamfadeN
function SL_leftdamfadeN($SLD_TIME){

	CreateProcess("Blood_leftDam", 150, 0, 0, "SL_leftdamMoveProcessN");
	Request("Blood_leftDam", Start);
	SetAlias("Blood_leftDam","Slash_leftDam");

}

//??????????????????????????????????????//
...//SL_leftdamMoveProcess
function SL_leftdamMoveProcessN(){

	begin:

	$slash_nameFleftDam=1;

	while($slash_nameFleftDam<16){

		if($slash_nameFleftDam<16){
		$前ナット名1BL="@bloodL"+$slash_nameFleftDam;
		$slash_nameFleftDam++;
		}
		if($slash_nameFleftDam<16){
		$現ナット名1BL="@bloodL"+$slash_nameFleftDam;
		}
		Fade("$現ナット名1BL", 0, 1000, null, true);
		Fade("$前ナット名1BL", 10, 0, null, false);
		Wait($SLD_TIME);
	}

}

//============//
..//血しぶき右下
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdamN
function SL_rightdamN(SlashrightDamX,SlashrightDamY,SlashrightDamZoom){

	$slashrightDam_name=1;

	while($slashrightDam_name<15){

		$ナット名1="bloodR"+$slashrightDam_name;

		$画像="cg/anime/Right/blood_B_"+$slashrightDam_name+".png";

		CreateTexture($ナット名1, 14000, Center,Middle, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetVertex($ナット名1, 512, 388);
		SetAlias($ナット名1,$ナット名1);
		Zoom($ナット名1, 0, SlashrightDamZoom, SlashrightDamZoom, null, true);
		Move($ナット名1, 0, SlashrightDamX, SlashrightDamY, null, true);
		$slashrightDam_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdamfadeN2
function SL_rightdamfadeN2($SLD_TIME){

	$SLD_TIME = $SLD_TIME+1;

	$slash_nameFrightDam=1;

	while($slash_nameFrightDam<16){

		if($slash_nameFrightDam<16){
		$前ナット名1BR="@bloodR"+$slash_nameFrightDam;
		$slash_nameFrightDam++;
		}
		if($slash_nameFrightDam<16){
		$現ナット名1BR="@bloodR"+$slash_nameFrightDam;
		}
		Fade("$現ナット名1BR", 0, 1000, null, true);
		Fade("$前ナット名1BR", 10, 0, null, false);
		Wait($SLD_TIME);
	}

	Move("@bloodR1", 500, @0, @+10, null, false);
	Move("@bloodR5", 500, @0, @+10, null, false);
	Move("@bloodR10", 500, @0, @+20, null, false);
	Move("@bloodR15", 500, @0, @+10, null, false);
	Fade("@bloodR*", 300, 0, null, true);

	Request("@bloodR*", Disused);

}

//??????????????????????????????????????//
...//SL_rightdamfadeN
function SL_rightdamfadeN($SLD_TIME){

	CreateProcess("Blood_rightDam", 150, 0, 0, "SL_rightdamMoveProcessN");
	Request("Blood_rightDam", Start);
	SetAlias("Blood_rightDam","Slash_rightDam");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdamMoveProcessN
function SL_rightdamMoveProcessN(){

	begin:

	$slash_nameFrightDam=1;

	while($slash_nameFrightDam<16){

		if($slash_nameFrightDam<16){
		$前ナット名1BR="@bloodR"+$slash_nameFrightDam;
		$slash_nameFrightDam++;
		}
		if($slash_nameFrightDam<16){
		$現ナット名1BR="@bloodR"+$slash_nameFrightDam;
		}
		Fade($現ナット名1BR, 0, 1000, null, true);
		Fade($前ナット名1BR, 10, 0, null, false);
		Wait($SLD_TIME);
	}

}


..//保留
//============//
..//左上から右下(short)
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdownS
function SL_rightdownS($ナット名,SlashrightdownSX,SlashrightdownSY,SlashrightdownZoomS){

	$slashrightdownS_name=1;

	while($slashrightdownS_name<5){

		$ナット名1=$ナット名+$slashrightdownS_name;

		$画像="cg/anime/slash04a_0"+$slashrightdownS_name+".png";

		CreateTexture($ナット名1, 3000, SlashrightdownSX,SlashrightdownSY, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		Move($ナット名1, 0, SlashrightdownSX, SlashrightdownSY, null, true);
		Zoom($ナット名1, 0, SlashrightdownZoomS, SlashrightdownZoomS, null, true);
		$slashrightdownS_name++:

	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdownSfade
function SL_rightdownSfade($SLD_TIME){

	CreateProcess("Slash_rightdownS", 150, 0, 0, "SL_rightdownSMoveProcess");
	Request("Slash_rightdownS", Start);
	SetAlias("Slash_rightdownS","Slash_rightdownS");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightdownSMoveProcess
function SL_rightdownSMoveProcess(){

	$ナット名LDS = "@"+$ナット名;

	begin:

	$slash_nameFrightdownS=1;

	while($slash_nameFrightdownS<9){

		if($slash_nameFrightdownS<9){
		$前ナット名1LDS=$ナット名LDS+$slash_nameFrightdownS;
		$slash_nameFrightdownS++;
		}
		if($slash_nameFrightdownS<9){
		$現ナット名1LDS=$ナット名LDS+$slash_nameFrightdownS
		}
		Fade("$現ナット名1LDS", 0, 1000, null, true);
		Fade("$前ナット名1LDS", 0, 0, null, false);
	}

}

//============//
..//右下から左上(short)
//============//
//――――――――――――――――――――――――――――――――――――――//
...//SL_rightupS
function SL_rightupS($ナット名,SlashrightupSX,SlashrightupSY){

	$slashrightupS_name=1;

	while($slashrightupS_name<9){

		$ナット名1=$ナット名+$slashrightupS_name;

		$画像="cg/anime/slash04a_0"+$slashrightupS_name+".png";

		CreateTexture($ナット名1, 3000, SlashrightupSX,SlashrightupSY, $画像);
		Fade($ナット名1, 0, 0, null, false);
		SetAlias($ナット名1,$ナット名1);
		SetVertex($ナット名1, 512, 388);
		$slashrightupS_name++:
	}



}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightupSfade
function SL_rightupSfade($ナット名){

	CreateProcess("Slash_rightupS", 150, 0, 0, "SL_rightupSMoveProcess");
	Request("Slash_rightupS", Start);
	SetAlias("Slash_rightupS","Slash_rightupS");

}

//――――――――――――――――――――――――――――――――――――――//
...//SL_rightupSMoveProcess
function SL_rightupSMoveProcess(){

	$ナット名LU = "@"+$ナット名;

	begin:

	$slash_nameFrightupS=1;

	while($slash_nameFrightupS<9){

		if($slash_nameFrightupS<9){
		$前ナット名1LUS=$ナット名LU+$slash_nameFrightupS;
		$slash_nameFrightupS++;
		}
		if($slash_nameFrightupS<9){
		$現ナット名1LU=$ナット名LU+$slash_nameFrightupS
		}
		Fade("$現ナット名1LU", 0, 1000, null, true);
		Fade("$前ナット名1LU", 0, 0, null, false);
	}

}

function RailgunFlash(){

	CreateColor("RailgunFlash", 5000, 0, 0, 1024, 576, #99CCFF);
	Fade("RailgunFlash",0,0,null,true);
	SetAlias("RailgunFlash","RailgunFlash");
	Request("RailgunFlash", AddRender);

	CreateProcess("RG_Flash", 1500, 0, 0, "RG_FlashProcess");
	SetAlias("RG_Flash","RG_Flash");
	Request("RG_Flash", Start);

}

function RG_FlashProcess(){

	begin:

	while(1){
	
		Fade("@RailgunFlash", 10, 310, null, true);
		Fade("@RailgunFlash", 100, 0, null, true);
		Fade("@RailgunFlash", 10, 150, null, true);
		Fade("@RailgunFlash", 100, 0, null, true);
		Fade("@RailgunFlash", 10, 500, null, true);
		Fade("@RailgunFlash", 100, 0, null, true);
		Fade("@RailgunFlash", 10, 340, null, true);
		Fade("@RailgunFlash", 100, 0, null, true);
		Fade("@RailgunFlash", 10, 450, null, true);
		Fade("@RailgunFlash", 100, 0, null, true);
	
	
		Wait(1000);
	
		Fade("@RailgunFlash", 10, 600, null, true);
		Fade("@RailgunFlash", 100, 0, null, true);
		Fade("@RailgunFlash", 10, 120, null, true);
		Fade("@RailgunFlash", 100, 0, null, true);
		Fade("@RailgunFlash", 10, 340, null, true);
		Fade("@RailgunFlash", 100, 0, null, true);
		Fade("@RailgunFlash", 10, 500, null, true);
		Fade("@RailgunFlash", 100, 0, null, true);
	
		Wait(1500);
	
	
	}


}

function RG_FlashDelete(){

	Delete("@RG_Flash");
	Delete("@RailgunFlash");


}


.//◆火表現用
..//◆fire01
function fire01()
{

	CreateColor("焚き火光", 2500, 0, 0, 1024, 576, #a44809);
	SetAlias("焚き火光","焚き火光");
//	Request("焚き火光", MulRender);
	Fade("焚き火光", 0, 0, null, false);
	DrawTransition("焚き火光", 0, 100, 250, 200, null, "cg/data/slide_02_00_1.png", true);

	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}

..//◆fire02
function fire02()
{

	CreateColor("焚き火光", 2500, 0, 0, 1024, 576, #a44809);
	SetAlias("焚き火光","焚き火光");
	Fade("焚き火光", 0, 0, null, false);
	DrawTransition("焚き火光", 0, 100, 250, 200, null, "cg/data/circle_11_01_0.png", true);

	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}

..//◆fire03
function fire03()
{

	CreateColor("焚き火光", 2500, 0, 0, 1024, 576, #a44809);
	SetAlias("焚き火光","焚き火光");
	Fade("焚き火光", 0, 0, null, false);
	DrawTransition("焚き火光", 0, 100, 200, 300, null, "cg/data/circle_13_00_0.png", true);

	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}

//==================================//
.//◆backfire01(合当理)
//==================================//
function backfire01()
{

	CreateColor("backfire001", 2500, 0, 0, 1024, 576, #a44809);
	SetAlias("backfire001","backfire001");
//	Request("焚き火光", MulRender);
	Fade("backfire001", 0, 0, null, false);
	DrawTransition("backfire001", 0, 100, 200, 100, null, "cg/data/slide_04_00_1.png", true);

	begin:

	while(1)
	{
	Fade("backfire001",1000,200,null,true);
	Fade("backfire001",1000,150,null,true);
	Fade("backfire001",800,230,null,true);
	Fade("backfire001",1500,100,null,true);
	Fade("backfire001",700,160,null,true);
	Fade("backfire001",1000,150,null,true);

	}


}



.//◆マズルフラッシュ
function MFlash($MFlashTime,$MFlashCount)
{
	CreateColor("MFP", 19999, 0, 0, 1024, 576, "White");
	Fade("MFP", 0, 0, null, true);
	SetAlias("MFP","MFP");
	Request("MFP", AddRender);


	CreateProcess("MFlash", 150, 0, 0, "MFlashProcess");
	SetAlias("MFlash","MFlash");

	Request("MFlash", Start);
	Request("MFlash", Disused);

}

function MFlashProcess(){

	begin:

	$MFlashLoop = true;
	$MFlashLoopC = 0;
	$MFlashLoopW = 5;
	$MFlashLoopWP = Random(4)+3;
	while($MFlashLoop){
		Fade("@MFP", $MFlashTime, 1000, null, true);
		Fade("@MFP", $MFlashTime, 0, null, true);
		if($MFlashLoopC==$MFlashLoopW){
			Wait(1000);
			$MFlashLoopW = $MFlashLoopW+$MFlashLoopWP;
		}
		if($MFlashLoopC==$MFlashCount){$MFlashLoop = false;}
		$MFlashLoopC++;
	}
	Delete("@MFP");
}

.//◆フラッシュ(いろいろランダム版)

function RFlash(){

	CreateColor("RFP", 19999, 0, 0, 1024, 576, "White");
	Fade("RFP", 0, 0, null, true);
	SetAlias("RFP","RFP");
	Request("RFP", AddRender);


	CreateProcess("RFlash", 150, 0, 0, "RFlashProcess");
	SetAlias("RFlash","RFlash");

	Request("RFlash", Start);

}

function RFlashDelete(){

	Request("@RFlash", Stop);
	Fade("@RFP", 200, 0, null, true);
	Request("@RFlash", Disused);
	Delete("@RFP");

}

function RFlashProcess(){

	begin:

	$RFlashLoopW = 2;

	while(1){

	$RFlashLoopF = Random(4)+1;
	$RFlashLoopF = $RFlashLoopF*100;

	$RFlashLoopT = Random(9)+1;
	$RFlashLoopS = $RFlashLoopT*30;
	$RFlashLoopT = $RFlashLoopT*20;


		Fade("@RFP", $RFlashLoopT, $RFlashLoopF, null, true);
		Fade("@RFP", $RFlashLoopT, 0, null, true);
		Wait($RFlashLoopS);

		if($RFlashLoopC==$RFlashLoopW){
			Wait(500);
			$RFlashLoopP = Random(4)+1;
			$RFlashLoopW = $RFlashLoopW+$RFlashLoopP;
		}
		$MFlashLoopC++;
	}
}


/*===============================*/
.//コミカルマーキング
/*===============================*/
..//SetComic
function SetComic($COMIC_X,$COMIC_Y,$マンガ記号){

	if($マンガ記号==1){$ComicIcon = "cg/ef/co01_いらいら.png";}
	else if($マンガ記号==2){$ComicIcon = "cg/ef/co02_うに.png";}
	else if($マンガ記号==3){$ComicIcon = "cg/ef/co03_おはな.png";}
	else if($マンガ記号==4){$ComicIcon = "cg/ef/co04_きらきら.png";}
	else if($マンガ記号==5){$ComicIcon = "cg/ef/co05_ぎゅるぎゅる.png";}
	else if($マンガ記号==6){$ComicIcon = "cg/ef/co06_ばんそうこう.png";}
	else if($マンガ記号==7){$ComicIcon = "cg/ef/co07_びっくり.png";}
	else if($マンガ記号==8){$ComicIcon = "cg/ef/co08_ガーン.png";}
	else if($マンガ記号==9){$ComicIcon = "cg/ef/co09_キ.png";}
	else if($マンガ記号==10){$ComicIcon = "cg/ef/co10_クエスチョン.png";}
	else if($マンガ記号==11){$ComicIcon = "cg/ef/co11_ケラケラ.png";}
	else if($マンガ記号==12){$ComicIcon = "cg/ef/co12_ズーン.png";}
	else if($マンガ記号==13){$ComicIcon = "cg/ef/co13_ハート.png";}
	else if($マンガ記号==14){$ComicIcon = "cg/ef/co14_呪いマース.png";}
	else if($マンガ記号==15){$ComicIcon = "cg/ef/co15_怒り.png";}
	else if($マンガ記号==16){$ComicIcon = "cg/ef/co16_気がついた.png";}
	else if($マンガ記号==17){$ComicIcon = "cg/ef/co17_汗.png";}
	else if($マンガ記号==18){$ComicIcon = "cg/ef/co18_音符.png";}

	DeleteComic();

	$Comic_Name1 = "Comic01";
	$Comic_Name2 = "Comic02";

...//いらいら～
	if($マンガ記号==1){


		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

			SetVertex($Comic_Name1, 50, 100);
			Zoom($Comic_Name1, 0, 0, 0, null, true);
		Move($Comic_Name1, 0, @-30, @-280, null, true);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//うに？
	}else if($マンガ記号==2){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

			SetVertex($Comic_Name1, 50, 50);
			Zoom($Comic_Name1, 0, 0, 0, null, true);
		Move($Comic_Name1, 0, @-75, @-260, null, true);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//おはな～
	}else if($マンガ記号==3){

		CreateTexture($Comic_Name1, 20002, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		Move($Comic_Name1, 0, @-60, @-250, null, true);
		SetVertex($Comic_Name1, 50, 50);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);
		Fade($Comic_Name1, 0, 1000, null, false);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");


...//キラキラ
	}else if($マンガ記号==4){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		Move($Comic_Name1, 0, @-80, @-250, null, true);

		CreateTexture($Comic_Name2, 21000, 0, -1000, $ComicIcon);
		Fade($Comic_Name2, 0, 0, null, true);

		//中央設定
		$ComicH2=512-(ImageHorizon($Comic_Name2)/2);
		$ComicV2=288-(ImageVertical($Comic_Name2)/2);
		Move($Comic_Name2, 0, $ComicH2, $ComicV2, null, true);

		Rotate($Comic_Name2, 0, @0, @0, @180, null,true);
		SetAlias($Comic_Name2,$Comic_Name2);
		Move($Comic_Name2, 0, @-80, @-250, null, true);

//移動距離１
	$COMIC_X_1="@"+$COMIC_X;
	$COMIC_Y_1="@"+$COMIC_Y;

//移動距離２
	$COMIC_X_2=$COMIC_X+20;
	$COMIC_X_2="@"+$COMIC_X_2;
	$COMIC_Y_2=$COMIC_Y-24;
	$COMIC_Y_2="@"+$COMIC_Y_2;

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X_1, $COMIC_Y_1, null, true);

//移動距離の設定２
		Move($Comic_Name2, 0, $COMIC_X_2, @$COMIC_Y_2, null, true);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");



...//ぐるぐる～
	}else if($マンガ記号==5){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		SetVertex($Comic_Name1, 50, 50);
		Zoom($Comic_Name1, 0, 0, 0, null, true);

		Move($Comic_Name1, 0, @0, @-250, null, true);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//ばんそうこう
	}else if($マンガ記号==6){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		SetVertex($Comic_Name1, 50, 50);
		Zoom($Comic_Name1, 0, 800, 800, null, true);
		Move($Comic_Name1, 0, @-30, @-270, null, true);
		Request($Comic_Name1, Smoothing);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//びっくり
	}else if($マンガ記号==7){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);

		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

			SetVertex($Comic_Name1, 50, 100);
			Zoom($Comic_Name1, 0, 0, 0, null, true);

		Move($Comic_Name1, 0, @-70, @-250, null, true);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);
		Fade($Comic_Name1, 0, 1000, null, true);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//ガーン
	}else if($マンガ記号==8){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		Zoom($Comic_Name1, 0, 0, 0, null, true);
//		Rotate($Comic_Name1, 0, @0, @0, @+30, null,true);
		Move($Comic_Name1, 0, @-60, @-255, null, true);
		Request($Comic_Name1, Smoothing);

		$COMIC_Y=$COMIC_Y+5;

		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//キ
	}else if($マンガ記号==9){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetVertex($Comic_Name1, 50, 100);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		Zoom($Comic_Name1, 0, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Move($Comic_Name1, 0, @-60, @-280, null, true);
		Request($Comic_Name1, Smoothing);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//クエスチョンマーク
	}else if($マンガ記号==10){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		SetVertex($Comic_Name1, 50, 100);
		Zoom($Comic_Name1, 0, 0, 0, null, true);
		Move($Comic_Name1, 0, @0, @-290, null, true);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);
		Fade($Comic_Name1, 0, 1000, null, true);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//ケラケラ
	}else if($マンガ記号==11){
		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		CreateTexture($Comic_Name2, 21000, 0, -1000, $ComicIcon);
		Fade($Comic_Name2, 0, 0, null, true);
		Request($Comic_Name2, Hideable);

		Zoom($Comic_Name1, 0, 750, 750, null, true);
		Request($Comic_Name1, Smoothing);

		Rotate($Comic_Name2, 0, @0, @0, @-30, null,true);
		Zoom($Comic_Name2, 0, 750, 750, null, true);
		Request($Comic_Name2, Smoothing);
		SetAlias($Comic_Name2,$Comic_Name2);

		$ComicH=512-(ImageHorizon($Comic_Name2)/2);
		$ComicV=288-(ImageVertical($Comic_Name2)/2);
		Move($Comic_Name2, 0, $ComicH, $ComicV, null, true);

//初期位置
//		$COMIC_X=-50;
//		$COMIC_Y=-268;

//二つ目の位置
//		$COMIC_X2=-59;
//		$COMIC_Y2=-260;

		$COMIC_X2=$COMIC_X-9;
		$COMIC_Y2=$COMIC_Y+8;

		Move($Comic_Name1, 0, @-50, @-268, null, true);
		Move($Comic_Name2, 0, @-59, @-260, null, true);

		$COMIC_X2=$COMIC_X-9;
		$COMIC_Y2=$COMIC_Y+8;

		Move($Comic_Name1, 0, @$COMIC_X, @$COMIC_Y, null, true);
		Move($Comic_Name2, 0, @$COMIC_X2, @$COMIC_Y2, null, true);

		CreateProcess("ComicMove", 1500, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");


...//ズーン
	}else if($マンガ記号==12){
		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		SetVertex($Comic_Name1, 50, 0);
		Zoom($Comic_Name1, 0, 0, 0, null, true);
		Request($Comic_Name1, Smoothing);

		Move($Comic_Name1, 0, @-40, @-240, null, true);


//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		CreateProcess("ComicMove", 150, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//ハート
	}else if($マンガ記号==13){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		Zoom($Comic_Name1, 0, 800, 800, null, true);
		Request($Comic_Name1, Smoothing);

		Move($Comic_Name1, 0, @-70, @-250, null, true);

		Move($Comic_Name1, 0, @$COMIC_X, @$COMIC_Y, null, true);

		$COMIC_Y=$COMIC_Y+30;
		$COMIC_X=$COMIC_X+10;

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		Zoom($Comic_Name1, 0, 0, 0, null, true);

		CreateProcess("ComicMove", 150, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//呪いマース
	}else if($マンガ記号==14){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		Move($Comic_Name1, 0, @-30, @-230, null, true);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);
		Fade($Comic_Name1, 0, 1000, null, true);

...//ムカッ怒りマーク
	}else if($マンガ記号==15){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		Zoom($Comic_Name1, 0, 500, 500, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Smoothing);
		Move($Comic_Name1, 0, @-50, @-260, null, true);

		Move($Comic_Name1, 0, @$COMIC_X, @$COMIC_Y, null, true);

		CreateProcess("ComicMove", 150, 0, 0, "ComicProcess");
		SetAlias("ComicMove","ComicMove");
		Request("ComicMove", Start);

...//気がついた
	}else if($マンガ記号==16){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		SetVertex($Comic_Name1, 50, 100);
		Zoom($Comic_Name1, 0, 0, 0, null, true);
		Request($Comic_Name1, Smoothing);

		Move($Comic_Name1, 0, @-50, @-270, null, true);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		CreateProcess("ComicMove", 150, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//汗
	}else if($マンガ記号==17){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		SetVertex($Comic_Name1, 50, 0);
		Zoom($Comic_Name1, 0, 0, 0, null, true);
		Request($Comic_Name1, Smoothing);

		Move($Comic_Name1, 0, @-50, @-220, null, true);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		CreateProcess("ComicMove", 150, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

...//音符
	}else if($マンガ記号==18){

		CreateTexture($Comic_Name1, 21000, 0, -10000, $ComicIcon);
		Fade($Comic_Name1, 0, 0, null, true);
		SetAlias($Comic_Name1,$Comic_Name1);
		Request($Comic_Name1, Hideable);

		//中央設定
		$ComicH=512-(ImageHorizon($Comic_Name1)/2);
		$ComicV=288-(ImageVertical($Comic_Name1)/2);
		Move($Comic_Name1, 0, $ComicH, $ComicV, null, true);

		Zoom($Comic_Name1, 0, 700, 700, null, true);
		Rotate($Comic_Name1, 0, @0, @0, @+10, null,true);
		SetVertex($Comic_Name1, 50, 0);
		Request($Comic_Name1, Smoothing);

		Move($Comic_Name1, 0, @-50, @-240, null, true);

//移動距離の設定
		Move($Comic_Name1, 0, $COMIC_X, $COMIC_Y, null, true);

		CreateProcess("ComicMove", 150, 0, 0, "ComicProcess");
		Request("ComicMove", Start);
		SetAlias("ComicMove","ComicMove");

	}

}

function DeleteComic(){

	Request("@ComicMove", Stop);
	Request("ComicMove", Stop);
	Fade("@Comic*", 0, 0, null, true);
	Fade("Comic*", 0, 0, null, true);
	Delete("Comic*");
	Delete("@Comic*");
	Delete("@ComicMove");
	Delete("ComicMove");
//	Wait(32);

}

function ComicProcess(){

	Begin:

	Wait(1);

	if($マンガ記号==1){
		$Comic_Name1 = "@Comic01";

		Shake($Comic_Name1, 500, 0, 2, 0, 0, 500, null, false);

		Fade($Comic_Name1, 300, 1000, null, false);
		Zoom($Comic_Name1, 400, 1000, 1000, Dxl1, true);

	}else if($マンガ記号==2){
		$Comic_Name2 = "@Comic01";

		Shake($Comic_Name2, 500, 1, 2, 0, 0, 500, null, false);

		Fade($Comic_Name2, 300, 1000, null, false);
		Zoom($Comic_Name2, 200, 1000, 1000, Dxl1, true);

	}else if($マンガ記号==3){
		$Comic_Name3 = "@Comic01";

		while(1){
		Rotate($Comic_Name3, 2000, @0, @180, 0, null,true);
		Rotate($Comic_Name3, 2000, @0, @-180, 0, null,true);
		}

	}else if($マンガ記号==4){

		$Comic_Name4_1 = "@Comic01";
		$Comic_Name4_2 = "@Comic02";

		Fade($Comic_Name4_1, 100, 1000, null, true);
		Wait(100);
		while(1){
		Fade($Comic_Name4_1, 100, 0, null, false);
		Fade($Comic_Name4_2, 100, 1000, null, true);
		Wait(100);
		Fade($Comic_Name4_2, 100, 0, null, false);
		Fade($Comic_Name4_1, 100, 1000, null, true);
		Wait(100);
		}

	}else if($マンガ記号==5){

		$Comic_Name5 = "@Comic01";

		Fade($Comic_Name5, 300, 1000, null, false);
		Move($Comic_Name5, 400, @0, @-30, null, false);
		Rotate($Comic_Name5, 1500, @0, @0, @360, null,false);
		Zoom($Comic_Name5, 1000, 1000, 1000, Axl1, true);

	}else if($マンガ記号==6){

		$Comic_Name6 = "@Comic01";

		Fade($Comic_Name6, 300, 1000, null, false);

		Shake($Comic_Name6, 500, 2, 2, 0, 0, 500, null, true);

		Wait(2000);

		Fade($Comic_Name6, 2000, 0, null, false);
		Move($Comic_Name6, 5000, @0, @+1800, Axl1, false);
		Rotate($Comic_Name6, 5000, @0, @0, @360, null,true);


	}else if($マンガ記号==7){

		$Comic_Name1 = "@Comic01";

		Fade($Comic_Name1, 300, 1000, Dxl1, false);
		Zoom($Comic_Name1, 300, 1000, 1000, Dxl1, false);

		Wait(250);

		Shake($Comic_Name1, 300, 0, 1, 0, 0, 500, null, true);

	}else if($マンガ記号==8){


		$Comic_Name8 = "@Comic01";

		Fade($Comic_Name8, 300, 1000, null, false);
		Move($Comic_Name8, 0, @0, @-5, null, false);
		Zoom($Comic_Name8, 100, 1000, 1000, null, true);
		Zoom($Comic_Name8, 200, 600, 600, null, true);

	}else if($マンガ記号==9){

		$Comic_Name9 = "@Comic01";

		Fade($Comic_Name9, 300, 1000, null, false);
		Zoom($Comic_Name9, 300, 900, 900, null, true);

	}else if($マンガ記号==10){

		$Comic_Name10 = "@Comic01";

		Fade($Comic_Name10, 200, 1000, null, false);
		Zoom($Comic_Name10, 200, 300, 1000, null, true);
		Zoom($Comic_Name10, 200, 800, 800, null, true);

		Rotate($Comic_Name10, 1000, @0, @0, @+10, null,true);
		while(1){
		Rotate($Comic_Name10, 1000, @0, @0, @-20, null,true);
		Rotate($Comic_Name10, 1000, @0, @0, @+20, null,true);
		}

	}else if($マンガ記号==11){
		$Comic_Name1 = "@Comic01";
		$Comic_Name2 = "@Comic02";

		Fade($Comic_Name1, 100, 1000, null, true);
		Wait(100);
		while(1){
			Fade($Comic_Name1, 100, 0, null, false);
			Fade($Comic_Name2, 100, 1000, null, true);
			Wait(100);
			Fade($Comic_Name2, 100, 0, null, false);
			Fade($Comic_Name1, 100, 1000, null, true);
			Wait(100);
		}
	}else if($マンガ記号==12){
		$Comic_Name12 = "@Comic01";

		Zoom($Comic_Name12, 0, 800, 0, null, true);
		Fade($Comic_Name12, 0, 1000, null, false);
		Zoom($Comic_Name12, 200, 800, 800, null, true);

	}else if($マンガ記号==13){
		$Comic_Name13 = "@Comic01";

		Fade($Comic_Name13, 300, 1000, null, false);
		BezierMove($Comic_Name13, 1000, (@0,@0){@-10,@0}{@+10,@0}{@-10,@0}{@+10,@0}(@-10,@-30), Dxl1, false);
		Zoom($Comic_Name13, 300, 800, 800, null, true);

	}else if($マンガ記号==14){

	}else if($マンガ記号==15){

		$Comic_Name15 = "@Comic01";

		Fade($Comic_Name15, 100, 1000, null, false);

		while(1){
			Zoom($Comic_Name15, 150, 700, 700, Dxl1, true);
			Wait(100);
			Zoom($Comic_Name15, 150, 600, 600, Dxl1, true);
			Wait(100);
		}

	}else if($マンガ記号==16){

		$Comic_Name16 = "@Comic01";

		Fade($Comic_Name16, 200, 1000, null, false);
		Zoom($Comic_Name16, 200, 800, 800, null, true);

		Wait(100);

		Fade($Comic_Name16, 0, 0, null, true);
		Wait(200);
		Fade($Comic_Name16, 0, 1000, null, true);
		Wait(200);
		Fade($Comic_Name16, 0, 0, null, true);
		Wait(200);
		Fade($Comic_Name16, 0, 1000, null, true);

		Wait(1000);
		Fade($Comic_Name16, 300, 0, null, true);

	}else if($マンガ記号==17){

		$Comic_Name17 = "@Comic01";

		Zoom($Comic_Name17, 0, 500, 0, null, true);
		Fade($Comic_Name17, 0, 1000, null, false);
		Zoom($Comic_Name17, 200, 500, 500, null, true);

		Move($Comic_Name17, 4000, @0, @+50, null, false);
		Wait(1000);
		Fade($Comic_Name17, 1000, 0, null, true);

	}else if($マンガ記号==18){

		$Comic_Name18 = "@Comic01";

		Fade($Comic_Name18, 200, 1000, null, false);
		Zoom($Comic_Name18, 200, 800, 800, null, true);

		Rotate($Comic_Name18, 700, @0, @0, @+20, null,true);
		while(1){
			Rotate($Comic_Name18, 1000, @0, @0, @-40, null,true);
			Rotate($Comic_Name18, 1000, @0, @0, @+40, null,true);
		}

	}

}


function FadeComic($Comic_Time,$COMIC_Fade){

}

.//CreateMovieＳＥ連動版
..//MovieSESet
function MovieSESet(優先度,$Movie_FileName,$SE_FileName){

//	LockVideo(true);

	$Movie_FileName = "dx/"+$Movie_FileName+".ngs";
	$SE_FileName = "sound/se/" + $SE_FileName;

	$MovieSE_NatName = "MovieSE";
	$MovieSE_SENatName = "MovieSEName01";


//Out_Def
	CreateMovie($MovieSE_NatName, 優先度, 1024, 0, false, false, $Movie_FileName);
//	Request($MovieSE_NatName, Stop);
	Fade($MovieSE_NatName, 0, 0, null, true);
	SetAlias($MovieSE_NatName,$MovieSE_NatName);
	Move($MovieSE_NatName, 0, 0, 0, null, true);

	CreateSound($MovieSE_SENatName, SE, $SE_FileName);
	SetAlias($MovieSE_SENatName,$MovieSE_SENatName);

//	LockVideo(false);

}

..//MovieSESet_Loop
function MovieSESet_Loop(優先度,$Movie_FileName,$SE_FileName,$Movie_Loop){

//	LockVideo(true);

	$Movie_FileName = "dx/"+$Movie_FileName+".ngs";
	$SE_FileName = "sound/se/" + $SE_FileName;

	$MovieSE_NatName = "MovieSE";
	$MovieSE_SENatName = "MovieSEName01";


//Out_Def
	CreateMovie($MovieSE_NatName, 優先度, 1024, 0, $Movie_Loop, false, $Movie_FileName);

//	Request($MovieSE_NatName, Stop);

	Fade($MovieSE_NatName, 0, 0, null, true);
	SetAlias($MovieSE_NatName,$MovieSE_NatName);
	Move($MovieSE_NatName, 0, 0, 0, null, true);

	CreateSound($MovieSE_SENatName, SE, $SE_FileName);
	SetLoop($MovieSE_SENatName, $Movie_Loop);
	SetAlias($MovieSE_SENatName,$MovieSE_SENatName);

//	LockVideo(false);

}



..//MovieSEStart
function MovieSEStart($MovieSE_PlayWait){

	#play_speed_nowtime = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$MovieSE_NatName_Al = "@MovieSE";
	$MovieSE_SENatName_Al = "@MovieSEName01";

	$Movie_Time = RemainTime($MovieSE_NatName_Al);
	$Movie_Time = $Movie_Time+$MovieSE_PlayWait;

	Request($MovieSE_SENatName_Al, Play);
	Request($MovieSE_NatName_Al, Play);

	WaitAction($MovieSE_NatName_Al, 100);

	Fade($MovieSE_NatName_Al, 0, 1000, null, true);

	if(#SYSTEM_break_play_movie){
		WaitKey($Movie_Time);
		SetVolume($MovieSE_SENatName_Al, 500, 0, null);
		Request($MovieSE_SENatName_Al, Disused);
		Delete($MovieSE_NatName_Al);
	}else{
		WaitPlay($MovieSE_NatName_Al, null);
		Wait($MovieSE_PlayWait);
		SetVolume($MovieSE_SENatName_Al, 1000, 0, null);
		Request($MovieSE_SENatName_Al, Disused);
		Delete($MovieSE_NatName_Al);
	}

	#SYSTEM_play_speed = #play_speed_nowtime;

}

..//MovieSEStart2
function MovieSEStart2(MovieSE_FadeTime,$MovieSE_PlayWait){

	#play_speed_nowtime = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$MovieSE_NatName_Al = "@MovieSE";
	$MovieSE_SENatName_Al = "@MovieSEName01";

	$Movie_Time = RemainTime($MovieSE_NatName_Al);
	$Movie_Time2 = $Movie_Time-500;
	$Movie_Time = $Movie_Time+$MovieSE_PlayWait;

	Request($MovieSE_SENatName_Al, Play);
	Request($MovieSE_NatName_Al, Play);

	WaitAction($MovieSE_NatName_Al, 100);

	Fade($MovieSE_NatName_Al, MovieSE_FadeTime, 1000, null, true);

	if(#SYSTEM_break_play_movie){
		WaitKey($Movie_Time);
		SetVolume($MovieSE_SENatName_Al, 500, 0, null);
		Fade($MovieSE_NatName_Al, MovieSE_FadeTime, 0, null, true);
//		Request($MovieSE_SENatName_Al, Disused);
		Delete($MovieSE_NatName_Al);
	}else{
		WaitPlay($MovieSE_NatName_Al, $Movie_Time2);
		Fade($MovieSE_NatName_Al, MovieSE_FadeTime, 0, null, true);
		Wait($MovieSE_PlayWait);
		SetVolume($MovieSE_SENatName_Al, 500, 0, null);
		Request($MovieSE_SENatName_Al, Disused);
		Delete($MovieSE_NatName_Al);
	}

	#SYSTEM_play_speed = #play_speed_nowtime;

}


.//Shake関連
..//Shake_Delete
function Shake_Delete($Shake_DeleteP,$Shake_DeleteTime,$Shake_Delete_Wait,"素材名"){

	if($Shake_DeleteName==""||$Shake_DeleteName=="Shake_Only10"){$Shake_DeleteName="Shake_Only01";}
	else if($Shake_DeleteName=="Shake_Only01"){$Shake_DeleteName="Shake_Only02";}
	else if($Shake_DeleteName=="Shake_Only02"){$Shake_DeleteName="Shake_Only03";}
	else if($Shake_DeleteName=="Shake_Only03"){$Shake_DeleteName="Shake_Only04";}
	else if($Shake_DeleteName=="Shake_Only04"){$Shake_DeleteName="Shake_Only05";}
	else if($Shake_DeleteName=="Shake_Only05"){$Shake_DeleteName="Shake_Only06";}
	else if($Shake_DeleteName=="Shake_Only06"){$Shake_DeleteName="Shake_Only07";}
	else if($Shake_DeleteName=="Shake_Only07"){$Shake_DeleteName="Shake_Only08";}
	else if($Shake_DeleteName=="Shake_Only08"){$Shake_DeleteName="Shake_Only09";}
	else if($Shake_DeleteName=="Shake_Only09"){$Shake_DeleteName="Shake_Only10";}


	CreateTextureEX($Shake_DeleteName, $Shake_DeleteP, Center, Middle, "素材名");
	Fade($Shake_DeleteName, 0, 1000, null, true);

	$Shake_DeleteWX = Random(5)+1;
	$Shake_DeleteWY = Random(7)+2;

	Shake($Shake_DeleteName, $Shake_DeleteTime, $Shake_DeleteWX, $Shake_DeleteWY, 0, 0, 500, null, $Shake_Delete_Wait);

	Request($Shake_DeleteName, Disused);

}

.//Window関連
..//◆◆◆◆Ｘ座標◆◆◆◆◆
..//WindowXSet
function WindowXSet($CWindow_Pri,$CreateWin_Size){

//入力数値の倍
	$CreateWin_SizeH = $CreateWin_Size*2;
	$CreateWin_SizeFA = 576-$CreateWin_SizeH;

	CreateWindow("絵CutInX", $CWindow_Pri, 0, $CreateWin_Size, 1024, $CreateWin_SizeFA, false);
//	CreateWindow("絵CutInX", $CWindow_Pri, -512, 288, 2048, 1152, false);
	SetAlias("絵CutInX","絵CutInX");

	SetVertex("絵CutInX", 1024, 0);
	Request("絵CutInX",Smoothing);

//黒幕色
	$CWindow_Pri_Back = $CWindow_Pri-1;

	CreateColor("絵CutInBack", $CWindow_Pri_Back, 0, 0, 1024, 576, "Black");
	Fade("絵CutInBack", 0, 0, null, true);
	SetAlias("絵CutInBack","絵CutInBack");

}

..//WindowXSetBG
function WindowXSetBG(優先度,$CW_背景位置X,$CW_背景位置Y,"BG名"){

	if($CreateWinX_NameBG==""||$CreateWinX_NameBG=="絵WinIn05"){$CreateWinX_NameBG="絵WinIn01";}
	else if($CreateWinX_NameBG=="絵WinIn01"){$CreateWinX_NameBG="絵WinIn02";}
	else if($CreateWinX_NameBG=="絵WinIn02"){$CreateWinX_NameBG="絵WinIn03";}
	else if($CreateWinX_NameBG=="絵WinIn03"){$CreateWinX_NameBG="絵WinIn04";}
	else if($CreateWinX_NameBG=="絵WinIn04"){$CreateWinX_NameBG="絵WinIn05";}

	$CreateWinX_NameBGF = "絵CutInX/" + $CreateWinX_NameBG;
	$CreateWinX_NameBGA = "@" + $CreateWinX_NameBG;

	CreateTexture($CreateWinX_NameBGF, $CWindow_Pri, Center, Middle, BG名);
	Fade($CreateWinX_NameBGF, 0, 0, null, true);
	SetAlias($CreateWinX_NameBGF,$CreateWinX_NameBG);

	Move($CreateWinX_NameBGF, 0, $CW_背景位置X,$CW_背景位置Y, null, true);


}

..//ナット名指名用
..//WindowXSetSt2
function WindowXSetSt2($WinXSetSubName,優先度,$CW_St2位置X,$CW_St2位置Y,"St名2"){

	$CreateWinX_Name2 = $WinXSetSubName;

	$CreateWinX_NameF2 = "絵CutInX/" + $CreateWinX_Name2;
	$CreateWinX_NameStA2 = "@" + $CreateWinX_Name2;

	CreateTexture($CreateWinX_NameF2, $CWindow_Pri, Center, Middle, St名2);
	Fade($CreateWinX_NameF2, 0, 0, null, true);
	SetAlias($CreateWinX_NameF2,$CreateWinX_Name2);

	Move($CreateWinX_NameF2, 0, $CW_St2位置X,$CW_St2位置Y, null, true);

}

..//WindowXSetSt
function WindowXSetSt(優先度,$CW_St位置X,$CW_St位置Y,"St名"){

	if($CreateWinX_Name==""||$CreateWinX_Name=="絵WinSt05"){$CreateWinX_Name="絵WinSt01";}
	else if($CreateWinX_Name=="絵WinSt01"){$CreateWinX_Name="絵WinSt02";}
	else if($CreateWinX_Name=="絵WinSt02"){$CreateWinX_Name="絵WinSt03";}
	else if($CreateWinX_Name=="絵WinSt03"){$CreateWinX_Name="絵WinSt04";}
	else if($CreateWinX_Name=="絵WinSt04"){$CreateWinX_Name="絵WinSt05";}

	$CreateWinX_NameF = "絵CutInX/" + $CreateWinX_Name;
	$CreateWinX_NameStA = "@" + $CreateWinX_Name;

	CreateTexture($CreateWinX_NameF, $CWindow_Pri, Center, Middle, St名);
	Fade($CreateWinX_NameF, 0, 0, null, true);
	SetAlias($CreateWinX_NameF,$CreateWinX_Name);

	Move($CreateWinX_NameF, 0, $CW_St位置X,$CW_St位置Y, null, true);

}

function WindowXStChange($StChangeTime,待ち){

	Fade($CreateWinX_NameF2,$StChangeTime,1000,Dxl1,false);
	Fade($CreateWinX_NameF,$StChangeTime,0,Axl1,待ち);

}

..//WindowFadeBG
function WindowFadeBG($CreateWindow_MoveType,$CreateWindow_Time,$CreateWindow_BackFade,$CreateWindow_Speed,$CreateWindow_Wipe,待ってください){


	$CreateWindow_TimeSt = $CreateWindow_Time+200;
	$CreateWindow_Wipe = "cg/data/" + $CreateWindow_Wipe + ".png";

	if($CreateWindow_MoveType == 0){
		$CreateWindow_MoveX01 = "@0";
		$CreateWindow_MoveX02 = "@0";
		$CreateWindow_MoveY01 = "@0";
		$CreateWindow_MoveY02 = "@0";
	}else if($CreateWindow_MoveType == 1){
		$CreateWindow_MoveX01 = "@+100";
		$CreateWindow_MoveX02 = "@-100";
		$CreateWindow_MoveY01 = "@+5";
		$CreateWindow_MoveY02 = "@-5";
	}else if($CreateWindow_MoveType == 2){
		$CreateWindow_MoveX01 = "@-100";
		$CreateWindow_MoveX02 = "@+100";
		$CreateWindow_MoveY01 = "@+5";
		$CreateWindow_MoveY02 = "@-5";
	}else if($CreateWindow_MoveType == 3){
		$CreateWindow_MoveX01 = "@+100";
		$CreateWindow_MoveX02 = "@-100";
		$CreateWindow_MoveY01 = "@-10";
		$CreateWindow_MoveY02 = "@+10";
	}else if($CreateWindow_MoveType == 4){
		$CreateWindow_MoveX01 = "@-100";
		$CreateWindow_MoveX02 = "@+100";
		$CreateWindow_MoveY01 = "@-10";
		$CreateWindow_MoveY02 = "@+5";
	}else if($CreateWindow_MoveType == 10){
		$CreateWindow_MoveX01 = "@+10";
		$CreateWindow_MoveX02 = "@-10";
		$CreateWindow_MoveY01 = "@-50";
		$CreateWindow_MoveY02 = "@+50";
	}else if($CreateWindow_MoveType == 11){
		$CreateWindow_MoveX01 = "@+10";
		$CreateWindow_MoveX02 = "@-10";
		$CreateWindow_MoveY01 = "@+50";
		$CreateWindow_MoveY02 = "@-50";
	}else if($CreateWindow_MoveType == 12){
		$CreateWindow_MoveX01 = "@-10";
		$CreateWindow_MoveX02 = "@+10";
		$CreateWindow_MoveY01 = "@-50";
		$CreateWindow_MoveY02 = "@+50";
	}else if($CreateWindow_MoveType == 13){
		$CreateWindow_MoveX01 = "@+10";
		$CreateWindow_MoveX02 = "@-10";
		$CreateWindow_MoveY01 = "@-50";
		$CreateWindow_MoveY02 = "@+50";
	}

	Move($CreateWinX_NameStA, 0, $CreateWindow_MoveX01, $CreateWindow_MoveY01, null, true);
	Move($CreateWinX_NameStA, $CreateWindow_TimeSt, $CreateWindow_MoveX02, $CreateWindow_MoveY02, Dxl1, false);
	Fade("絵CutInBack", $CreateWindow_Time,$CreateWindow_BackFade,$CreateWindow_Speed, false);
	Fade("@絵CutInX/*", 0, 1000, null, false);
	DrawTransition("@絵CutInX/*", $CreateWindow_Time, 0, 1000, 100, $CreateWindow_Speed, $CreateWindow_Wipe, 待ってください);
//	DrawTransition($CreateWinX_NameBGA, $CreateWindow_Time, 0, 1000, 100, $CreateWindow_Speed, $CreateWindow_Wipe, false);

}

..//WindowXFadeBG_Only
function WindowXFadeBG_Only($WindowX_Time,$WindowX_BackFade,$WindowX_Speed,$WindowX_Wipe,待ってください){


	$WindowX_Wipe = "cg/data/" + $WindowX_Wipe + ".png";

	Fade("絵CutInBack", $WindowX_Time,$WindowX_BackFade,$WindowX_Speed, false);
	Fade($CreateWinX_NameBGA, 0, 1000, null, false);
	DrawTransition($CreateWinX_NameBGA, $WindowX_Time, 0, 1000, 100, $WindowX_Speed, $WindowX_Wipe, 待ってください);
//	DrawTransition($CreateWinX_NameBGA, $WindowY_Time, 0, 1000, 100, $WindowY_Speed, $WindowY_Wipe, false);

}

..//WindowXFadeSt_Only
function WindowXFadeSt_Only($WindowX_Time,$WindowX_BackFade,$WindowX_Speed,待ってください){


	Fade("絵CutInBack", $WindowX_Time,$WindowX_BackFade,$WindowX_Speed, false);
	Fade($CreateWinX_NameStA, $WindowX_Time, 1000, $WindowX_Speed, 待ってください);

}



..//Window_Delete
function Window_WipeDelete($WindowWipeDelete_Time, $WindowWipeDelete_Wipe, 待ってください){

	$WindowWipeDelete_Wipe = "cg/data/" + $WindowWipeDelete_Wipe + ".png";

	CreateProcess("窓消しプロセス", 15000, 0, 0, "Window_Delete_Process");
	SetAlias("窓消しプロセス","窓消しプロセス");

	FadeDelete("絵CutInBack", $WindowWipeDelete_Time, false);

	DrawTransition("@絵CutInX/*", $WindowWipeDelete_Time, 1000, 0, 100, null, $WindowWipeDelete_Wipe, 待ってください);

	Request("窓消しプロセス", Start);
	Request("窓消しプロセス", Disused);

}

..//Window_Delete
function Window_Delete($WindowDelete_Time, 待ってください){

	CreateProcess("窓消しプロセス", 15000, 0, 0, "Window_Delete_Process");
	SetAlias("窓消しプロセス","窓消しプロセス");

	FadeDelete("@絵CutInBack", $WindowDelete_Time, false);
	Fade("@絵CutInX/*", $WindowDelete_Time, 0, null, 待ってください);

	Request("窓消しプロセス", Start);

	Request("窓消しプロセス", Disused);

}

..//Window_Delete_Process
function Window_Delete_Process(){

	begin:

		WaitAction("@絵CutInX/*",null);
		Delete("@絵CutInX/*");
		Delete("@絵CutInX");

}

..//Window_BGMove
function Window_BGMove(時間, x座標, y座標, 速度, 待ち){

	Move($CreateWinX_NameBGA, 時間, x座標, y座標, 速度, 待ち);

}

..//Window_BGZoom
function Window_BGZoom(時間, サイズ, 速度, 待ち){

	Zoom($CreateWinX_NameStA, 時間, サイズ, サイズ, 速度, 待ち);

}

..//Window_StMove
function Window_StMove(時間, x座標, y座標, 速度, 待ち){

	Move($CreateWinX_NameStA, 時間, x座標, y座標, 速度, 待ち);

}

..//Window_StZoom
function Window_StZoom(時間, サイズ, 速度, 待ち){

	Zoom($CreateWinX_NameStA, 時間, サイズ, サイズ, 速度, 待ち);

}

..//◆◆◆◆Ｙ座標◆◆◆◆◆
..//WindowYSet
function WindowYSet($CWindowY_Pri,$CreateWinY1_Size,$CreateWinY2_Size){

	CreateWindow("絵CutInY", $CWindowY_Pri, $CreateWinY1_Size, 0, $CreateWinY2_Size, 576, false);
	SetAlias("絵CutInY","絵CutInY");

//黒幕色
	$CWindowY_Pri_Back = $CWindowY_Pri-1;

	CreateColor("絵CutInYBack", $CWindowY_Pri_Back, 0, 0, 1024, 576, "Black");
	Fade("絵CutInYBack", 0, 0, null, true);
	SetAlias("絵CutInYBack","絵CutInYBack");

}

..//WindowYSetBG
function WindowYSetBG(優先度,$CWY_背景位置X,$CWY_背景位置Y,"BG名"){

	if($CreateWinY_NameBG==""||$CreateWinY_NameBG=="絵WinInY05"){$CreateWinY_NameBG="絵WinInY01";}
	else if($CreateWinY_NameBG=="絵WinInY01"){$CreateWinY_NameBG="絵WinInY02";}
	else if($CreateWinY_NameBG=="絵WinInY02"){$CreateWinY_NameBG="絵WinInY03";}
	else if($CreateWinY_NameBG=="絵WinInY03"){$CreateWinY_NameBG="絵WinInY04";}
	else if($CreateWinY_NameBG=="絵WinInY04"){$CreateWinY_NameBG="絵WinInY05";}

	$CreateWinY_NameBGF = "絵CutInY/" + $CreateWinY_NameBG;
	$CreateWinY_NameBGA = "@" + $CreateWinY_NameBG;

	CreateTexture($CreateWinY_NameBGF, 優先度, Center, Middle, BG名);
	Fade($CreateWinY_NameBGF, 0, 0, null, true);
	SetAlias($CreateWinY_NameBGF,$CreateWinY_NameBG);

	Move($CreateWinY_NameBGF, 0, $CWY_背景位置X,$CWY_背景位置Y, null, true);

}

..//WindowYSetSt
function WindowYSetSt(優先度,$CWY_St位置X,$CWY_St位置Y,"St名"){

	if($CreateWinY_Name==""||$CreateWinY_Name=="絵WinYSt05"){$CreateWinY_Name="絵WinYSt01";}
	else if($CreateWinY_Name=="絵WinYSt01"){$CreateWinY_Name="絵WinYSt02";}
	else if($CreateWinY_Name=="絵WinYSt02"){$CreateWinY_Name="絵WinYSt03";}
	else if($CreateWinY_Name=="絵WinYSt03"){$CreateWinY_Name="絵WinYSt04";}
	else if($CreateWinY_Name=="絵WinYSt04"){$CreateWinY_Name="絵WinYSt05";}

	$CreateWinY_NameF = "絵CutInY/" + $CreateWinY_Name;
	$CreateWinY_NameStA = "@" + $CreateWinY_Name;

	CreateTexture($CreateWinY_NameF, 優先度, Center, Middle, St名);
	Fade($CreateWinY_NameF, 0, 0, null, true);
	SetAlias($CreateWinY_NameF,$CreateWinY_Name);

	Move($CreateWinY_NameF, 0, $CWY_St位置X,$CWY_St位置Y, null, true);

}

..//WindowYFadeBG
function WindowYFadeBG($WindowY_MoveType,$WindowY_Time,$WindowY_BackFade,$WindowY_Speed,$WindowY_Wipe,待ってください){


	$WindowY_TimeSt = $WindowY_Time+200;
	$WindowY_Wipe = "cg/data/" + $WindowY_Wipe + ".png";

	if($WindowY_MoveType == 0){
		$WindowY_MoveX01 = "@0";
		$WindowY_MoveX02 = "@0";
		$WindowY_MoveY01 = "@0";
		$WindowY_MoveY02 = "@0";
	}else if($WindowY_MoveType == 1){
		$WindowY_MoveX01 = "@+100";
		$WindowY_MoveX02 = "@-100";
		$WindowY_MoveY01 = "@+5";
		$WindowY_MoveY02 = "@-5";
	}else if($WindowY_MoveType == 2){
		$WindowY_MoveX01 = "@-100";
		$WindowY_MoveX02 = "@+100";
		$WindowY_MoveY01 = "@+5";
		$WindowY_MoveY02 = "@-5";
	}else if($WindowY_MoveType == 3){
		$WindowY_MoveX01 = "@+100";
		$WindowY_MoveX02 = "@-100";
		$WindowY_MoveY01 = "@-10";
		$WindowY_MoveY02 = "@+10";
	}else if($WindowY_MoveType == 4){
		$WindowY_MoveX01 = "@-100";
		$WindowY_MoveX02 = "@+100";
		$WindowY_MoveY01 = "@-10";
		$WindowY_MoveY02 = "@+5";
	}else if($WindowY_MoveType == 10){
		$WindowY_MoveX01 = "@+10";
		$WindowY_MoveX02 = "@-10";
		$WindowY_MoveY01 = "@-50";
		$WindowY_MoveY02 = "@+50";
	}else if($WindowY_MoveType == 11){
		$WindowY_MoveX01 = "@+10";
		$WindowY_MoveX02 = "@-10";
		$WindowY_MoveY01 = "@+50";
		$WindowY_MoveY02 = "@-50";
	}else if($WindowY_MoveType == 12){
		$WindowY_MoveX01 = "@-10";
		$WindowY_MoveX02 = "@+10";
		$WindowY_MoveY01 = "@-50";
		$WindowY_MoveY02 = "@+50";
	}else if($WindowY_MoveType == 13){
		$WindowY_MoveX01 = "@+10";
		$WindowY_MoveX02 = "@-10";
		$WindowY_MoveY01 = "@-50";
		$WindowY_MoveY02 = "@+50";
	}

	Move($CreateWinY_NameStA, 0, $WindowY_MoveX01, $WindowY_MoveY01, null, true);
	Move($CreateWinY_NameStA, $WindowY_TimeSt, $WindowY_MoveX02, $WindowY_MoveY02, Dxl1, false);
	Fade("絵CutInYBack", $WindowY_Time,$WindowY_BackFade,$WindowY_Speed, false);
	Fade("@絵CutInY/*", 0, 1000, null, false);
	DrawTransition("@絵CutInY/*", $WindowY_Time, 0, 1000, 100, $WindowY_Speed, $WindowY_Wipe, 待ってください);
//	DrawTransition($CreateWinX_NameBGA, $WindowY_Time, 0, 1000, 100, $WindowY_Speed, $WindowY_Wipe, false);

}

..//WindowYFadeBG_Only
function WindowYFadeBG_Only($WindowY_Time,$WindowY_BackFade,$WindowY_Speed,$WindowY_Wipe,待ってください){


	$WindowY_Wipe = "cg/data/" + $WindowY_Wipe + ".png";

	Fade("絵CutInYBack", $WindowY_Time,$WindowY_BackFade,$WindowY_Speed, false);
	Fade($CreateWinY_NameBGA, 0, 1000, null, false);
	DrawTransition($CreateWinY_NameBGA, $WindowY_Time, 0, 1000, 100, $WindowY_Speed, $WindowY_Wipe, 待ってください);
//	DrawTransition($CreateWinX_NameBGA, $WindowY_Time, 0, 1000, 100, $WindowY_Speed, $WindowY_Wipe, false);

}

..//WindowYFadeSt_Only
function WindowYFadeSt_Only($WindowY_Time,$WindowY_BackFade,$WindowY_Speed,待ってください){


	Fade("絵CutInYBack", $WindowY_Time,$WindowY_BackFade,$WindowY_Speed, false);
	Fade($CreateWinY_NameStA, $WindowY_Time, 1000, $WindowY_Speed, 待ってください);

}


..//WindowY_WipeDelete
function WindowY_WipeDelete($WindowYWipeDelete_Time, $WindowYWipeDelete_Wipe, 待ってください){

	$WindowYWipeDelete_Wipe = "cg/data/" + $WindowYWipeDelete_Wipe + ".png";

	CreateProcess("窓消しプロセスY", 15000, 0, 0, "WindowY_Delete_Process");
	SetAlias("窓消しプロセスY","窓消しプロセスY");

	FadeDelete("絵CutInYBack", $WindowYWipeDelete_Time, false);

	DrawTransition("@絵CutInY/*", $WindowYWipeDelete_Time, 1000, 0, 100, null, $WindowYWipeDelete_Wipe, 待ってください);

	Request("窓消しプロセスY", Start);
	Request("窓消しプロセスY", Disused);

}

..//WindowY_Delete
function WindowY_Delete($WindowYDelete_Time, 待ってください){

	CreateProcess("窓消しプロセスY", 15000, 0, 0, "WindowY_Delete_Process");
	SetAlias("窓消しプロセスY","窓消しプロセスY");

	FadeDelete("@絵CutInYBack", $WindowYDelete_Time, false);
	Fade("@絵CutInY/*", $WindowYDelete_Time, 0, null, 待ってください);

	Request("窓消しプロセスY", Start);

	Request("窓消しプロセスY", Disused);

}

..//WindowY_Delete_Process
function WindowY_Delete_Process(){

	begin:

		WaitAction("@絵CutInY/*",null);
		Delete("@絵CutInY/*");
		Delete("@絵CutInY");

}


..//WindowY_BGMove
function WindowY_BGMove(時間, x座標, y座標, 速度, 待ち){

	Move($CreateWinY_NameBGA, 時間, x座標, y座標, 速度, 待ち);

}

..//WindowY_BGZoom
function WindowY_BGZoom(時間, サイズ, 速度, 待ち){

	Zoom($CreateWinX_NameBGA, 時間, サイズ, サイズ, 速度, 待ち);

}

..//WindowY_StMove
function WindowY_StMove(時間, x座標, y座標, 速度, 待ち){

	Move($CreateWinX_NameStA, 時間, x座標, y座標, 速度, 待ち);

}

..//WindowY_StZoom
function WindowY_StZoom(時間, サイズ, 速度, 待ち){

	Zoom($CreateWinX_NameStA, 時間, サイズ, サイズ, 速度, 待ち);

}

//========================================================//
.//雲系
//========================================================//
..//Cloud_Loop
function Cloud_Loop(){

	CreateProcess("Cloud_LoopZoom", 150, 0, 0, "Cloud_LoopZoomProcess");
	CreateProcess("Cloud_LoopFade", 150, 0, 0, "Cloud_LoopFadeProcess");
	Request("Cloud_LoopFade", Start);
	Request("Cloud_LoopZoom", Start);

}

..//Cloud_LoopZoomProcess
function Cloud_LoopZoomProcess(){

	begin:

	while(1){

	Zoom("@絵Cloud01", 10000, 3000, 2000, null, true);
	Zoom("@絵Cloud01", 10000, 3500, 4500, null, true);
	Zoom("@絵Cloud01", 10000, 3500, 4500, null, true);
	Zoom("@絵Cloud01", 10000, 4000, 3500, null, true);

	}

}

..//Cloud_LoopFadeProcess
function Cloud_LoopFadeProcess(){

	begin:

	while(1){

	Fade("@絵Cloud01",5000,300,null,true);
	Fade("@絵Cloud01",5000,500,null,true);
	Fade("@絵Cloud01",5000,700,null,true);
	Fade("@絵Cloud01",5000,300,null,true);
	Fade("@絵Cloud01",5000,500,null,true);
	Fade("@絵Cloud01",5000,700,null,true);

	}

}

//===========================//
.//◆◆探索パート専用マクロ
//===========================//
..//mc02_SearchTime
function mc02_SearchTime(){

//変数初期起動時オン
	if($mc02_Def == true){
		//初期化
		$mc02_TimeCount = 0;
		$mc02_時間 = "　";
		$mc02_Def = false;
	}

	$mc02_TimeCount++;

//◆七時五五分になった→●挿入イベント
//◆八時二分になった→●タイムアップ

	if($mc02_TimeCount == 0){$mc02_時間 = "午前七時五二分";}
	else if($mc02_TimeCount == 1){$mc02_時間 = "午前七時五二分一〇秒";}
	else if($mc02_TimeCount == 2){$mc02_時間 = "午前七時五二分二〇秒";}
	else if($mc02_TimeCount == 3){$mc02_時間 = "午前七時五二分三〇秒";}
	else if($mc02_TimeCount == 4){$mc02_時間 = "午前七時五二分四〇秒";}
	else if($mc02_TimeCount == 5){$mc02_時間 = "午前七時五二分五〇秒";}
	else if($mc02_TimeCount == 6){$mc02_時間 = "午前七時五三分";}
	else if($mc02_TimeCount == 7){$mc02_時間 = "午前七時五三分一〇秒";}
	else if($mc02_TimeCount == 8){$mc02_時間 = "午前七時五三分二〇秒";}
	else if($mc02_TimeCount == 9){$mc02_時間 = "午前七時五三分三〇秒";}
	else if($mc02_TimeCount == 10){$mc02_時間 = "午前七時五三分四〇秒";}
	else if($mc02_TimeCount == 11){$mc02_時間 = "午前七時五三分五〇秒";}
	else if($mc02_TimeCount == 12){$mc02_時間 = "午前七時五四分";}
	else if($mc02_TimeCount == 13){$mc02_時間 = "午前七時五四分一〇秒";}
	else if($mc02_TimeCount == 14){$mc02_時間 = "午前七時五四分二〇秒";}
	else if($mc02_TimeCount == 15){$mc02_時間 = "午前七時五四分三〇秒";}
	else if($mc02_TimeCount == 16){$mc02_時間 = "午前七時五四分四〇秒";}
	else if($mc02_TimeCount == 17){$mc02_時間 = "午前七時五四分五〇秒";}
	else if($mc02_TimeCount == 18){$mc02_時間 = "午前七時五五分";}
	else if($mc02_TimeCount == 19){$mc02_時間 = "午前七時五五分一〇秒";}
	else if($mc02_TimeCount == 20){$mc02_時間 = "午前七時五五分二〇秒";}
	else if($mc02_TimeCount == 21){$mc02_時間 = "午前七時五五分三〇秒";}
	else if($mc02_TimeCount == 22){$mc02_時間 = "午前七時五五分四〇秒";}
	else if($mc02_TimeCount == 23){$mc02_時間 = "午前七時五五分五〇秒";}
	else if($mc02_TimeCount == 24){$mc02_時間 = "午前七時五六分";}
	else if($mc02_TimeCount == 25){$mc02_時間 = "午前七時五六分一〇秒";}
	else if($mc02_TimeCount == 26){$mc02_時間 = "午前七時五六分二〇秒";}
	else if($mc02_TimeCount == 27){$mc02_時間 = "午前七時五六分三〇秒";}
	else if($mc02_TimeCount == 28){$mc02_時間 = "午前七時五六分四〇秒";}
	else if($mc02_TimeCount == 29){$mc02_時間 = "午前七時五六分五〇秒";}
	else if($mc02_TimeCount == 30){$mc02_時間 = "午前七時五七分";}
	else if($mc02_TimeCount == 31){$mc02_時間 = "午前七時五七分一〇秒";}
	else if($mc02_TimeCount == 32){$mc02_時間 = "午前七時五七分二〇秒";}
	else if($mc02_TimeCount == 33){$mc02_時間 = "午前七時五七分三〇秒";}
	else if($mc02_TimeCount == 34){$mc02_時間 = "午前七時五七分四〇秒";}
	else if($mc02_TimeCount == 35){$mc02_時間 = "午前七時五七分五〇秒";}
	else if($mc02_TimeCount == 36){$mc02_時間 = "午前七時五八分";}
	else if($mc02_TimeCount == 37){$mc02_時間 = "午前七時五八分一〇秒";}
	else if($mc02_TimeCount == 38){$mc02_時間 = "午前七時五八分二〇秒";}
	else if($mc02_TimeCount == 39){$mc02_時間 = "午前七時五八分三〇秒";}
	else if($mc02_TimeCount == 40){$mc02_時間 = "午前七時五八分四〇秒";}
	else if($mc02_TimeCount == 41){$mc02_時間 = "午前七時五八分五〇秒";}
	else if($mc02_TimeCount == 42){$mc02_時間 = "午前七時五九分";}
	else if($mc02_TimeCount == 43){$mc02_時間 = "午前七時五九分一〇秒";}
	else if($mc02_TimeCount == 44){$mc02_時間 = "午前七時五九分二〇秒";}
	else if($mc02_TimeCount == 45){$mc02_時間 = "午前七時五九分三〇秒";}
	else if($mc02_TimeCount == 46){$mc02_時間 = "午前七時五九分四〇秒";}
	else if($mc02_TimeCount == 47){$mc02_時間 = "午前七時五九分五〇秒";}
	else if($mc02_TimeCount == 48){$mc02_時間 = "午前八時〇分";}
	else if($mc02_TimeCount == 49){$mc02_時間 = "午前八時〇分一〇秒";}
	else if($mc02_TimeCount == 50){$mc02_時間 = "午前八時〇分二〇秒";}
	else if($mc02_TimeCount == 51){$mc02_時間 = "午前八時〇分三〇秒";}
	else if($mc02_TimeCount == 52){$mc02_時間 = "午前八時〇分四〇秒";}
	else if($mc02_TimeCount == 53){$mc02_時間 = "午前八時〇分五〇秒";}
	else if($mc02_TimeCount == 54){$mc02_時間 = "午前八時一分";}
	else if($mc02_TimeCount == 55){$mc02_時間 = "午前八時一分一〇秒";}
	else if($mc02_TimeCount == 56){$mc02_時間 = "午前八時一分二〇秒";}
	else if($mc02_TimeCount == 57){$mc02_時間 = "午前八時一分三〇秒";}
	else if($mc02_TimeCount == 58){$mc02_時間 = "午前八時一分四〇秒";}
	else if($mc02_TimeCount == 59){$mc02_時間 = "午前八時一分五〇秒";}
	else if($mc02_TimeCount == 60){$mc02_時間 = "午前八時二分";}
	else if($mc02_TimeCount == 61){$mc02_時間 = "午前八時二分一〇秒";}
	else if($mc02_TimeCount == 62){$mc02_時間 = "午前八時二分二〇秒";}
	else if($mc02_TimeCount == 63){$mc02_時間 = "午前八時二分三〇秒";}
	else if($mc02_TimeCount == 64){$mc02_時間 = "午前八時二分四〇秒";}
	else if($mc02_TimeCount == 65){$mc02_時間 = "午前八時二分五〇秒";}
	else if($mc02_TimeCount == 66){$mc02_時間 = "午前八時三分";}
	else if($mc02_TimeCount == 67){$mc02_時間 = "午前八時三分一〇秒";}
	else if($mc02_TimeCount == 68){$mc02_時間 = "午前八時三分二〇秒";}
	else if($mc02_TimeCount == 69){$mc02_時間 = "午前八時三分三〇秒";}
	else if($mc02_TimeCount == 70){$mc02_時間 = "午前八時三分四〇秒";}
	else if($mc02_TimeCount == 71){$mc02_時間 = "午前八時三分五〇秒";}
	else if($mc02_TimeCount == 72){$mc02_時間 = "午前八時四分";}
	else if($mc02_TimeCount == 73){$mc02_時間 = "午前八時四分一〇秒";}
	else if($mc02_TimeCount == 74){$mc02_時間 = "午前八時四分二〇秒";}
	else if($mc02_TimeCount == 75){$mc02_時間 = "午前八時四分三〇秒";}
	else if($mc02_TimeCount == 76){$mc02_時間 = "午前八時四分四〇秒";}
	else if($mc02_TimeCount == 77){$mc02_時間 = "午前八時四分五〇秒";}
	else if($mc02_TimeCount == 78){$mc02_時間 = "午前八時五分";}
	else if($mc02_TimeCount == 79){$mc02_時間 = "午前八時五分一〇秒";}
	else if($mc02_TimeCount == 80){$mc02_時間 = "午前八時五分二〇秒";}
	else if($mc02_TimeCount == 81){$mc02_時間 = "午前八時五分三〇秒";}
	else if($mc02_TimeCount == 82){$mc02_時間 = "午前八時五分四〇秒";}
	else if($mc02_TimeCount == 83){$mc02_時間 = "午前八時五分五〇秒";}
	else if($mc02_TimeCount == 84){$mc02_時間 = "午前八時六分";}
	else if($mc02_TimeCount == 85){$mc02_時間 = "午前八時六分一〇秒";}
	else if($mc02_TimeCount == 86){$mc02_時間 = "午前八時六分二〇秒";}
	else if($mc02_TimeCount == 87){$mc02_時間 = "午前八時六分三〇秒";}
	else if($mc02_TimeCount == 88){$mc02_時間 = "午前八時六分四〇秒";}
	else if($mc02_TimeCount == 89){$mc02_時間 = "午前八時六分五〇秒";}
	else if($mc02_TimeCount == 90){$mc02_時間 = "午前八時七分";}
	else if($mc02_TimeCount == 91){$mc02_時間 = "午前八時七分一〇秒";}
	else if($mc02_TimeCount == 92){$mc02_時間 = "午前八時七分二〇秒";}
	else if($mc02_TimeCount == 93){$mc02_時間 = "午前八時七分三〇秒";}
	else if($mc02_TimeCount == 91){$mc02_時間 = "午前八時七分四〇秒";}
	else if($mc02_TimeCount == 92){$mc02_時間 = "午前八時七分五〇秒";}
	else if($mc02_TimeCount == 93){$mc02_時間 = "午前八時八分";}

	$md05_MoveCount++;

/*========================

	Array($mc02_n, "香奈枝合流＝", "ガスボンベ＝", "飲食室一回目＝", "艦長酒必要＝", "艦長泥酔＝",
				"酒＝", "隠し扉発見＝", "鍵＝", "兵士気絶＝", "振動＝",
				"倉庫２一回目＝", "船室一回目＝", "洋梨＝", "擂粉木＝", "料理酒＝",
				"材料名前＝");

	$mc02_name0 = $mc02_n[0]+$香奈枝合流_Flag;
	$mc02_name1 = $mc02_n[1]+$ガスボンベ_Flag;
	$mc02_name2 = $mc02_n[2]+$飲食室一回目_Flag;
	$mc02_name3 = $mc02_n[3]+$艦長酒必要_Flag;
	$mc02_name4 = $mc02_n[4]+$艦長泥酔_Flag;
	$mc02_name5 = $mc02_n[5]+$酒_Flag;
	$mc02_name6 = $mc02_n[6]+$隠し扉発見_Flag;
	$mc02_name7 = $mc02_n[7]+$鍵_Flag;
	$mc02_name8 = $mc02_n[8]+$兵士気絶_Flag;
	$mc02_name9 = $mc02_n[9]+$振動_Flag;
	$mc02_name10 = $mc02_n[10]+$倉庫２一回目_Flag;
	$mc02_name11 = $mc02_n[11]+$船室一回目_Flag;
	$mc02_name12 = $mc02_n[12]+$洋梨_Flag;
	$mc02_name13 = $mc02_n[13]+$擂粉木_Flag;
	$mc02_name14 = $mc02_n[14]+$料理酒_Flag;
	$mc02_name15 = $mc02_n[15]+$材料名前;

	SetFont("黑体", 15, FFFFFF, 000000, MEDIUM, RIGHTDOWN);

$mc02_y = 16;

	$mc02_y0 = $mc02_y-1;
	$mc02_y1 = $mc02_y*2;
	$mc02_y2 = $mc02_y*3;
	$mc02_y3 = $mc02_y*4;
	$mc02_y4 = $mc02_y*5;
	$mc02_y5 = $mc02_y*6;
	$mc02_y6 = $mc02_y*7;
	$mc02_y7 = $mc02_y*8;
	$mc02_y8 = $mc02_y*9;
	$mc02_y9 = $mc02_y*10;
	$mc02_y10 = $mc02_y*11;
	$mc02_y11 = $mc02_y*12;
	$mc02_y12 = $mc02_y*13;
	$mc02_y13 = $mc02_y*14;
	$mc02_y14 = $mc02_y*15;
	$mc02_y15 = $mc02_y*16;
	$mc02_y16 = $mc02_y*17;
	$mc02_y17 = $mc02_y*18;
	$mc02_y18 = $mc02_y*19;
	$mc02_y19 = $mc02_y*20;
	$mc02_y20 = $mc02_y*21;
	$mc02_y21 = $mc02_y*22;
	$mc02_y22 = $mc02_y*23;

	if($香奈枝合流_Flag == true){CreateText("1", 99999, 50, $mc02_y0, 700, 500, $mc02_name0);Wait(32);}
	if($ガスボンベ_Flag == true){CreateText("2", 99999, 50, $mc02_y1, 700, 500, $mc02_name1);Wait(32);}
	if($飲食室一回目_Flag == true){CreateText("3", 99999, 50, $mc02_y2, 700, 500, $mc02_name2);Wait(32);}
	if($艦長酒必要_Flag == true){CreateText("4", 99999, 50, $mc02_y3, 700, 500, $mc02_name3);Wait(32);}
	if($艦長泥酔_Flag == true){CreateText("5", 99999, 50, $mc02_y4, 700, 500, $mc02_name4);Wait(32);}
	if($酒_Flag == true){CreateText("6", 99999, 50, $mc02_y5, 700, 500, $mc02_name5);Wait(32);}
	if($隠し扉発見_Flag == true){CreateText("7", 99999, 50, $mc02_y6, 700, 500, $mc02_name6);Wait(32);}
	if($鍵_Flag == true){CreateText("8", 99999, 50, $mc02_y7, 700, 500, $mc02_name7);Wait(32);}
	if($兵士気絶_Flag == true){CreateText("9", 99999, 50, $mc02_y8, 700, 500, $mc02_name8);Wait(32);}
	if($振動_Flag == true){CreateText("10", 99999, 50, $mc02_y9, 700, 500, $mc02_name9);Wait(32);}
	if($倉庫２一回目_Flag == true){CreateText("11", 99999, 50, $mc02_y10, 700, 500, $mc02_name10);Wait(32);}
	if($船室一回目_Flag == true){CreateText("12", 99999, 50, $mc02_y11, 700, 500, $mc02_name11);Wait(32);}
	if($洋梨_Flag == true){CreateText("13", 99999, 50, $mc02_y12, 700, 500, $mc02_name12);Wait(32);}
	if($擂粉木_Flag == true){CreateText("14", 99999, 50, $mc02_y13, 700, 500, $mc02_name13);Wait(32);}
	if($料理酒_Flag == true){CreateText("15", 99999, 50, $mc02_y14, 700, 500, $mc02_name14);Wait(32);}
	if($材料名前  != ""){CreateText("16", 99999, 50, $mc02_y15, 700, 500, $mc02_name15);Wait(32);}

	Request("1", Lock);
	Request("2", Lock);
	Request("3", Lock);
	Request("4", Lock);
	Request("5", Lock);
	Request("6", Lock);
	Request("7", Lock);
	Request("8", Lock);
	Request("9", Lock);
	Request("10", Lock);
	Request("11", Lock);
	Request("12", Lock);
	Request("13", Lock);
	Request("14", Lock);
	Request("15", Lock);
	Request("16", Lock);


========================*/

}

..//mc02_FlagDef
function mc02_FlagDef()
{

//時間カウント初期化
	$mc02_Def = true;

//使用変数初期化
	$香奈枝合流_Flag = false;
	$擂粉木_Flag = false;
	$飲食室一回目_Flag = false;
	$艦長酒必要_Flag = false;
	$艦長泥酔_Flag = false;
	$鍵_Flag = false;
	$船室一回目_Flag = false;
	$酒_Flag = false;
	$倉庫２一回目_Flag = false;
	$振動_Flag = false;
	$兵士気絶_Flag = false;
	$洋梨_Flag = false;
	$料理酒_Flag = false;
	$ガスボンベ_Flag = false;
	$隠し扉発見_Flag = false;


}



..//mc02_SelectIcon
function mc02_SelectIcon($mc02_場所){

	$mc2_探索マップX = 30;
	$mc2_探索マップY = 246;

	$mc2_マップ優先度 = 1000;
	$mc2_マーカー = "cg/sys/select/only/mc02_飛行艦マップ.png";

//食糧庫
	$mc2_マーカーX[0] = 73;
	$mc2_マーカーX[1] = 119;
	$mc2_マーカーX[2] = 165;

	$mc2_マーカーX[3] = 73;
	$mc2_マーカーX[4] = 119;
	$mc2_マーカーX[5] = 165;

	$mc2_マーカーX[6] = 73;
	$mc2_マーカーX[7] = 119;
	$mc2_マーカーX[8] = 165;

	$mc2_マーカーX[9] = 119;

	$mc2_マーカーY[0] = 284;
	$mc2_マーカーY[1] = 284;
	$mc2_マーカーY[2] = 284;
	$mc2_マーカーY[3] = 340;
	$mc2_マーカーY[4] = 340;
	$mc2_マーカーY[5] = 340;
	$mc2_マーカーY[6] = 395;
	$mc2_マーカーY[7] = 395;
	$mc2_マーカーY[8] = 395;
	$mc2_マーカーY[9] = 454;

	Array($mc2_マーカーname,"絵map食糧庫", "絵map廊下１", "絵map士官室",
							"絵map台所", "絵map廊下２", "絵map倉庫２",
							"絵map飲食室", "絵map廊下３", "絵map倉庫１", "絵map展望");

	CreateTexture("探索マップ", $mc2_マップ優先度, $mc2_探索マップX, $mc2_探索マップY, $mc2_マーカー);
	Fade("探索マップ", 0, 0, null, true);
//	Request("探索マップ", MulRender);
	SetAlias("探索マップ","探索マップ");

	if($mc02_場所==1){$mc02_位置取得 = "@"+$mc2_マーカーname[0];}
	else if($mc02_場所==2){$mc02_位置取得 = "@"+$mc2_マーカーname[1];}
	else if($mc02_場所==3){$mc02_位置取得 = "@"+$mc2_マーカーname[2];}
	else if($mc02_場所==4){$mc02_位置取得 = "@"+$mc2_マーカーname[3];}
	else if($mc02_場所==5){$mc02_位置取得 = "@"+$mc2_マーカーname[4];}
	else if($mc02_場所==6){$mc02_位置取得 = "@"+$mc2_マーカーname[5];}
	else if($mc02_場所==7){$mc02_位置取得 = "@"+$mc2_マーカーname[6];}
	else if($mc02_場所==8){$mc02_位置取得 = "@"+$mc2_マーカーname[7];}
	else if($mc02_場所==9){$mc02_位置取得 = "@"+$mc2_マーカーname[8];}
	else if($mc02_場所==10){$mc02_位置取得 = "@"+$mc2_マーカーname[9];}

	$mc2_i = 0;

	while($mc2_マーカーname[$mc2_i] != ""){
		CreateTexture($mc2_マーカーname[$mc2_i], $mc2_マップ優先度, $mc2_マーカーX[$mc2_i], $mc2_マーカーY[$mc2_i], "cg/sys/select/only/mc02_マーカー.png");
		Fade($mc2_マーカーname[$mc2_i], 0, 0, null, true);
		SetAlias($mc2_マーカーname[$mc2_i],$mc2_マーカーname[$mc2_i]);
		$mc2_i++;
	}

		Fade("探索マップ", 300, 1000, null, false);

		CreateProcess("mc02_MapsP", 150, 0, 0, "mc02_MapsProcess");
		SetAlias("mc02_MapsP","mc02_MapsP");
		Request("mc02_MapsP", Start);

}

..//mc02_MapsProcess
function mc02_MapsProcess(){

	begin:

	while(1){
		Fade($mc02_位置取得, 500, 1000, null, true);
		Wait(200);
		Fade($mc02_位置取得, 500, 0, null, true);
		Wait(200);
	}


}


function mc02_SelectIcon_Delete(){


	Request("@mc02_MapsP", Stop);
	Fade($mc02_位置取得, 300, 0, null, false);
	Fade("@探索マップ", 300, 0, null, true);

	Delete("@mc02_MapsP");
	Delete("@絵map*");
	Delete("@探索マップ");


}

//===========================//
.//◆◆md05探索パート専用マクロ
//===========================//
..//◆md05_MoveCount
function md05_MoveCount(){

	$md05_MoveCount++;

/*========================

	Array($md05_n, "同行者＝", "二週目＝", "三週目＝", "統自分＝", "統目的＝",
				"本家自分＝", "本家目的＝", "首領自分＝", "首領目的＝", "村正自分＝",
				"村正目的＝", "光自分＝", "光目的＝", "統目的２＝", "統光＝",
				"村正目的２＝", "村正光＝", "首領目的２＝", "首領光＝", "本家目的２＝",
				"本家光＝", "裏山終了＝", "移動回数＝");

	$md05_name0 = $md05_n[0]+$同行者;
	$md05_name1 = $md05_n[1]+$md05_２週目;
	$md05_name2 = $md05_n[2]+$md05_３週目;
	$md05_name3 = $md05_n[3]+$統自分_Flag;
	$md05_name4 = $md05_n[4]+$統目的_Flag;
	$md05_name5 = $md05_n[5]+$本家自分_Flag;
	$md05_name6 = $md05_n[6]+$本家目的_Flag;
	$md05_name7 = $md05_n[7]+$首領自分_Flag;
	$md05_name8 = $md05_n[8]+$首領目的_Flag;
	$md05_name9 = $md05_n[9]+$村正自分_Flag;
	$md05_name10 = $md05_n[10]+$村正目的_Flag;
	$md05_name11 = $md05_n[11]+$光自分_Flag;
	$md05_name12 = $md05_n[12]+$光目的_Flag;
	$md05_name13 = $md05_n[13]+$統目的２_Flag;
	$md05_name14 = $md05_n[14]+$統光_Flag;
	$md05_name15 = $md05_n[15]+$村正目的２_Flag;
	$md05_name16 = $md05_n[16]+$村正光_Flag;
	$md05_name17 = $md05_n[17]+$首領目的２_Flag;
	$md05_name18 = $md05_n[18]+$首領光_Flag;
	$md05_name19 = $md05_n[19]+$本家目的２_Flag;
	$md05_name20 = $md05_n[20]+$本家光_Flag;
	$md05_name21 = $md05_n[21]+$裏山終了_Flag;
	$md05_name22 = $md05_n[22]+$md05_MoveCount;

	SetFont("黑体", 15, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("1", 15000, 50, 20, 700, 500, $md05_name0);Wait(32);

$md05_y = 16;

	$md05_y0 = $md05_y-1;
	$md05_y1 = $md05_y*2;
	$md05_y2 = $md05_y*3;
	$md05_y3 = $md05_y*4;
	$md05_y4 = $md05_y*5;
	$md05_y5 = $md05_y*6;
	$md05_y6 = $md05_y*7;
	$md05_y7 = $md05_y*8;
	$md05_y8 = $md05_y*9;
	$md05_y9 = $md05_y*10;
	$md05_y10 = $md05_y*11;
	$md05_y11 = $md05_y*12;
	$md05_y12 = $md05_y*13;
	$md05_y13 = $md05_y*14;
	$md05_y14 = $md05_y*15;
	$md05_y15 = $md05_y*16;
	$md05_y16 = $md05_y*17;
	$md05_y17 = $md05_y*18;
	$md05_y18 = $md05_y*19;
	$md05_y19 = $md05_y*20;
	$md05_y20 = $md05_y*21;
	$md05_y21 = $md05_y*22;
	$md05_y22 = $md05_y*23;

	if($同行者 != ""){CreateText("1", 99999, 50, $md05_y0, 700, 500, $md05_name0);Wait(32);}
	if($md05_２週目 == true){CreateText("2", 99999, 50, $md05_y1, 700, 500, $md05_name1);Wait(32);}
	if($md05_３週目 == true){CreateText("3", 99999, 50, $md05_y2, 700, 500, $md05_name2);Wait(32);}
	if($統自分_Flag == true){CreateText("4", 99999, 50, $md05_y3, 700, 500, $md05_name3);Wait(32);}
	if($統目的_Flag == true){CreateText("5", 99999, 50, $md05_y4, 700, 500, $md05_name4);Wait(32);}
	if($本家自分_Flag == true){CreateText("6", 99999, 50, $md05_y5, 700, 500, $md05_name5);Wait(32);}
	if($本家目的_Flag == true){CreateText("7", 99999, 50, $md05_y6, 700, 500, $md05_name6);Wait(32);}
	if($首領自分_Flag == true){CreateText("8", 99999, 50, $md05_y7, 700, 500, $md05_name7);Wait(32);}
	if($首領目的_Flag == true){CreateText("9", 99999, 50, $md05_y8, 700, 500, $md05_name8);Wait(32);}
	if($村正自分_Flag == true){CreateText("10", 99999, 50, $md05_y9, 700, 500, $md05_name9);Wait(32);}
	if($村正目的_Flag == true){CreateText("11", 99999, 50, $md05_y10, 700, 500, $md05_name10);Wait(32);}
	if($光自分_Flag == true){CreateText("12", 99999, 50, $md05_y11, 700, 500, $md05_name11);Wait(32);}
	if($光目的_Flag == true){CreateText("13", 99999, 50, $md05_y12, 700, 500, $md05_name12);Wait(32);}
	if($統目的２_Flag == true){CreateText("14", 99999, 50, $md05_y13, 700, 500, $md05_name13);Wait(32);}
	if($統光_Flag == true){CreateText("15", 99999, 50, $md05_y14, 700, 500, $md05_name14);Wait(32);}
	if($村正目的２_Flag == true){CreateText("16", 99999, 50, $md05_y15, 700, 500, $md05_name15);Wait(32);}
	if($村正光_Flag == true){CreateText("17", 99999, 50, $md05_y16, 700, 500, $md05_name16);Wait(32);}
	if($首領目的２_Flag == true){CreateText("18", 99999, 50, $md05_y17, 700, 500, $md05_name17);Wait(32);}
	if($首領光_Flag == true){CreateText("19", 99999, 50, $md05_y18, 700, 500, $md05_name18);Wait(32);}
	if($本家目的２_Flag == true){CreateText("20", 99999, 50, $md05_y19, 700, 500, $md05_name19);Wait(32);}
	if($本家光_Flag == true){CreateText("21", 99999, 50, $md05_y20, 700, 500, $md05_name20);Wait(32);}
	if($裏山終了_Flag == true){CreateText("22", 99999, 50, $md05_y21, 700, 500, $md05_name21);Wait(32);}
	if($md05_MoveCount >= 0){CreateText("23", 99999, 50, $md05_y22, 700, 500, $md05_name22);Wait(32);}

	Request("1", Lock);
	Request("2", Lock);
	Request("3", Lock);
	Request("4", Lock);
	Request("5", Lock);
	Request("6", Lock);
	Request("7", Lock);
	Request("8", Lock);
	Request("9", Lock);
	Request("10", Lock);
	Request("11", Lock);
	Request("12", Lock);
	Request("13", Lock);
	Request("14", Lock);
	Request("15", Lock);
	Request("16", Lock);
	Request("17", Lock);
	Request("18", Lock);
	Request("19", Lock);
	Request("20", Lock);
	Request("21", Lock);
	Request("22", Lock);
	Request("23", Lock);


========================*/


}

function md05_Clearflag(){

	$同行者="";

	$md05_MoveCount = 0;

	$md05_２週目 = false;
	$md05_３週目 = false;

	$裏山終了_Flag = false;

	$統自分_Flag=false;
	$統目的_Flag=false;

	$本家自分_Flag=false;
	$本家目的_Flag=false;

	$首領自分_Flag=false;
	$首領目的_Flag=false;

	$村正自分_Flag=false;
	$村正目的_Flag=false;

	$光自分_Flag = false;
	$光目的_Flag = false;

	$統目的２_Flag = false;
	$統光_Flag = false;

	$村正目的２_Flag = false;
	$村正光_Flag = false;

	$首領目的２_Flag = false;
	$首領光_Flag = false;

	$本家目的２_Flag = false;
	$本家光_Flag = false;

}

//―――――――――――――――――――――――――――――――――――//
.//▼１択の選択肢ボタンを表示
//―――――――――――――――――――――――――――――――――――//
..//１択の選択肢ボタンを表示
function SetChoice01($テキストデータ１)
{
	//選択肢の数は何個？
	$SetChoiceNum=1;
	//すべての設定
	SetChoiceBase();
}
...//２択の１番目が選ばれた後の処理
function ChoiceA01()
{
	//選択肢は何？
	$SetChoiceSelect=0;
	//選択肢動作
	ChoiceFade();
}


.//◆回想シーン用マクロ
..EfRecoIn1
function EfRecoIn1($RecoIn01_Pri,$RecoIn01_Time){

//最初の白幕用
	$RecoIn_Name = "Reco_Flash";

//セピアカラー用
	$RecoIn_Back01 = "Reco_Over01";
//色づけ用
	$RecoIn_Back02 = "Reco_Over02";

//画像優先度の取得
	$RecoIn_BackPri01 = $RecoIn01_Pri-2;
	$RecoIn_BackPri02 = $RecoIn01_Pri-1;

	CreateColor($RecoIn_Name, $RecoIn01_Pri, 0, 0, 1024, 576, "White");
	Fade($RecoIn_Name, 0, 0, null, true);
	Request($RecoIn_Name, AddRender);
	SetAlias($RecoIn_Name,$RecoIn_Name);

	CreateSound("RecoIn_Sound", SE, "sound/se/se擬音_回想_フラッシュバック01");
//	CreateSound("RecoIn_Sound", SE, "sound/se/se擬音_フラッシュバック01.ogg");

	Request("RecoIn_Sound", Play);
	Request("RecoIn_Sound", Disused);
	Fade($RecoIn_Name, $RecoIn01_Time, 1000, null, true);

	CreateColor($RecoIn_Back01, $RecoIn_BackPri01, 0, 0, 1024, 576, #847000);
	SetAlias($RecoIn_Back01,$RecoIn_Back01);
	CreateColor($RecoIn_Back02, $RecoIn_BackPri02, 0, 0, 1024, 576, "White");
	SetAlias($RecoIn_Back02,$RecoIn_Back02);
	Fade($RecoIn_Back01, 0, 400, null, true);
	Fade($RecoIn_Back02, 0, 200, null, true);
	Request($RecoIn_Back01, MulRender);
	Request($RecoIn_Back02, AddRender);

}

..EfRecoIn2
function EfRecoIn2($RecoIn_Time02){

	$RecoIn_NameA= "@" + $RecoIn_Name;

	Fade($RecoIn_NameA, $RecoIn_Time02, 0, null, true);
	Delete($RecoIn_NameA);

}

..EfRecoOut1
function EfRecoOut1($RecoOut_Time01){

//最初の白幕用
	$RecoOut_Name = "Reco_Flash";

//セピアカラー用
	$RecoIn_Back01A = "@" + $RecoIn_Back01;
//色づけ用
	$RecoIn_Back02A = "@" + $RecoIn_Back02;

	CreateColor($RecoOut_Name, $RecoIn01_Pri, 0, 0, 1024, 576, "White");

	Fade($RecoIn_Name, 0, 0, null, true);
	Request($RecoIn_Name, AddRender);
	SetAlias($RecoIn_Name,$RecoIn_Name);

	Fade($RecoIn_Name, $RecoOut_Time01, 1000, null, true);
	Delete($RecoIn_Back01A);
	Delete($RecoIn_Back02A);

}

..EfRecoOut2
function EfRecoOut2($RecoOut_Time02,$RecoOut_Wait02){

	$RecoOut_NameA= "@" + $RecoOut_Name;

	if($RecoOut_Wait02==true){Fade($RecoOut_Name, $RecoOut_Time02, 0, null,true);}
	else{Fade($RecoOut_Name, $RecoOut_Time02, 0, null,false);}

	Request($RecoOut_Name, Disused);

}

..PulseFlash
function PulseFlash($PF_Pri,$PF_Time,$PF_Wait){

	CreateColorEX("PF_Nut", $PF_Pri, "RED");
	Fade("PF_Nut",0,1000,null,true);
	Fade("PF_Nut",300,0,null,$PF_Wait);

	if($PF_Wait==true){Request("PF_Nut", Disused);}
	else{Delete("PF_Nut");}


}

function PulseFlashProcess(){



}



..//cut_in_logo(優先度)
function cut_in_logo($CIL_Pri,$CIL_Route){


	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", $CIL_Pri, "#FFFFFF");

	$CIL_Pri = $CIL_Pri-1;

	CreateTextureSP("絵背景", $CIL_Pri, Center, Middle, "cg/sys/Telop/tp_アイキャッチ.jpg");
	CreateColorSP("絵色黒地", 100, "#000000");

	Zoom("絵背景", 0, 1200, 1200, null, true);
	SetBlur("絵背景", true, 3, 300, 100, false);

	Wait(100);

	Zoom("絵背景", 500, 1000, 1000, Dxl1, false);
	FadeDelete("絵色白", 500, true);

	WaitKey(2000);


}










//========================================================//
.//◆徒歩
//========================================================//
//========================================================//
..//雲
//========================================================//
function CloudZoomSet(画像優先度){
	CreateTextureEX("絵Cloud11", 画像優先度, Center, Middle, "cg/ef/efRec_雲a03.png");//左
	CreateTextureEX("絵Cloud12", 画像優先度, Center, Middle, "cg/ef/efRec_雲a02.png");//右
	CreateTextureEX("絵Cloud13", 画像優先度, Center, Middle, "cg/ef/efRec_雲a04.png");//下//本当は雲１
	CreateTextureEX("絵Cloud14", 画像優先度, Center, Middle, "cg/ef/efRec_雲a02.png");//左上
	CreateTextureEX("絵Cloud15", 画像優先度, Center, Middle, "cg/ef/efRec_雲a04.png");//右上

	SetVertex("絵Cloud11", 572, 260);
	SetVertex("絵Cloud12", 0, 300);
	SetVertex("絵Cloud13", 280, 0);
	SetVertex("絵Cloud14", 700, 550);
	SetVertex("絵Cloud15", 0, 532);

	Move("絵Cloud11", 0, @-200, @0, null, true);
	Move("絵Cloud12", 0, @200, @0, null, true);
	Move("絵Cloud14", 0, @-50, @-150, null, true);
	Move("絵Cloud15", 0, @0, @-200, null, true);

	CreateProcess("CloudProcess1", 0, 0, 0, "CloudZoomProcess11");
	SetAlias("CloudProcess1", "CloudProcess1");
	CreateProcess("CloudProcess2", 0, 0, 0, "CloudZoomProcess12");
	SetAlias("CloudProcess2", "CloudProcess2");
	CreateProcess("CloudProcess3", 0, 0, 0, "CloudZoomProcess13");
	SetAlias("CloudProcess3", "CloudProcess3");
	CreateProcess("CloudProcess4", 0, 0, 0, "CloudZoomProcess14");
	SetAlias("CloudProcess4", "CloudProcess4");
	CreateProcess("CloudProcess5", 0, 0, 0, "CloudZoomProcess15");
	SetAlias("CloudProcess5", "CloudProcess5");

	CreateProcess("CloudProcess1B", 0, 0, 0, "CloudZoomProcess11B");
	SetAlias("CloudProcess1B", "CloudProcess1B");
	CreateProcess("CloudProcess2B", 0, 0, 0, "CloudZoomProcess12B");
	SetAlias("CloudProcess2B", "CloudProcess2B");
	CreateProcess("CloudProcess3B", 0, 0, 0, "CloudZoomProcess13B");
	SetAlias("CloudProcess3B", "CloudProcess3B");
	CreateProcess("CloudProcess4B", 0, 0, 0, "CloudZoomProcess14B");
	SetAlias("CloudProcess4B", "CloudProcess4B");
	CreateProcess("CloudProcess5B", 0, 0, 0, "CloudZoomProcess15B");
	SetAlias("CloudProcess5B", "CloudProcess5B");
}

function CloudZoomStart($CloudFade11,$CloudFade12,$CloudFade13,$CloudFade14,$CloudFade15){
	$Cloud11Flag=true;
	$Cloud12Flag=true;
	$Cloud13Flag=true;
	$Cloud14Flag=true;
	$Cloud15Flag=true;

	$CloudZoom=10000;
	$CloudZoomPre=1000;
	Zoom("@絵Cloud1*", 0, $CloudZoomPre, $CloudZoomPre, null, true);

	Request("@CloudProcess1", Start);//左
	Request("@CloudProcess2", Start);//右
	Request("@CloudProcess3", Start);//下
	Request("@CloudProcess4", Start);//左上
	Request("@CloudProcess5", Start);//右上
}


function CloudZoomProcess11(){
	Wait(100);

	while($Cloud11Flag){
		Zoom("@絵Cloud11", 650, $CloudZoom, $CloudZoom, Axl3, false);
		Fade("@絵Cloud11", 400, $CloudFade11, Axl3, false);
		Wait(400);
		Fade("@絵Cloud11", 200, 0, null, true);

		Fade("@絵Cloud11", 0, 0, null, true);
		Zoom("@絵Cloud11", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}

function CloudZoomProcess12(){
	Wait(200);

	while($Cloud12Flag){
		Zoom("@絵Cloud12", 750, $CloudZoom, $CloudZoom, Axl3, false);
		Fade("@絵Cloud12", 600, $CloudFade12, Axl3, false);
		Wait(600);
		Fade("@絵Cloud12", 150, 0, null, true);

		Fade("@絵Cloud12", 0, 0, null, false);
		Zoom("@絵Cloud12", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}

function CloudZoomProcess13(){
	Wait(300);

	while($Cloud13Flag){
		Zoom("@絵Cloud13", 1000, $CloudZoom, $CloudZoom, Axl3, false);
		Fade("@絵Cloud13", 800, $CloudFade13, Axl3, false);
		Wait(800);
		Fade("@絵Cloud13", 200, 0, null, true);

		Fade("@絵Cloud13", 0, 0, null, false);
		Zoom("@絵Cloud13", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}

function CloudZoomProcess14(){
	Wait(400);

	while($Cloud14Flag){
		Zoom("@絵Cloud14", 650, $CloudZoom, $CloudZoom, Axl3, false);
		Fade("@絵Cloud14", 450, $CloudFade14, Axl3, false);
		Wait(450);
		Fade("@絵Cloud14", 150, 0, null, true);

		Fade("@絵Cloud14", 0, 0, null, false);
		Zoom("@絵Cloud14", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}

function CloudZoomProcess15(){
	Wait(500);

	while($Cloud15Flag){
		Zoom("@絵Cloud15", 900, $CloudZoom, $CloudZoom, Axl3, false);
		Fade("@絵Cloud15", 750, $CloudFade15, Axl3, false);
		Wait(750);
		Fade("@絵Cloud15", 150, 0, null, true);

		Fade("@絵Cloud15", 0, 0, null, false);
		Zoom("@絵Cloud15", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}





function CloudZoomStartB($CloudFade11,$CloudFade12,$CloudFade13,$CloudFade14,$CloudFade15){
	$Cloud11Flag=true;
	$Cloud12Flag=true;
	$Cloud13Flag=true;
	$Cloud14Flag=true;
	$Cloud15Flag=true;

	$CloudZoom=1200;
	$CloudZoomPre=10000;
	Zoom("絵Cloud1*", 0, $CloudZoomPre, $CloudZoomPre, null, true);

	Request("@CloudProcess1B", Start);//左
	Request("@CloudProcess2B", Start);//右
	Request("@CloudProcess3B", Start);//下
	Request("@CloudProcess4B", Start);//左上
	Request("@CloudProcess5B", Start);//右上
}

function CloudZoomProcess11B(){
	Wait(100);

	while($Cloud11Flag){
		Zoom("@絵Cloud11", 650, $CloudZoom, $CloudZoom, Dxl3, false);
		Fade("@絵Cloud11", 200, $CloudFade11, Dxl3, false);
		Wait(200);
		Fade("@絵Cloud11", 450, 0, Dxl1, true);

		Fade("@絵Cloud11", 0, 0, null, true);
		Zoom("@絵Cloud11", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}

function CloudZoomProcess12B(){
	Wait(200);

	while($Cloud12Flag){
		Zoom("@絵Cloud12", 750, $CloudZoom, $CloudZoom, Dxl3, false);
		Fade("@絵Cloud12", 150, $CloudFade12, Dxl3, false);
		Wait(150);
		Fade("@絵Cloud12", 600, 0, Dxl1, true);

		Fade("@絵Cloud12", 0, 0, null, false);
		Zoom("@絵Cloud12", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}

function CloudZoomProcess13B(){
	Wait(300);

	while($Cloud13Flag){
		Zoom("@絵Cloud13", 1000, $CloudZoom, $CloudZoom, Dxl3, false);
		Fade("@絵Cloud13", 200, $CloudFade13, Axl3, false);
		Wait(200);
		Fade("@絵Cloud13", 800, 0, Dxl1, true);

		Fade("@絵Cloud13", 0, 0, null, false);
		Zoom("@絵Cloud13", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}

function CloudZoomProcess14B(){
	Wait(400);

	while($Cloud14Flag){
		Zoom("@絵Cloud14", 650, $CloudZoom, $CloudZoom, Dxl3, false);
		Fade("@絵Cloud14", 150, $CloudFade14, Axl3, false);
		Wait(150);
		Fade("@絵Cloud14", 450, 0, Dxl1, true);

		Fade("@絵Cloud14", 0, 0, null, false);
		Zoom("@絵Cloud14", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}

function CloudZoomProcess15B(){
	Wait(500);

	while($Cloud15Flag){
		Zoom("@絵Cloud15", 900, $CloudZoom, $CloudZoom, Dxl3, false);
		Fade("@絵Cloud15", 150, $CloudFade15, Axl3, false);
		Wait(150);
		Fade("@絵Cloud15", 750, 0, Dxl1, true);

		Fade("@絵Cloud15", 0, 0, null, false);
		Zoom("@絵Cloud15", 0, $CloudZoomPre, $CloudZoomPre, null, true);
	}
}

function CloudZoomVertex(秒数,$CMoveX,$CMoveY,勢い,待ち){
	Move("@絵Cloud1*", 秒数, $CMoveX, $CMoveY, 勢い, 待ち);
}

function CloudZoomFade(秒数,待ち){
	$Cloud11Flag=false;
	$Cloud12Flag=false;
	$Cloud13Flag=false;
	$Cloud14Flag=false;
	$Cloud15Flag=false;

	$Cloud21Flag=false;
	$Cloud22Flag=false;
	$Cloud23Flag=false;

	$Cloud31Flag=false;
	$Cloud32Flag=false;
	$Cloud33Flag=false;

	Fade("@絵Cloud*", 秒数, 0, null, 待ち);
}

function CloudZoomDelete(秒数,待ち){
	$Cloud11Flag=false;
	$Cloud12Flag=false;
	$Cloud13Flag=false;
	$Cloud14Flag=false;
	$Cloud15Flag=false;

	$Cloud21Flag=false;
	$Cloud22Flag=false;
	$Cloud23Flag=false;

	$Cloud31Flag=false;
	$Cloud32Flag=false;
	$Cloud33Flag=false;

	Fade("@絵Cloud*", 秒数, 0, null, 待ち);

	Request("@CloudProcess*", Disused);
	Request("@絵Cloud*", Disused);
}












function CloudZoomSet2($マドナット名,$画像優先度,X座標,Y座標,H幅,V幅){
	CreateWindow($マドナット名, $画像優先度, X座標, Y座標, H幅, V幅, false);
	SetAlias($マドナット名, $マドナット名);

	$cnutw=$マドナット名+"/絵Cloud21";
	CreateTexture($cnutw, $画像優先度, Center, Middle, "cg/ef/efRec_雲a03.png");//左
	SetAlias($cnutw, "絵Cloud21");

	$cnutw=$マドナット名+"/絵Cloud22";
	CreateTexture($cnutw, $画像優先度, Center, Middle, "cg/ef/efRec_雲a04.png");//右
	SetAlias($cnutw, "絵Cloud22");

	$cnutw=$マドナット名+"/絵Cloud23";
	CreateTexture($cnutw, $画像優先度, Center, Middle, "cg/ef/efRec_雲a02.png");//下
	SetAlias($cnutw, "絵Cloud23");

	Fade("@絵Cloud2*", 0, 0, null, true);

	SetVertex("@絵Cloud21", 572, 532);
	SetVertex("@絵Cloud22", 0, 744);
	SetVertex("@絵Cloud23", 280, 0);

	Move("@絵Cloud21", 0, @0, @-100, null, true);
	Move("@絵Cloud22", 0, @0, @0, null, true);
	Move("@絵Cloud23", 0, @0, @0, null, true);

	CreateProcess("CloudProcess21", 0, 0, 0, "CloudZoomProcess21");
	SetAlias("CloudProcess21", "CloudProcess21");
	CreateProcess("CloudProcess22", 0, 0, 0, "CloudZoomProcess22");
	SetAlias("CloudProcess22", "CloudProcess22");
	CreateProcess("CloudProcess23", 0, 0, 0, "CloudZoomProcess23");
	SetAlias("CloudProcess23", "CloudProcess23");

	CreateProcess("CloudProcess21B", 0, 0, 0, "CloudZoomProcess21B");
	SetAlias("CloudProcess21B", "CloudProcess21B");
	CreateProcess("CloudProcess22B", 0, 0, 0, "CloudZoomProcess22B");
	SetAlias("CloudProcess22B", "CloudProcess22B");
	CreateProcess("CloudProcess23B", 0, 0, 0, "CloudZoomProcess23B");
	SetAlias("CloudProcess23B", "CloudProcess23B");
}

function CloudZoomStart2($CloudFade21,$CloudFade22,$CloudFade23){
	$Cloud21Flag=true;
	$Cloud22Flag=true;
	$Cloud23Flag=true;

	$CloudZoom2=10000;
	$CloudZoom2Pre=1000;
	Zoom("@絵Cloud2*", 0, $CloudZoom2Pre, $CloudZoom2Pre, null, true);

	Request("@CloudProcess21", Start);//左
	Request("@CloudProcess22", Start);//右
	Request("@CloudProcess23", Start);//下
}
function CloudZoomStart2B($CloudFade21,$CloudFade22,$CloudFade23){
	$Cloud21Flag=true;
	$Cloud22Flag=true;
	$Cloud23Flag=true;

	$CloudZoom2=2000;
	$CloudZoom2Pre=10000;
	Zoom("@絵Cloud2*", 0, $CloudZoom2Pre, $CloudZoom2Pre, null, true);

	Request("@CloudProcess21B", Start);//左
	Request("@CloudProcess22B", Start);//右
	Request("@CloudProcess23B", Start);//下
}

function CloudZoomProcess21(){
	Wait(100);

	while($Cloud21Flag){
		Zoom("@絵Cloud21", 900, $CloudZoom2, $CloudZoom2, Axl3, false);
		Fade("@絵Cloud21", 700, $CloudFade21, Axl3, false);
		Wait(700);
		Fade("@絵Cloud21", 200, 0, null, true);

		Fade("@絵Cloud21", 0, 0, null, true);
		Zoom("@絵Cloud21", 0, $CloudZoom2Pre, $CloudZoom2Pre, null, true);
	}
}

function CloudZoomProcess22(){
	Wait(200);

	while($Cloud22Flag){
		Zoom("@絵Cloud22", 800, $CloudZoom2, $CloudZoom2, Axl3, false);
		Fade("@絵Cloud22", 600, $CloudFade22, Axl3, false);
		Wait(600);
		Fade("@絵Cloud22", 200, 0, null, true);

		Fade("@絵Cloud22", 0, 0, null, false);
		Zoom("@絵Cloud22", 0, $CloudZoom2Pre, $CloudZoom2Pre, null, true);
	}
}

function CloudZoomProcess23(){
	Wait(300);

	while($Cloud23Flag){
		Zoom("@絵Cloud23", 1000, $CloudZoom2, $CloudZoom2, Axl3, false);
		Fade("@絵Cloud23", 800, $CloudFade23, Axl3, false);
		Wait(800);
		Fade("@絵Cloud23", 200, 0, null, true);

		Fade("@絵Cloud23", 0, 0, null, false);
		Zoom("@絵Cloud23", 0, $CloudZoom2Pre, $CloudZoom2Pre, null, true);
	}
}


function CloudZoomProcess21B(){
	Wait(100);

	while($Cloud21Flag){
		Zoom("@絵Cloud21", 650, $CloudZoom2, $CloudZoom2, Dxl3, false);
		Fade("@絵Cloud21", 200, $CloudFade21, Dxl3, false);
		Wait(200);
		Fade("@絵Cloud21", 450, 0, Dxl1, true);

		Fade("@絵Cloud21", 0, 0, null, true);
		Zoom("@絵Cloud21", 0, $CloudZoom2Pre, $CloudZoom2Pre, null, true);
	}
}

function CloudZoomProcess22B(){
	Wait(200);

	while($Cloud22Flag){
		Zoom("@絵Cloud22", 750, $CloudZoom2, $CloudZoom2, Dxl3, false);
		Fade("@絵Cloud22", 150, $CloudFade22, Dxl3, false);
		Wait(150);
		Fade("@絵Cloud22", 600, 0, Dxl1, true);

		Fade("@絵Cloud22", 0, 0, null, false);
		Zoom("@絵Cloud22", 0, $CloudZoom2Pre, $CloudZoom2Pre, null, true);
	}
}

function CloudZoomProcess23B(){
	Wait(300);

	while($Cloud23Flag){
		Zoom("@絵Cloud23", 1000, $CloudZoom2, $CloudZoom2, Dxl3, false);
		Fade("@絵Cloud23", 200, $CloudFade23, Axl3, false);
		Wait(200);
		Fade("@絵Cloud23", 800, 0, Dxl1, true);

		Fade("@絵Cloud23", 0, 0, null, false);
		Zoom("@絵Cloud23", 0, $CloudZoom2Pre, $CloudZoom2Pre, null, true);
	}
}



function CloudZoomVertex2(秒数,$CMoveX,$CMoveY,勢い,待ち){
	Move("@絵Cloud2*", 秒数, $CMoveX, $CMoveY, 勢い, 待ち);
}

function CloudZoomFade2(秒数,待ち){
	$Cloud21Flag=false;
	$Cloud22Flag=false;
	$Cloud23Flag=false;
	Fade("@絵Cloud2*", 秒数, 0, null, 待ち);
}

function CloudZoomDelete2(秒数,待ち){
	$Cloud21Flag=false;
	$Cloud22Flag=false;
	$Cloud23Flag=false;
	Fade("@絵Cloud2*", 秒数, 0, null, 待ち);
	Request("@CloudProcess2*", Disused);
	Request("@絵Cloud2*", Disused);
}







function CloudZoomSet3($マドナット名,$画像優先度,X座標,Y座標,H幅,V幅){
	CreateWindow($マドナット名, $画像優先度, X座標, Y座標, H幅, V幅, false);
	SetAlias($マドナット名, $マドナット名);

	$cnutw=$マドナット名+"/絵Cloud31";
	CreateTexture($cnutw, $画像優先度, Center, Middle, "cg/ef/efRec_雲a03.png");//左
	SetAlias($cnutw, "絵Cloud31");

	$cnutw=$マドナット名+"/絵Cloud32";
	CreateTexture($cnutw, $画像優先度, Center, Middle, "cg/ef/efRec_雲a04.png");//右
	SetAlias($cnutw, "絵Cloud32");

	$cnutw=$マドナット名+"/絵Cloud33";
	CreateTexture($cnutw, $画像優先度, Center, Middle, "cg/ef/efRec_雲a02.png");//下
	SetAlias($cnutw, "絵Cloud33");

	Fade("@絵Cloud3*", 0, 0, null, true);

	SetVertex("@絵Cloud31", 572, 532);
	SetVertex("@絵Cloud32", 0, 744);
	SetVertex("@絵Cloud33", 280, 0);

	Move("@絵Cloud31", 0, @0, @-100, null, true);
	Move("@絵Cloud32", 0, @0, @0, null, true);
	Move("@絵Cloud33", 0, @0, @0, null, true);

	CreateProcess("CloudProcess31", 0, 0, 0, "CloudZoomProcess31");
	SetAlias("CloudProcess31", "CloudProcess31");
	CreateProcess("CloudProcess32", 0, 0, 0, "CloudZoomProcess32");
	SetAlias("CloudProcess32", "CloudProcess32");
	CreateProcess("CloudProcess33", 0, 0, 0, "CloudZoomProcess33");
	SetAlias("CloudProcess33", "CloudProcess33");

	CreateProcess("CloudProcess31B", 0, 0, 0, "CloudZoomProcess31B");
	SetAlias("CloudProcess31B", "CloudProcess31B");
	CreateProcess("CloudProcess32B", 0, 0, 0, "CloudZoomProcess32B");
	SetAlias("CloudProcess32B", "CloudProcess32B");
	CreateProcess("CloudProcess33B", 0, 0, 0, "CloudZoomProcess33B");
	SetAlias("CloudProcess33B", "CloudProcess33B");
}

function CloudZoomStart3($CloudFade31,$CloudFade32,$CloudFade33){
	$Cloud31Flag=true;
	$Cloud32Flag=true;
	$Cloud33Flag=true;

	$CloudZoom3=10000;
	$CloudZoom3Pre=1000;
	Zoom("@絵Cloud3*", 0, $CloudZoom3Pre, $CloudZoom3Pre, null, true);

	Request("@CloudProcess31", Start);//左
	Request("@CloudProcess32", Start);//右
	Request("@CloudProcess33", Start);//下
}
function CloudZoomStart3B($CloudFade31,$CloudFade32,$CloudFade33){
	$Cloud31Flag=true;
	$Cloud32Flag=true;
	$Cloud33Flag=true;

	$CloudZoom3=2000;
	$CloudZoom3Pre=10000;
	Zoom("@絵Cloud3*", 0, $CloudZoom3Pre, $CloudZoom3Pre, null, true);

	Request("@CloudProcess31B", Start);//左
	Request("@CloudProcess32B", Start);//右
	Request("@CloudProcess33B", Start);//下
}

function CloudZoomProcess31(){
	Wait(100);

	while($Cloud31Flag){
		Zoom("@絵Cloud31", 900, $CloudZoom3, $CloudZoom3, Axl3, false);
		Fade("@絵Cloud31", 700, $CloudFade31, Axl3, false);
		Wait(700);
		Fade("@絵Cloud31", 200, 0, null, true);

		Fade("@絵Cloud31", 0, 0, null, true);
		Zoom("@絵Cloud31", 0, $CloudZoom3Pre, $CloudZoom3Pre, null, true);
	}
}

function CloudZoomProcess32(){
	Wait(200);

	while($Cloud32Flag){
		Zoom("@絵Cloud32", 800, $CloudZoom3, $CloudZoom3, Axl3, false);
		Fade("@絵Cloud32", 600, $CloudFade32, Axl3, false);
		Wait(600);
		Fade("@絵Cloud32", 200, 0, null, true);

		Fade("@絵Cloud32", 0, 0, null, false);
		Zoom("@絵Cloud32", 0, $CloudZoom3Pre, $CloudZoom3Pre, null, true);
	}
}

function CloudZoomProcess33(){
	Wait(300);

	while($Cloud33Flag){
		Zoom("@絵Cloud33", 1000, $CloudZoom3, $CloudZoom3, Axl3, false);
		Fade("@絵Cloud33", 800, $CloudFade33, Axl3, false);
		Wait(800);
		Fade("@絵Cloud33", 200, 0, null, true);

		Fade("@絵Cloud33", 0, 0, null, false);
		Zoom("@絵Cloud33", 0, $CloudZoom3Pre, $CloudZoom3Pre, null, true);
	}
}


function CloudZoomProcess31B(){
	Wait(100);

	while($Cloud31Flag){
		Zoom("@絵Cloud31", 650, $CloudZoom3, $CloudZoom3, Dxl3, false);
		Fade("@絵Cloud31", 200, $CloudFade31, Dxl3, false);
		Wait(200);
		Fade("@絵Cloud31", 450, 0, Dxl1, true);

		Fade("@絵Cloud31", 0, 0, null, true);
		Zoom("@絵Cloud31", 0, $CloudZoom3Pre, $CloudZoom3Pre, null, true);
	}
}

function CloudZoomProcess32B(){
	Wait(200);

	while($Cloud32Flag){
		Zoom("@絵Cloud32", 750, $CloudZoom3, $CloudZoom3, Dxl3, false);
		Fade("@絵Cloud32", 150, $CloudFade32, Dxl3, false);
		Wait(150);
		Fade("@絵Cloud32", 600, 0, Dxl1, true);

		Fade("@絵Cloud32", 0, 0, null, false);
		Zoom("@絵Cloud32", 0, $CloudZoom3Pre, $CloudZoom3Pre, null, true);
	}
}

function CloudZoomProcess33B(){
	Wait(300);

	while($Cloud33Flag){
		Zoom("@絵Cloud33", 1000, $CloudZoom3, $CloudZoom3, Dxl3, false);
		Fade("@絵Cloud33", 200, $CloudFade33, Axl3, false);
		Wait(200);
		Fade("@絵Cloud33", 800, 0, Dxl1, true);

		Fade("@絵Cloud33", 0, 0, null, false);
		Zoom("@絵Cloud33", 0, $CloudZoom3Pre, $CloudZoom3Pre, null, true);
	}
}



function CloudZoomVertex3(秒数,$CMoveX,$CMoveY,勢い,待ち){
	Move("@絵Cloud3*", 秒数, $CMoveX, $CMoveY, 勢い, 待ち);
}

function CloudZoomFade3(秒数,待ち){
	$Cloud31Flag=false;
	$Cloud32Flag=false;
	$Cloud33Flag=false;
	Fade("@絵Cloud3*", 秒数, 0, null, 待ち);
}

function CloudZoomDelete3(秒数,待ち){
	$Cloud31Flag=false;
	$Cloud32Flag=false;
	$Cloud33Flag=false;
	Fade("@絵Cloud3*", 秒数, 0, null, 待ち);
	Request("@CloudProcess3*", Disused);
	Request("@絵Cloud3*", Disused);
}








//========================================================//
..//揺れ
//========================================================//
...//１
function MoveFFP1($FlagNut_FFP1,$FlagTime_FFP1){
	CreateProcess("NutFFP1", 150, 0, 0, "ProcessFFP1");
	SetAlias("NutFFP1", "NutFFP1");
	Request("NutFFP1", Start);
}
function MoveFFP1stop(){
	Request("@NutFFP1", Disused);
	Request("@NutFFP1", Stop);
	Move($FlagNut_FFP1, 0, @0, @0, null, false);
}
function ProcessFFP1(){
	$FFP1x=0;
	$FFP1y=0;

	$FFP1X1 = - $FFP1x;
	$FFP1X36 = 5;
	$FFP1X35 = -10;
	$FFP1X34 = -10;
	$FFP1X33 = 5;
	$FFP1X32 = -10;
	$FFP1X31 = -5;
	$FFP1X30 = -10;
	$FFP1X29 = 5;
	$FFP1X28 = 0;
	$FFP1X27 = 5;
	$FFP1X26 = 10;
	$FFP1X25 = 10;
	$FFP1X24 = -10;
	$FFP1X23 = 5;
	$FFP1X22 = 0;
	$FFP1X21 = -5;
	$FFP1X20 = 5;
	$FFP1X19 = 0;
	$FFP1X18 = 5;
	$FFP1X17 = -10;
	$FFP1X16 = -5;
	$FFP1X15 = 5;
	$FFP1X14 = -10;
	$FFP1X13 = -5;
	$FFP1X12 = -10;
	$FFP1X11 = 5;
	$FFP1X10 = 0;
	$FFP1X9 = 5;
	$FFP1X8 = 10;
	$FFP1X7 = -5;
	$FFP1X6 = 10;
	$FFP1X5 = 5;
	$FFP1X4 = 0;
	$FFP1X3 = -5;
	$FFP1X2 = 5;

	$FFP1Y1 = - $FFP1y;
	$FFP1Y36 = -10;
	$FFP1Y35 = 5;
	$FFP1Y34 = -5;
	$FFP1Y33 = -10;
	$FFP1Y32 = 5;
	$FFP1Y31 = 0;
	$FFP1Y30 = 10;
	$FFP1Y29 = -10;
	$FFP1Y28 = 0;
	$FFP1Y27 = 10;
	$FFP1Y26 = -5;
	$FFP1Y25 = -10;
	$FFP1Y24 = 0;
	$FFP1Y23 = 5;
	$FFP1Y22 = 10;
	$FFP1Y21 = 15;
	$FFP1Y20 = 5;
	$FFP1Y19 = 0;
	$FFP1Y18 = -10;
	$FFP1Y17 = 10;
	$FFP1Y16 = -5;
	$FFP1Y15 = -10;
	$FFP1Y14 = 5;
	$FFP1Y13 = 0;
	$FFP1Y12 = 10;
	$FFP1Y11 = -10;
	$FFP1Y10 = 0;
	$FFP1Y9 = -10;
	$FFP1Y8 = 5;
	$FFP1Y7 = -5;
	$FFP1Y6 = 0;
	$FFP1Y5 = 5;
	$FFP1Y4 = -10;
	$FFP1Y3 = 5;
	$FFP1Y2 = -5;

	while(1){
		BezierMove($FlagNut_FFP1, $FlagTime_FFP1, (@0,@0){@$FFP1X2,@$FFP1Y2}{@$FFP1X3,@$FFP1Y3}(@$FFP1X4,@$FFP1Y4){@$FFP1X5,@$FFP1Y5}{@$FFP1X6,@$FFP1Y6}(@$FFP1X7,@$FFP1Y7){@$FFP1X8,@$FFP1Y8}{@$FFP1X9,@$FFP1Y9}(@$FFP1X10,@$FFP1Y10){@$FFP1X11,@$FFP1Y11}{@$FFP1X12,@$FFP1Y12}(@$FFP1X13,@$FFP1Y13){@$FFP1X14,@$FFP1Y14}{@$FFP1X15,@$FFP1Y15}(@$FFP1X16,@$FFP1Y16){@$FFP1X17,@$FFP1Y17}{@$FFP1X18,@$FFP1Y18}(@$FFP1X19,@$FFP1Y19){@$FFP1X20,@$FFP1Y20}{@$FFP1X21,@$FFP1Y21}(@$FFP1X22,@$FFP1Y22){@$FFP1X23,@$FFP1Y23}{@$FFP1X24,@$FFP1Y24}(@$FFP1X25,@$FFP1Y25){@$FFP1X26,@$FFP1Y26}{@$FFP1X27,@$FFP1Y27}(@$FFP1X28,@$FFP1Y28){@$FFP1X29,@$FFP1Y29}{@$FFP1X30,@$FFP1Y30}(@$FFP1X31,@$FFP1Y31){@$FFP1X32,@$FFP1Y32}{@$FFP1X33,@$FFP1Y33}(@$FFP1X34,@$FFP1Y34){@$FFP1X35,@$FFP1Y35}{@$FFP1X36,@$FFP1Y36}(@0,@0), null, true);
	}
}

...//２
function MoveFFP2($FlagNut_FFP2,$FlagTime_FFP2){
	CreateProcess("NutFFP2", 150, 0, 0, "ProcessFFP2");
	SetAlias("NutFFP2", "NutFFP2");
	Request("NutFFP2", Start);
}
function MoveFFP2stop(){
	Request("@NutFFP2", Disused);
	Request("@NutFFP2", Stop);
	Move($FlagNut_FFP2, 0, @0, @0, null, false);
}
function ProcessFFP2(){
	$FFP2x=0;
	$FFP2y=0;

	$FFP2X1 = - $FFP2x;
	$FFP2X36 = 5;
	$FFP2X35 = -10;
	$FFP2X34 = -10;
	$FFP2X33 = 5;
	$FFP2X32 = -10;
	$FFP2X31 = -5;
	$FFP2X30 = -10;
	$FFP2X29 = 5;
	$FFP2X28 = 0;
	$FFP2X27 = 5;
	$FFP2X26 = 10;
	$FFP2X25 = 10;
	$FFP2X24 = -10;
	$FFP2X23 = 5;
	$FFP2X22 = 0;
	$FFP2X21 = -5;
	$FFP2X20 = 5;
	$FFP2X19 = 0;
	$FFP2X18 = 5;
	$FFP2X17 = -10;
	$FFP2X16 = -5;
	$FFP2X15 = 5;
	$FFP2X14 = -10;
	$FFP2X13 = -5;
	$FFP2X12 = -10;
	$FFP2X11 = 5;
	$FFP2X10 = 0;
	$FFP2X9 = 5;
	$FFP2X8 = 10;
	$FFP2X7 = -5;
	$FFP2X6 = 10;
	$FFP2X5 = 5;
	$FFP2X4 = 0;
	$FFP2X3 = -5;
	$FFP2X2 = 5;

	$FFP2Y1 = - $FFP2y;
	$FFP2Y36 = -10;
	$FFP2Y35 = 5;
	$FFP2Y34 = -5;
	$FFP2Y33 = -10;
	$FFP2Y32 = 5;
	$FFP2Y31 = 0;
	$FFP2Y30 = 10;
	$FFP2Y29 = -10;
	$FFP2Y28 = 0;
	$FFP2Y27 = 10;
	$FFP2Y26 = -5;
	$FFP2Y25 = -10;
	$FFP2Y24 = 0;
	$FFP2Y23 = 5;
	$FFP2Y22 = 10;
	$FFP2Y21 = 15;
	$FFP2Y20 = 5;
	$FFP2Y19 = 0;
	$FFP2Y18 = -10;
	$FFP2Y17 = 10;
	$FFP2Y16 = -5;
	$FFP2Y15 = -10;
	$FFP2Y14 = 5;
	$FFP2Y13 = 0;
	$FFP2Y12 = 10;
	$FFP2Y11 = -10;
	$FFP2Y10 = 0;
	$FFP2Y9 = -10;
	$FFP2Y8 = 5;
	$FFP2Y7 = -5;
	$FFP2Y6 = 0;
	$FFP2Y5 = 5;
	$FFP2Y4 = -10;
	$FFP2Y3 = 5;
	$FFP2Y2 = -5;

	while(1){
		BezierMove($FlagNut_FFP2, $FlagTime_FFP2, (@0,@0){@$FFP2X2,@$FFP2Y2}{@$FFP2X3,@$FFP2Y3}(@$FFP2X4,@$FFP2Y4){@$FFP2X5,@$FFP2Y5}{@$FFP2X6,@$FFP2Y6}(@$FFP2X7,@$FFP2Y7){@$FFP2X8,@$FFP2Y8}{@$FFP2X9,@$FFP2Y9}(@$FFP2X10,@$FFP2Y10){@$FFP2X11,@$FFP2Y11}{@$FFP2X12,@$FFP2Y12}(@$FFP2X13,@$FFP2Y13){@$FFP2X14,@$FFP2Y14}{@$FFP2X15,@$FFP2Y15}(@$FFP2X16,@$FFP2Y16){@$FFP2X17,@$FFP2Y17}{@$FFP2X18,@$FFP2Y18}(@$FFP2X19,@$FFP2Y19){@$FFP2X20,@$FFP2Y20}{@$FFP2X21,@$FFP2Y21}(@$FFP2X22,@$FFP2Y22){@$FFP2X23,@$FFP2Y23}{@$FFP2X24,@$FFP2Y24}(@$FFP2X25,@$FFP2Y25){@$FFP2X26,@$FFP2Y26}{@$FFP2X27,@$FFP2Y27}(@$FFP2X28,@$FFP2Y28){@$FFP2X29,@$FFP2Y29}{@$FFP2X30,@$FFP2Y30}(@$FFP2X31,@$FFP2Y31){@$FFP2X32,@$FFP2Y32}{@$FFP2X33,@$FFP2Y33}(@$FFP2X34,@$FFP2Y34){@$FFP2X35,@$FFP2Y35}{@$FFP2X36,@$FFP2Y36}(@0,@0), null, true);
	}
}

//========================================================//
..//揺れ２
//========================================================//
...//１
function MoveFRP1($FlagNut_FRP1,$FlagTime_FRP1,$z1,$z2){
	$FRP1x=0;
	$FRP1y=0;

	$FRP1X1 = - $FRP1x;
	$FRP1X36 = Random($z1);
	$FRP1X35 = -Random($z1);
	$FRP1X34 = -Random($z1);
	$FRP1X33 = Random($z1);
	$FRP1X32 = -Random($z1);
	$FRP1X31 = -Random($z1);
	$FRP1X30 = -Random($z1);
	$FRP1X29 = Random($z1);
	$FRP1X28 = Random($z1);
	$FRP1X27 = Random($z1);
	$FRP1X26 = -Random($z1);
	$FRP1X25 = Random($z1);
	$FRP1X24 = Random($z1);
	$FRP1X23 = Random($z1);
	$FRP1X22 = Random($z1);
	$FRP1X21 = -Random($z1);
	$FRP1X20 = Random($z1);
	$FRP1X19 = Random($z1);
	$FRP1X18 = Random($z1);
	$FRP1X17 = -Random($z1);
	$FRP1X16 = -Random($z1);
	$FRP1X15 = Random($z1);
	$FRP1X14 = -Random($z1);
	$FRP1X13 = -Random($z1);
	$FRP1X12 = -Random($z1);
	$FRP1X11 = Random($z1);
	$FRP1X10 = Random($z1);
	$FRP1X9 = Random($z1);
	$FRP1X8 = Random($z1);
	$FRP1X7 = -Random($z1);
	$FRP1X6 = Random($z1);
	$FRP1X5 = Random($z1);
	$FRP1X4 = Random($z1);
	$FRP1X3 = -Random($z1);
	$FRP1X2 = Random($z1);


	$FRP1Y1 = - $FRP1y;
	$FRP1Y36 = -Random($z2);
	$FRP1Y35 = Random($z2);
	$FRP1Y34 = -Random($z2);
	$FRP1Y33 = -Random($z2);
	$FRP1Y32 = Random($z2);
	$FRP1Y31 = Random($z2);
	$FRP1Y30 = Random($z2);
	$FRP1Y29 = -Random($z2);
	$FRP1Y28 = Random($z2);
	$FRP1Y27 = -Random($z2);
	$FRP1Y26 = -Random($z2);
	$FRP1Y25 = -Random($z2);
	$FRP1Y24 = Random($z2);
	$FRP1Y23 = Random($z2);
	$FRP1Y22 = Random($z2);
	$FRP1Y21 = -Random($z2);
	$FRP1Y20 = Random($z2);
	$FRP1Y19 = Random($z2);
	$FRP1Y18 = -Random($z2);
	$FRP1Y17 = Random($z2);
	$FRP1Y16 = -Random($z2);
	$FRP1Y15 = -Random($z2);
	$FRP1Y14 = Random($z2);
	$FRP1Y13 = Random($z2);
	$FRP1Y12 = Random($z2);
	$FRP1Y11 = -Random($z2);
	$FRP1Y10 = Random($z2);
	$FRP1Y9 = -Random($z2);
	$FRP1Y8 = -Random($z2);
	$FRP1Y7 = -Random($z2);
	$FRP1Y6 = Random($z2);
	$FRP1Y5 = Random($z2);
	$FRP1Y4 = Random($z2);
	$FRP1Y3 = -Random($z2);
	$FRP1Y2 = Random($z2);

	CreateProcess("NutFRP1", 150, 0, 0, "ProcessFRP1");
	SetAlias("NutFRP1", "NutFRP1");
	Request("NutFRP1", Start);
}
function MoveFRP1stop(){
	Request("@NutFRP1", Disused);
	Request("@NutFRP1", Stop);
	Move($FlagNut_FRP1, 0, @0, @0, null, false);
}
function ProcessFRP1(){

	while(1){
		BezierMove($FlagNut_FRP1, $FlagTime_FRP1, (@0,@0){@$FRP1X2,@$FRP1Y2}{@$FRP1X3,@$FRP1Y3}(@$FRP1X4,@$FRP1Y4){@$FRP1X5,@$FRP1Y5}{@$FRP1X6,@$FRP1Y6}(@$FRP1X7,@$FRP1Y7){@$FRP1X8,@$FRP1Y8}{@$FRP1X9,@$FRP1Y9}(@$FRP1X10,@$FRP1Y10){@$FRP1X11,@$FRP1Y11}{@$FRP1X12,@$FRP1Y12}(@$FRP1X13,@$FRP1Y13){@$FRP1X14,@$FRP1Y14}{@$FRP1X15,@$FRP1Y15}(@$FRP1X16,@$FRP1Y16){@$FRP1X17,@$FRP1Y17}{@$FRP1X18,@$FRP1Y18}(@$FRP1X19,@$FRP1Y19){@$FRP1X20,@$FRP1Y20}{@$FRP1X21,@$FRP1Y21}(@$FRP1X22,@$FRP1Y22){@$FRP1X23,@$FRP1Y23}{@$FRP1X24,@$FRP1Y24}(@$FRP1X25,@$FRP1Y25){@$FRP1X26,@$FRP1Y26}{@$FRP1X27,@$FRP1Y27}(@$FRP1X28,@$FRP1Y28){@$FRP1X29,@$FRP1Y29}{@$FRP1X30,@$FRP1Y30}(@$FRP1X31,@$FRP1Y31){@$FRP1X32,@$FRP1Y32}{@$FRP1X33,@$FRP1Y33}(@$FRP1X34,@$FRP1Y34){@$FRP1X35,@$FRP1Y35}{@$FRP1X36,@$FRP1Y36}(@0,@0), null, true);
	}
}


...//２
function MoveFRP2($FlagNut_FRP2,$FlagTime_FRP2,$z1,$z2){
	$FRP2x=0;
	$FRP2y=0;

	$FRP2X1 = - $FRP2x;
	$FRP2X36 = Random($z1);
	$FRP2X35 = -Random($z1);
	$FRP2X34 = -Random($z1);
	$FRP2X33 = Random($z1);
	$FRP2X32 = -Random($z1);
	$FRP2X31 = -Random($z1);
	$FRP2X30 = -Random($z1);
	$FRP2X29 = Random($z1);
	$FRP2X28 = Random($z1);
	$FRP2X27 = Random($z1);
	$FRP2X26 = -Random($z1);
	$FRP2X25 = Random($z1);
	$FRP2X24 = Random($z1);
	$FRP2X23 = Random($z1);
	$FRP2X22 = Random($z1);
	$FRP2X21 = -Random($z1);
	$FRP2X20 = Random($z1);
	$FRP2X19 = Random($z1);
	$FRP2X18 = Random($z1);
	$FRP2X17 = -Random($z1);
	$FRP2X16 = -Random($z1);
	$FRP2X15 = Random($z1);
	$FRP2X14 = -Random($z1);
	$FRP2X13 = -Random($z1);
	$FRP2X12 = -Random($z1);
	$FRP2X11 = Random($z1);
	$FRP2X10 = Random($z1);
	$FRP2X9 = Random($z1);
	$FRP2X8 = Random($z1);
	$FRP2X7 = -Random($z1);
	$FRP2X6 = Random($z1);
	$FRP2X5 = Random($z1);
	$FRP2X4 = Random($z1);
	$FRP2X3 = -Random($z1);
	$FRP2X2 = Random($z1);


	$FRP2Y1 = - $FRP2y;
	$FRP2Y36 = -Random($z2);
	$FRP2Y35 = Random($z2);
	$FRP2Y34 = -Random($z2);
	$FRP2Y33 = -Random($z2);
	$FRP2Y32 = Random($z2);
	$FRP2Y31 = Random($z2);
	$FRP2Y30 = Random($z2);
	$FRP2Y29 = -Random($z2);
	$FRP2Y28 = Random($z2);
	$FRP2Y27 = -Random($z2);
	$FRP2Y26 = -Random($z2);
	$FRP2Y25 = -Random($z2);
	$FRP2Y24 = Random($z2);
	$FRP2Y23 = Random($z2);
	$FRP2Y22 = Random($z2);
	$FRP2Y21 = -Random($z2);
	$FRP2Y20 = Random($z2);
	$FRP2Y19 = Random($z2);
	$FRP2Y18 = -Random($z2);
	$FRP2Y17 = Random($z2);
	$FRP2Y16 = -Random($z2);
	$FRP2Y15 = -Random($z2);
	$FRP2Y14 = Random($z2);
	$FRP2Y13 = Random($z2);
	$FRP2Y12 = Random($z2);
	$FRP2Y11 = -Random($z2);
	$FRP2Y10 = Random($z2);
	$FRP2Y9 = -Random($z2);
	$FRP2Y8 = -Random($z2);
	$FRP2Y7 = -Random($z2);
	$FRP2Y6 = Random($z2);
	$FRP2Y5 = Random($z2);
	$FRP2Y4 = Random($z2);
	$FRP2Y3 = -Random($z2);
	$FRP2Y2 = Random($z2);

	CreateProcess("NutFRP2", 150, 0, 0, "ProcessFRP2");
	SetAlias("NutFRP2", "NutFRP2");
	Request("NutFRP2", Start);
}
function MoveFRP2stop(){
	Request("@NutFRP2", Disused);
	Request("@NutFRP2", Stop);
	Move($FlagNut_FRP2, 0, @0, @0, null, false);
}
function ProcessFRP2(){
	while(1){
		BezierMove($FlagNut_FRP2, $FlagTime_FRP2, (@0,@0){@$FRP2X2,@$FRP2Y2}{@$FRP2X3,@$FRP2Y3}(@$FRP2X4,@$FRP2Y4){@$FRP2X5,@$FRP2Y5}{@$FRP2X6,@$FRP2Y6}(@$FRP2X7,@$FRP2Y7){@$FRP2X8,@$FRP2Y8}{@$FRP2X9,@$FRP2Y9}(@$FRP2X10,@$FRP2Y10){@$FRP2X11,@$FRP2Y11}{@$FRP2X12,@$FRP2Y12}(@$FRP2X13,@$FRP2Y13){@$FRP2X14,@$FRP2Y14}{@$FRP2X15,@$FRP2Y15}(@$FRP2X16,@$FRP2Y16){@$FRP2X17,@$FRP2Y17}{@$FRP2X18,@$FRP2Y18}(@$FRP2X19,@$FRP2Y19){@$FRP2X20,@$FRP2Y20}{@$FRP2X21,@$FRP2Y21}(@$FRP2X22,@$FRP2Y22){@$FRP2X23,@$FRP2Y23}{@$FRP2X24,@$FRP2Y24}(@$FRP2X25,@$FRP2Y25){@$FRP2X26,@$FRP2Y26}{@$FRP2X27,@$FRP2Y27}(@$FRP2X28,@$FRP2Y28){@$FRP2X29,@$FRP2Y29}{@$FRP2X30,@$FRP2Y30}(@$FRP2X31,@$FRP2Y31){@$FRP2X32,@$FRP2Y32}{@$FRP2X33,@$FRP2Y33}(@$FRP2X34,@$FRP2Y34){@$FRP2X35,@$FRP2Y35}{@$FRP2X36,@$FRP2Y36}(@0,@0), null, true);
	}
}


...//３
function MoveFRP3($FlagNut_FRP3,$FlagTime_FRP3,$z1,$z2){
	$FRP3x=0;
	$FRP3y=0;

	$FRP3X1 = - $FRP3x;
	$FRP3X36 = Random($z1);
	$FRP3X35 = -Random($z1);
	$FRP3X34 = -Random($z1);
	$FRP3X33 = Random($z1);
	$FRP3X32 = -Random($z1);
	$FRP3X31 = -Random($z1);
	$FRP3X30 = -Random($z1);
	$FRP3X29 = Random($z1);
	$FRP3X28 = Random($z1);
	$FRP3X27 = Random($z1);
	$FRP3X26 = -Random($z1);
	$FRP3X25 = Random($z1);
	$FRP3X24 = Random($z1);
	$FRP3X23 = Random($z1);
	$FRP3X22 = Random($z1);
	$FRP3X21 = -Random($z1);
	$FRP3X20 = Random($z1);
	$FRP3X19 = Random($z1);
	$FRP3X18 = Random($z1);
	$FRP3X17 = -Random($z1);
	$FRP3X16 = -Random($z1);
	$FRP3X15 = Random($z1);
	$FRP3X14 = -Random($z1);
	$FRP3X13 = -Random($z1);
	$FRP3X12 = -Random($z1);
	$FRP3X11 = Random($z1);
	$FRP3X10 = Random($z1);
	$FRP3X9 = Random($z1);
	$FRP3X8 = Random($z1);
	$FRP3X7 = -Random($z1);
	$FRP3X6 = Random($z1);
	$FRP3X5 = Random($z1);
	$FRP3X4 = Random($z1);
	$FRP3X3 = -Random($z1);
	$FRP3X2 = Random($z1);


	$FRP3Y1 = - $FRP3y;
	$FRP3Y36 = -Random($z2);
	$FRP3Y35 = Random($z2);
	$FRP3Y34 = -Random($z2);
	$FRP3Y33 = -Random($z2);
	$FRP3Y32 = Random($z2);
	$FRP3Y31 = Random($z2);
	$FRP3Y30 = Random($z2);
	$FRP3Y29 = -Random($z2);
	$FRP3Y28 = Random($z2);
	$FRP3Y27 = -Random($z2);
	$FRP3Y26 = -Random($z2);
	$FRP3Y25 = -Random($z2);
	$FRP3Y24 = Random($z2);
	$FRP3Y23 = Random($z2);
	$FRP3Y22 = Random($z2);
	$FRP3Y21 = -Random($z2);
	$FRP3Y20 = Random($z2);
	$FRP3Y19 = Random($z2);
	$FRP3Y18 = -Random($z2);
	$FRP3Y17 = Random($z2);
	$FRP3Y16 = -Random($z2);
	$FRP3Y15 = -Random($z2);
	$FRP3Y14 = Random($z2);
	$FRP3Y13 = Random($z2);
	$FRP3Y12 = Random($z2);
	$FRP3Y11 = -Random($z2);
	$FRP3Y10 = Random($z2);
	$FRP3Y9 = -Random($z2);
	$FRP3Y8 = -Random($z2);
	$FRP3Y7 = -Random($z2);
	$FRP3Y6 = Random($z2);
	$FRP3Y5 = Random($z2);
	$FRP3Y4 = Random($z2);
	$FRP3Y3 = -Random($z2);
	$FRP3Y2 = Random($z2);

	CreateProcess("NutFRP3", 150, 0, 0, "ProcessFRP3");
	SetAlias("NutFRP3", "NutFRP3");
	Request("NutFRP3", Start);
}
function MoveFRP3stop(){
	Request("@NutFRP3", Disused);
	Request("@NutFRP3", Stop);
	Move($FlagNut_FRP3, 0, @0, @0, null, false);
}
function ProcessFRP3(){
	while(1){
		BezierMove($FlagNut_FRP3, $FlagTime_FRP3, (@0,@0){@$FRP3X2,@$FRP3Y2}{@$FRP3X3,@$FRP3Y3}(@$FRP3X4,@$FRP3Y4){@$FRP3X5,@$FRP3Y5}{@$FRP3X6,@$FRP3Y6}(@$FRP3X7,@$FRP3Y7){@$FRP3X8,@$FRP3Y8}{@$FRP3X9,@$FRP3Y9}(@$FRP3X10,@$FRP3Y10){@$FRP3X11,@$FRP3Y11}{@$FRP3X12,@$FRP3Y12}(@$FRP3X13,@$FRP3Y13){@$FRP3X14,@$FRP3Y14}{@$FRP3X15,@$FRP3Y15}(@$FRP3X16,@$FRP3Y16){@$FRP3X17,@$FRP3Y17}{@$FRP3X18,@$FRP3Y18}(@$FRP3X19,@$FRP3Y19){@$FRP3X20,@$FRP3Y20}{@$FRP3X21,@$FRP3Y21}(@$FRP3X22,@$FRP3Y22){@$FRP3X23,@$FRP3Y23}{@$FRP3X24,@$FRP3Y24}(@$FRP3X25,@$FRP3Y25){@$FRP3X26,@$FRP3Y26}{@$FRP3X27,@$FRP3Y27}(@$FRP3X28,@$FRP3Y28){@$FRP3X29,@$FRP3Y29}{@$FRP3X30,@$FRP3Y30}(@$FRP3X31,@$FRP3Y31){@$FRP3X32,@$FRP3Y32}{@$FRP3X33,@$FRP3Y33}(@$FRP3X34,@$FRP3Y34){@$FRP3X35,@$FRP3Y35}{@$FRP3X36,@$FRP3Y36}(@0,@0), null, true);
	}
}

...//４
function MoveFRP4($FlagNut_FRP4,$FlagTime_FRP4,$z1,$z2){
	$FRP4x=0;
	$FRP4y=0;

	$FRP4X1 = - $FRP4x;
	$FRP4X36 = Random($z1);
	$FRP4X35 = -Random($z1);
	$FRP4X34 = -Random($z1);
	$FRP4X33 = Random($z1);
	$FRP4X32 = -Random($z1);
	$FRP4X31 = -Random($z1);
	$FRP4X30 = -Random($z1);
	$FRP4X29 = Random($z1);
	$FRP4X28 = Random($z1);
	$FRP4X27 = Random($z1);
	$FRP4X26 = -Random($z1);
	$FRP4X25 = Random($z1);
	$FRP4X24 = Random($z1);
	$FRP4X23 = Random($z1);
	$FRP4X22 = Random($z1);
	$FRP4X21 = -Random($z1);
	$FRP4X20 = Random($z1);
	$FRP4X19 = Random($z1);
	$FRP4X18 = Random($z1);
	$FRP4X17 = -Random($z1);
	$FRP4X16 = -Random($z1);
	$FRP4X15 = Random($z1);
	$FRP4X14 = -Random($z1);
	$FRP4X13 = -Random($z1);
	$FRP4X12 = -Random($z1);
	$FRP4X11 = Random($z1);
	$FRP4X10 = Random($z1);
	$FRP4X9 = Random($z1);
	$FRP4X8 = Random($z1);
	$FRP4X7 = -Random($z1);
	$FRP4X6 = Random($z1);
	$FRP4X5 = Random($z1);
	$FRP4X4 = Random($z1);
	$FRP4X3 = -Random($z1);
	$FRP4X2 = Random($z1);


	$FRP4Y1 = - $FRP4y;
	$FRP4Y36 = -Random($z2);
	$FRP4Y35 = Random($z2);
	$FRP4Y34 = -Random($z2);
	$FRP4Y33 = -Random($z2);
	$FRP4Y32 = Random($z2);
	$FRP4Y31 = Random($z2);
	$FRP4Y30 = Random($z2);
	$FRP4Y29 = -Random($z2);
	$FRP4Y28 = Random($z2);
	$FRP4Y27 = -Random($z2);
	$FRP4Y26 = -Random($z2);
	$FRP4Y25 = -Random($z2);
	$FRP4Y24 = Random($z2);
	$FRP4Y23 = Random($z2);
	$FRP4Y22 = Random($z2);
	$FRP4Y21 = -Random($z2);
	$FRP4Y20 = Random($z2);
	$FRP4Y19 = Random($z2);
	$FRP4Y18 = -Random($z2);
	$FRP4Y17 = Random($z2);
	$FRP4Y16 = -Random($z2);
	$FRP4Y15 = -Random($z2);
	$FRP4Y14 = Random($z2);
	$FRP4Y13 = Random($z2);
	$FRP4Y12 = Random($z2);
	$FRP4Y11 = -Random($z2);
	$FRP4Y10 = Random($z2);
	$FRP4Y9 = -Random($z2);
	$FRP4Y8 = -Random($z2);
	$FRP4Y7 = -Random($z2);
	$FRP4Y6 = Random($z2);
	$FRP4Y5 = Random($z2);
	$FRP4Y4 = Random($z2);
	$FRP4Y3 = -Random($z2);
	$FRP4Y2 = Random($z2);

	CreateProcess("NutFRP4", 150, 0, 0, "ProcessFRP4");
	SetAlias("NutFRP4", "NutFRP4");
	Request("NutFRP4", Start);
}
function MoveFRP4stop(){
	Request("@NutFRP4", Disused);
	Request("@NutFRP4", Stop);
	Move($FlagNut_FRP4, 0, @0, @0, null, false);
}
function ProcessFRP4(){
	while(1){
		BezierMove($FlagNut_FRP4, $FlagTime_FRP4, (@0,@0){@$FRP4X2,@$FRP4Y2}{@$FRP4X3,@$FRP4Y3}(@$FRP4X4,@$FRP4Y4){@$FRP4X5,@$FRP4Y5}{@$FRP4X6,@$FRP4Y6}(@$FRP4X7,@$FRP4Y7){@$FRP4X8,@$FRP4Y8}{@$FRP4X9,@$FRP4Y9}(@$FRP4X10,@$FRP4Y10){@$FRP4X11,@$FRP4Y11}{@$FRP4X12,@$FRP4Y12}(@$FRP4X13,@$FRP4Y13){@$FRP4X14,@$FRP4Y14}{@$FRP4X15,@$FRP4Y15}(@$FRP4X16,@$FRP4Y16){@$FRP4X17,@$FRP4Y17}{@$FRP4X18,@$FRP4Y18}(@$FRP4X19,@$FRP4Y19){@$FRP4X20,@$FRP4Y20}{@$FRP4X21,@$FRP4Y21}(@$FRP4X22,@$FRP4Y22){@$FRP4X23,@$FRP4Y23}{@$FRP4X24,@$FRP4Y24}(@$FRP4X25,@$FRP4Y25){@$FRP4X26,@$FRP4Y26}{@$FRP4X27,@$FRP4Y27}(@$FRP4X28,@$FRP4Y28){@$FRP4X29,@$FRP4Y29}{@$FRP4X30,@$FRP4Y30}(@$FRP4X31,@$FRP4Y31){@$FRP4X32,@$FRP4Y32}{@$FRP4X33,@$FRP4Y33}(@$FRP4X34,@$FRP4Y34){@$FRP4X35,@$FRP4Y35}{@$FRP4X36,@$FRP4Y36}(@0,@0), null, true);
	}
}


...//５
function MoveFRP5($FlagNut_FRP5,$FlagTime_FRP5,$z1,$z2){
	$FRP5x=0;
	$FRP5y=0;

	$FRP5X1 = - $FRP5x;
	$FRP5X36 = Random($z1);
	$FRP5X35 = -Random($z1);
	$FRP5X34 = -Random($z1);
	$FRP5X33 = Random($z1);
	$FRP5X32 = -Random($z1);
	$FRP5X31 = -Random($z1);
	$FRP5X30 = -Random($z1);
	$FRP5X29 = Random($z1);
	$FRP5X28 = Random($z1);
	$FRP5X27 = Random($z1);
	$FRP5X26 = -Random($z1);
	$FRP5X25 = Random($z1);
	$FRP5X24 = Random($z1);
	$FRP5X23 = Random($z1);
	$FRP5X22 = Random($z1);
	$FRP5X21 = -Random($z1);
	$FRP5X20 = Random($z1);
	$FRP5X19 = Random($z1);
	$FRP5X18 = Random($z1);
	$FRP5X17 = -Random($z1);
	$FRP5X16 = -Random($z1);
	$FRP5X15 = Random($z1);
	$FRP5X14 = -Random($z1);
	$FRP5X13 = -Random($z1);
	$FRP5X12 = -Random($z1);
	$FRP5X11 = Random($z1);
	$FRP5X10 = Random($z1);
	$FRP5X9 = Random($z1);
	$FRP5X8 = Random($z1);
	$FRP5X7 = -Random($z1);
	$FRP5X6 = Random($z1);
	$FRP5X5 = Random($z1);
	$FRP5X4 = Random($z1);
	$FRP5X3 = -Random($z1);
	$FRP5X2 = Random($z1);


	$FRP5Y1 = - $FRP5y;
	$FRP5Y36 = -Random($z2);
	$FRP5Y35 = Random($z2);
	$FRP5Y34 = -Random($z2);
	$FRP5Y33 = -Random($z2);
	$FRP5Y32 = Random($z2);
	$FRP5Y31 = Random($z2);
	$FRP5Y30 = Random($z2);
	$FRP5Y29 = -Random($z2);
	$FRP5Y28 = Random($z2);
	$FRP5Y27 = -Random($z2);
	$FRP5Y26 = -Random($z2);
	$FRP5Y25 = -Random($z2);
	$FRP5Y24 = Random($z2);
	$FRP5Y23 = Random($z2);
	$FRP5Y22 = Random($z2);
	$FRP5Y21 = -Random($z2);
	$FRP5Y20 = Random($z2);
	$FRP5Y19 = Random($z2);
	$FRP5Y18 = -Random($z2);
	$FRP5Y17 = Random($z2);
	$FRP5Y16 = -Random($z2);
	$FRP5Y15 = -Random($z2);
	$FRP5Y14 = Random($z2);
	$FRP5Y13 = Random($z2);
	$FRP5Y12 = Random($z2);
	$FRP5Y11 = -Random($z2);
	$FRP5Y10 = Random($z2);
	$FRP5Y9 = -Random($z2);
	$FRP5Y8 = -Random($z2);
	$FRP5Y7 = -Random($z2);
	$FRP5Y6 = Random($z2);
	$FRP5Y5 = Random($z2);
	$FRP5Y4 = Random($z2);
	$FRP5Y3 = -Random($z2);
	$FRP5Y2 = Random($z2);

	CreateProcess("NutFRP5", 150, 0, 0, "ProcessFRP5");
	SetAlias("NutFRP5", "NutFRP5");
	Request("NutFRP5", Start);
}
function MoveFRP5stop(){
	Request("@NutFRP5", Disused);
	Request("@NutFRP5", Stop);
	Move($FlagNut_FRP5, 0, @0, @0, null, false);
}
function ProcessFRP5(){
	while(1){
		BezierMove($FlagNut_FRP5, $FlagTime_FRP5, (@0,@0){@$FRP5X2,@$FRP5Y2}{@$FRP5X3,@$FRP5Y3}(@$FRP5X4,@$FRP5Y4){@$FRP5X5,@$FRP5Y5}{@$FRP5X6,@$FRP5Y6}(@$FRP5X7,@$FRP5Y7){@$FRP5X8,@$FRP5Y8}{@$FRP5X9,@$FRP5Y9}(@$FRP5X10,@$FRP5Y10){@$FRP5X11,@$FRP5Y11}{@$FRP5X12,@$FRP5Y12}(@$FRP5X13,@$FRP5Y13){@$FRP5X14,@$FRP5Y14}{@$FRP5X15,@$FRP5Y15}(@$FRP5X16,@$FRP5Y16){@$FRP5X17,@$FRP5Y17}{@$FRP5X18,@$FRP5Y18}(@$FRP5X19,@$FRP5Y19){@$FRP5X20,@$FRP5Y20}{@$FRP5X21,@$FRP5Y21}(@$FRP5X22,@$FRP5Y22){@$FRP5X23,@$FRP5Y23}{@$FRP5X24,@$FRP5Y24}(@$FRP5X25,@$FRP5Y25){@$FRP5X26,@$FRP5Y26}{@$FRP5X27,@$FRP5Y27}(@$FRP5X28,@$FRP5Y28){@$FRP5X29,@$FRP5Y29}{@$FRP5X30,@$FRP5Y30}(@$FRP5X31,@$FRP5Y31){@$FRP5X32,@$FRP5Y32}{@$FRP5X33,@$FRP5Y33}(@$FRP5X34,@$FRP5Y34){@$FRP5X35,@$FRP5Y35}{@$FRP5X36,@$FRP5Y36}(@0,@0), null, true);
	}
}

...//６
function MoveFRP6($FlagNut_FRP6,$FlagTime_FRP6,$z1,$z2){
	$FRP6x=0;
	$FRP6y=0;

	$FRP6X1 = - $FRP6x;
	$FRP6X36 = Random($z1);
	$FRP6X35 = -Random($z1);
	$FRP6X34 = -Random($z1);
	$FRP6X33 = Random($z1);
	$FRP6X32 = -Random($z1);
	$FRP6X31 = -Random($z1);
	$FRP6X30 = -Random($z1);
	$FRP6X29 = Random($z1);
	$FRP6X28 = Random($z1);
	$FRP6X27 = Random($z1);
	$FRP6X26 = -Random($z1);
	$FRP6X25 = Random($z1);
	$FRP6X24 = Random($z1);
	$FRP6X23 = Random($z1);
	$FRP6X22 = Random($z1);
	$FRP6X21 = -Random($z1);
	$FRP6X20 = Random($z1);
	$FRP6X19 = Random($z1);
	$FRP6X18 = Random($z1);
	$FRP6X17 = -Random($z1);
	$FRP6X16 = -Random($z1);
	$FRP6X15 = Random($z1);
	$FRP6X14 = -Random($z1);
	$FRP6X13 = -Random($z1);
	$FRP6X12 = -Random($z1);
	$FRP6X11 = Random($z1);
	$FRP6X10 = Random($z1);
	$FRP6X9 = Random($z1);
	$FRP6X8 = Random($z1);
	$FRP6X7 = -Random($z1);
	$FRP6X6 = Random($z1);
	$FRP6X5 = Random($z1);
	$FRP6X4 = Random($z1);
	$FRP6X3 = -Random($z1);
	$FRP6X2 = Random($z1);


	$FRP6Y1 = - $FRP6y;
	$FRP6Y36 = -Random($z2);
	$FRP6Y35 = Random($z2);
	$FRP6Y34 = -Random($z2);
	$FRP6Y33 = -Random($z2);
	$FRP6Y32 = Random($z2);
	$FRP6Y31 = Random($z2);
	$FRP6Y30 = Random($z2);
	$FRP6Y29 = -Random($z2);
	$FRP6Y28 = Random($z2);
	$FRP6Y27 = -Random($z2);
	$FRP6Y26 = -Random($z2);
	$FRP6Y25 = -Random($z2);
	$FRP6Y24 = Random($z2);
	$FRP6Y23 = Random($z2);
	$FRP6Y22 = Random($z2);
	$FRP6Y21 = -Random($z2);
	$FRP6Y20 = Random($z2);
	$FRP6Y19 = Random($z2);
	$FRP6Y18 = -Random($z2);
	$FRP6Y17 = Random($z2);
	$FRP6Y16 = -Random($z2);
	$FRP6Y15 = -Random($z2);
	$FRP6Y14 = Random($z2);
	$FRP6Y13 = Random($z2);
	$FRP6Y12 = Random($z2);
	$FRP6Y11 = -Random($z2);
	$FRP6Y10 = Random($z2);
	$FRP6Y9 = -Random($z2);
	$FRP6Y8 = -Random($z2);
	$FRP6Y7 = -Random($z2);
	$FRP6Y6 = Random($z2);
	$FRP6Y5 = Random($z2);
	$FRP6Y4 = Random($z2);
	$FRP6Y3 = -Random($z2);
	$FRP6Y2 = Random($z2);

	CreateProcess("NutFRP6", 150, 0, 0, "ProcessFRP6");
	SetAlias("NutFRP6", "NutFRP6");
	Request("NutFRP6", Start);
}
function MoveFRP6stop(){
	Request("@NutFRP6", Disused);
	Request("@NutFRP6", Stop);
	Move($FlagNut_FRP6, 0, @0, @0, null, false);
}
function ProcessFRP6(){
	while(1){
		BezierMove($FlagNut_FRP6, $FlagTime_FRP6, (@0,@0){@$FRP6X2,@$FRP6Y2}{@$FRP6X3,@$FRP6Y3}(@$FRP6X4,@$FRP6Y4){@$FRP6X5,@$FRP6Y5}{@$FRP6X6,@$FRP6Y6}(@$FRP6X7,@$FRP6Y7){@$FRP6X8,@$FRP6Y8}{@$FRP6X9,@$FRP6Y9}(@$FRP6X10,@$FRP6Y10){@$FRP6X11,@$FRP6Y11}{@$FRP6X12,@$FRP6Y12}(@$FRP6X13,@$FRP6Y13){@$FRP6X14,@$FRP6Y14}{@$FRP6X15,@$FRP6Y15}(@$FRP6X16,@$FRP6Y16){@$FRP6X17,@$FRP6Y17}{@$FRP6X18,@$FRP6Y18}(@$FRP6X19,@$FRP6Y19){@$FRP6X20,@$FRP6Y20}{@$FRP6X21,@$FRP6Y21}(@$FRP6X22,@$FRP6Y22){@$FRP6X23,@$FRP6Y23}{@$FRP6X24,@$FRP6Y24}(@$FRP6X25,@$FRP6Y25){@$FRP6X26,@$FRP6Y26}{@$FRP6X27,@$FRP6Y27}(@$FRP6X28,@$FRP6Y28){@$FRP6X29,@$FRP6Y29}{@$FRP6X30,@$FRP6Y30}(@$FRP6X31,@$FRP6Y31){@$FRP6X32,@$FRP6Y32}{@$FRP6X33,@$FRP6Y33}(@$FRP6X34,@$FRP6Y34){@$FRP6X35,@$FRP6Y35}{@$FRP6X36,@$FRP6Y36}(@0,@0), null, true);
	}
}

...//７
function MoveFRP7($FlagNut_FRP7,$FlagTime_FRP7,$z1,$z2){
	$FRP7x=0;
	$FRP7y=0;

	$FRP7X1 = - $FRP7x;
	$FRP7X36 = Random($z1);
	$FRP7X35 = -Random($z1);
	$FRP7X34 = -Random($z1);
	$FRP7X33 = Random($z1);
	$FRP7X32 = -Random($z1);
	$FRP7X31 = -Random($z1);
	$FRP7X30 = -Random($z1);
	$FRP7X29 = Random($z1);
	$FRP7X28 = Random($z1);
	$FRP7X27 = Random($z1);
	$FRP7X26 = -Random($z1);
	$FRP7X25 = Random($z1);
	$FRP7X24 = Random($z1);
	$FRP7X23 = Random($z1);
	$FRP7X22 = Random($z1);
	$FRP7X21 = -Random($z1);
	$FRP7X20 = Random($z1);
	$FRP7X19 = Random($z1);
	$FRP7X18 = Random($z1);
	$FRP7X17 = -Random($z1);
	$FRP7X16 = -Random($z1);
	$FRP7X15 = Random($z1);
	$FRP7X14 = -Random($z1);
	$FRP7X13 = -Random($z1);
	$FRP7X12 = -Random($z1);
	$FRP7X11 = Random($z1);
	$FRP7X10 = Random($z1);
	$FRP7X9 = Random($z1);
	$FRP7X8 = Random($z1);
	$FRP7X7 = -Random($z1);
	$FRP7X6 = Random($z1);
	$FRP7X5 = Random($z1);
	$FRP7X4 = Random($z1);
	$FRP7X3 = -Random($z1);
	$FRP7X2 = Random($z1);


	$FRP7Y1 = - $FRP7y;
	$FRP7Y36 = -Random($z2);
	$FRP7Y35 = Random($z2);
	$FRP7Y34 = -Random($z2);
	$FRP7Y33 = -Random($z2);
	$FRP7Y32 = Random($z2);
	$FRP7Y31 = Random($z2);
	$FRP7Y30 = Random($z2);
	$FRP7Y29 = -Random($z2);
	$FRP7Y28 = Random($z2);
	$FRP7Y27 = -Random($z2);
	$FRP7Y26 = -Random($z2);
	$FRP7Y25 = -Random($z2);
	$FRP7Y24 = Random($z2);
	$FRP7Y23 = Random($z2);
	$FRP7Y22 = Random($z2);
	$FRP7Y21 = -Random($z2);
	$FRP7Y20 = Random($z2);
	$FRP7Y19 = Random($z2);
	$FRP7Y18 = -Random($z2);
	$FRP7Y17 = Random($z2);
	$FRP7Y16 = -Random($z2);
	$FRP7Y15 = -Random($z2);
	$FRP7Y14 = Random($z2);
	$FRP7Y13 = Random($z2);
	$FRP7Y12 = Random($z2);
	$FRP7Y11 = -Random($z2);
	$FRP7Y10 = Random($z2);
	$FRP7Y9 = -Random($z2);
	$FRP7Y8 = -Random($z2);
	$FRP7Y7 = -Random($z2);
	$FRP7Y6 = Random($z2);
	$FRP7Y5 = Random($z2);
	$FRP7Y4 = Random($z2);
	$FRP7Y3 = -Random($z2);
	$FRP7Y2 = Random($z2);

	CreateProcess("NutFRP7", 150, 0, 0, "ProcessFRP7");
	SetAlias("NutFRP7", "NutFRP7");
	Request("NutFRP7", Start);
}
function MoveFRP7stop(){
	Request("@NutFRP7", Disused);
	Request("@NutFRP7", Stop);
	Move($FlagNut_FRP7, 0, @0, @0, null, false);
}
function ProcessFRP7(){
	while(1){
		BezierMove($FlagNut_FRP7, $FlagTime_FRP7, (@0,@0){@$FRP7X2,@$FRP7Y2}{@$FRP7X3,@$FRP7Y3}(@$FRP7X4,@$FRP7Y4){@$FRP7X5,@$FRP7Y5}{@$FRP7X6,@$FRP7Y6}(@$FRP7X7,@$FRP7Y7){@$FRP7X8,@$FRP7Y8}{@$FRP7X9,@$FRP7Y9}(@$FRP7X10,@$FRP7Y10){@$FRP7X11,@$FRP7Y11}{@$FRP7X12,@$FRP7Y12}(@$FRP7X13,@$FRP7Y13){@$FRP7X14,@$FRP7Y14}{@$FRP7X15,@$FRP7Y15}(@$FRP7X16,@$FRP7Y16){@$FRP7X17,@$FRP7Y17}{@$FRP7X18,@$FRP7Y18}(@$FRP7X19,@$FRP7Y19){@$FRP7X20,@$FRP7Y20}{@$FRP7X21,@$FRP7Y21}(@$FRP7X22,@$FRP7Y22){@$FRP7X23,@$FRP7Y23}{@$FRP7X24,@$FRP7Y24}(@$FRP7X25,@$FRP7Y25){@$FRP7X26,@$FRP7Y26}{@$FRP7X27,@$FRP7Y27}(@$FRP7X28,@$FRP7Y28){@$FRP7X29,@$FRP7Y29}{@$FRP7X30,@$FRP7Y30}(@$FRP7X31,@$FRP7Y31){@$FRP7X32,@$FRP7Y32}{@$FRP7X33,@$FRP7Y33}(@$FRP7X34,@$FRP7Y34){@$FRP7X35,@$FRP7Y35}{@$FRP7X36,@$FRP7Y36}(@0,@0), null, true);
	}
}

...//８
function MoveFRP8($FlagNut_FRP8,$FlagTime_FRP8,$z1,$z2){
	$FRP8x=0;
	$FRP8y=0;

	$FRP8X1 = - $FRP8x;
	$FRP8X36 = Random($z1);
	$FRP8X35 = -Random($z1);
	$FRP8X34 = -Random($z1);
	$FRP8X33 = Random($z1);
	$FRP8X32 = -Random($z1);
	$FRP8X31 = -Random($z1);
	$FRP8X30 = -Random($z1);
	$FRP8X29 = Random($z1);
	$FRP8X28 = Random($z1);
	$FRP8X27 = Random($z1);
	$FRP8X26 = -Random($z1);
	$FRP8X25 = Random($z1);
	$FRP8X24 = Random($z1);
	$FRP8X23 = Random($z1);
	$FRP8X22 = Random($z1);
	$FRP8X21 = -Random($z1);
	$FRP8X20 = Random($z1);
	$FRP8X19 = Random($z1);
	$FRP8X18 = Random($z1);
	$FRP8X17 = -Random($z1);
	$FRP8X16 = -Random($z1);
	$FRP8X15 = Random($z1);
	$FRP8X14 = -Random($z1);
	$FRP8X13 = -Random($z1);
	$FRP8X12 = -Random($z1);
	$FRP8X11 = Random($z1);
	$FRP8X10 = Random($z1);
	$FRP8X9 = Random($z1);
	$FRP8X8 = Random($z1);
	$FRP8X7 = -Random($z1);
	$FRP8X6 = Random($z1);
	$FRP8X5 = Random($z1);
	$FRP8X4 = Random($z1);
	$FRP8X3 = -Random($z1);
	$FRP8X2 = Random($z1);


	$FRP8Y1 = - $FRP8y;
	$FRP8Y36 = -Random($z2);
	$FRP8Y35 = Random($z2);
	$FRP8Y34 = -Random($z2);
	$FRP8Y33 = -Random($z2);
	$FRP8Y32 = Random($z2);
	$FRP8Y31 = Random($z2);
	$FRP8Y30 = Random($z2);
	$FRP8Y29 = -Random($z2);
	$FRP8Y28 = Random($z2);
	$FRP8Y27 = -Random($z2);
	$FRP8Y26 = -Random($z2);
	$FRP8Y25 = -Random($z2);
	$FRP8Y24 = Random($z2);
	$FRP8Y23 = Random($z2);
	$FRP8Y22 = Random($z2);
	$FRP8Y21 = -Random($z2);
	$FRP8Y20 = Random($z2);
	$FRP8Y19 = Random($z2);
	$FRP8Y18 = -Random($z2);
	$FRP8Y17 = Random($z2);
	$FRP8Y16 = -Random($z2);
	$FRP8Y15 = -Random($z2);
	$FRP8Y14 = Random($z2);
	$FRP8Y13 = Random($z2);
	$FRP8Y12 = Random($z2);
	$FRP8Y11 = -Random($z2);
	$FRP8Y10 = Random($z2);
	$FRP8Y9 = -Random($z2);
	$FRP8Y8 = -Random($z2);
	$FRP8Y7 = -Random($z2);
	$FRP8Y6 = Random($z2);
	$FRP8Y5 = Random($z2);
	$FRP8Y4 = Random($z2);
	$FRP8Y3 = -Random($z2);
	$FRP8Y2 = Random($z2);

	CreateProcess("NutFRP8", 150, 0, 0, "ProcessFRP8");
	SetAlias("NutFRP8", "NutFRP8");
	Request("NutFRP8", Start);
}
function MoveFRP8stop(){
	Request("@NutFRP8", Disused);
	Request("@NutFRP8", Stop);
	Move($FlagNut_FRP8, 0, @0, @0, null, false);
}
function ProcessFRP8(){
	while(1){
		BezierMove($FlagNut_FRP8, $FlagTime_FRP8, (@0,@0){@$FRP8X2,@$FRP8Y2}{@$FRP8X3,@$FRP8Y3}(@$FRP8X4,@$FRP8Y4){@$FRP8X5,@$FRP8Y5}{@$FRP8X6,@$FRP8Y6}(@$FRP8X7,@$FRP8Y7){@$FRP8X8,@$FRP8Y8}{@$FRP8X9,@$FRP8Y9}(@$FRP8X10,@$FRP8Y10){@$FRP8X11,@$FRP8Y11}{@$FRP8X12,@$FRP8Y12}(@$FRP8X13,@$FRP8Y13){@$FRP8X14,@$FRP8Y14}{@$FRP8X15,@$FRP8Y15}(@$FRP8X16,@$FRP8Y16){@$FRP8X17,@$FRP8Y17}{@$FRP8X18,@$FRP8Y18}(@$FRP8X19,@$FRP8Y19){@$FRP8X20,@$FRP8Y20}{@$FRP8X21,@$FRP8Y21}(@$FRP8X22,@$FRP8Y22){@$FRP8X23,@$FRP8Y23}{@$FRP8X24,@$FRP8Y24}(@$FRP8X25,@$FRP8Y25){@$FRP8X26,@$FRP8Y26}{@$FRP8X27,@$FRP8Y27}(@$FRP8X28,@$FRP8Y28){@$FRP8X29,@$FRP8Y29}{@$FRP8X30,@$FRP8Y30}(@$FRP8X31,@$FRP8Y31){@$FRP8X32,@$FRP8Y32}{@$FRP8X33,@$FRP8Y33}(@$FRP8X34,@$FRP8Y34){@$FRP8X35,@$FRP8Y35}{@$FRP8X36,@$FRP8Y36}(@0,@0), null, true);
	}
}




//========================================================//
..//揺れ３
//========================================================//
...//１
function MoveFTP1($FlagNut_FTP1,$FlagTime_FTP1,$z1,$z2){
	$FTP1x=0;
	$FTP1y=0;

	$FTP1X1 = -$FTP1x;
	$FTP1X36 = Random($z1);
	$FTP1X35 = -Random($z1);
	$FTP1X34 = Random($z1);
	$FTP1X33 = -Random($z1);
	$FTP1X32 = Random($z1);
	$FTP1X31 = -Random($z1);
	$FTP1X30 = Random($z1);
	$FTP1X29 = -Random($z1);
	$FTP1X28 = Random($z1);
	$FTP1X27 = -Random($z1);
	$FTP1X26 = Random($z1);
	$FTP1X25 = -Random($z1);
	$FTP1X24 = Random($z1);
	$FTP1X23 = -Random($z1);
	$FTP1X22 = Random($z1);
	$FTP1X21 = -Random($z1);
	$FTP1X20 = Random($z1);
	$FTP1X19 = -Random($z1);
	$FTP1X18 = Random($z1);
	$FTP1X17 = -Random($z1);
	$FTP1X16 = Random($z1);
	$FTP1X15 = -Random($z1);
	$FTP1X14 = Random($z1);
	$FTP1X13 = -Random($z1);
	$FTP1X12 = Random($z1);
	$FTP1X11 = -Random($z1);
	$FTP1X10 = Random($z1);
	$FTP1X9 = -Random($z1);
	$FTP1X8 = Random($z1);
	$FTP1X7 = -Random($z1);
	$FTP1X6 = Random($z1);
	$FTP1X5 = -Random($z1);
	$FTP1X4 = Random($z1);
	$FTP1X3 = -Random($z1);
	$FTP1X2 = Random($z1);

	$FTP1Y1 = -$z2;
	$FTP1Y36 = -$z2;
	$FTP1Y35 = -$z2;
	$FTP1Y34 = 0;
	$FTP1Y33 = $z2;
	$FTP1Y32 = $z2;
	$FTP1Y31 = 0;
	$FTP1Y30 = -$z2;
	$FTP1Y29 = -$z2;
	$FTP1Y28 = 0;
	$FTP1Y27 = $z2;
	$FTP1Y26 = $z2;
	$FTP1Y25 = 0;
	$FTP1Y24 = -$z2;
	$FTP1Y23 = -$z2;
	$FTP1Y22 = 0;
	$FTP1Y21 = $z2;
	$FTP1Y20 = $z2;
	$FTP1Y19 = 0;
	$FTP1Y18 = -$z2;
	$FTP1Y17 = -$z2;
	$FTP1Y16 = 0;
	$FTP1Y15 = $z2;
	$FTP1Y14 = $z2;
	$FTP1Y13 = 0;
	$FTP1Y12 = -$z2;
	$FTP1Y11 = -$z2;
	$FTP1Y10 = 0;
	$FTP1Y9 = $z2;
	$FTP1Y8 = $z2;
	$FTP1Y7 = 0;
	$FTP1Y6 = -$z2;
	$FTP1Y5 = -$z2;
	$FTP1Y4 = 0;
	$FTP1Y3 = $z2;
	$FTP1Y2 = $z2;

	CreateProcess("NutFTP1", 150, 0, 0, "ProcessFTP1");
	SetAlias("NutFTP1", "NutFTP1");
	Request("NutFTP1", Start);
}
function MoveFTP1stop(){
	Request("@NutFTP1", Disused);
	Request("@NutFTP1", Stop);
	Move($FlagNut_FTP1, 0, @0, @0, null, false);
}
function ProcessFTP1(){
	while(1){
		BezierMove($FlagNut_FTP1, $FlagTime_FTP1, (@0,@0){@$FTP1X2,@$FTP1Y2}{@$FTP1X3,@$FTP1Y3}(@$FTP1X4,@$FTP1Y4){@$FTP1X5,@$FTP1Y5}{@$FTP1X6,@$FTP1Y6}(@$FTP1X7,@$FTP1Y7){@$FTP1X8,@$FTP1Y8}{@$FTP1X9,@$FTP1Y9}(@$FTP1X10,@$FTP1Y10){@$FTP1X11,@$FTP1Y11}{@$FTP1X12,@$FTP1Y12}(@$FTP1X13,@$FTP1Y13){@$FTP1X14,@$FTP1Y14}{@$FTP1X15,@$FTP1Y15}(@$FTP1X16,@$FTP1Y16){@$FTP1X17,@$FTP1Y17}{@$FTP1X18,@$FTP1Y18}(@$FTP1X19,@$FTP1Y19){@$FTP1X20,@$FTP1Y20}{@$FTP1X21,@$FTP1Y21}(@$FTP1X22,@$FTP1Y22){@$FTP1X23,@$FTP1Y23}{@$FTP1X24,@$FTP1Y24}(@$FTP1X25,@$FTP1Y25){@$FTP1X26,@$FTP1Y26}{@$FTP1X27,@$FTP1Y27}(@$FTP1X28,@$FTP1Y28){@$FTP1X29,@$FTP1Y29}{@$FTP1X30,@$FTP1Y30}(@$FTP1X31,@$FTP1Y31){@$FTP1X32,@$FTP1Y32}{@$FTP1X33,@$FTP1Y33}(@$FTP1X34,@$FTP1Y34){@$FTP1X35,@$FTP1Y35}{@$FTP1X36,@$FTP1Y36}(@0,@0), null, true);
	}
}

...//２
function MoveFTP2($FlagNut_FTP2,$FlagTime_FTP2,$z1,$z2){
	$FTP2x=0;
	$FTP2y=0;

	$FTP2X1 = -$FTP2x;
	$FTP2X36 = Random($z1);
	$FTP2X35 = -Random($z1);
	$FTP2X34 = Random($z1);
	$FTP2X33 = -Random($z1);
	$FTP2X32 = Random($z1);
	$FTP2X31 = -Random($z1);
	$FTP2X30 = Random($z1);
	$FTP2X29 = -Random($z1);
	$FTP2X28 = Random($z1);
	$FTP2X27 = -Random($z1);
	$FTP2X26 = Random($z1);
	$FTP2X25 = -Random($z1);
	$FTP2X24 = Random($z1);
	$FTP2X23 = -Random($z1);
	$FTP2X22 = Random($z1);
	$FTP2X21 = -Random($z1);
	$FTP2X20 = Random($z1);
	$FTP2X19 = -Random($z1);
	$FTP2X18 = Random($z1);
	$FTP2X17 = -Random($z1);
	$FTP2X16 = Random($z1);
	$FTP2X15 = -Random($z1);
	$FTP2X14 = Random($z1);
	$FTP2X13 = -Random($z1);
	$FTP2X12 = Random($z1);
	$FTP2X11 = -Random($z1);
	$FTP2X10 = Random($z1);
	$FTP2X9 = -Random($z1);
	$FTP2X8 = Random($z1);
	$FTP2X7 = -Random($z1);
	$FTP2X6 = Random($z1);
	$FTP2X5 = -Random($z1);
	$FTP2X4 = Random($z1);
	$FTP2X3 = -Random($z1);
	$FTP2X2 = Random($z1);

	$FTP2Y1 = -$z2;
	$FTP2Y36 = -$z2;
	$FTP2Y35 = -$z2;
	$FTP2Y34 = 0;
	$FTP2Y33 = $z2;
	$FTP2Y32 = $z2;
	$FTP2Y31 = 0;
	$FTP2Y30 = -$z2;
	$FTP2Y29 = -$z2;
	$FTP2Y28 = 0;
	$FTP2Y27 = $z2;
	$FTP2Y26 = $z2;
	$FTP2Y25 = 0;
	$FTP2Y24 = -$z2;
	$FTP2Y23 = -$z2;
	$FTP2Y22 = 0;
	$FTP2Y21 = $z2;
	$FTP2Y20 = $z2;
	$FTP2Y19 = 0;
	$FTP2Y18 = -$z2;
	$FTP2Y17 = -$z2;
	$FTP2Y16 = 0;
	$FTP2Y15 = $z2;
	$FTP2Y14 = $z2;
	$FTP2Y13 = 0;
	$FTP2Y12 = -$z2;
	$FTP2Y11 = -$z2;
	$FTP2Y10 = 0;
	$FTP2Y9 = $z2;
	$FTP2Y8 = $z2;
	$FTP2Y7 = 0;
	$FTP2Y6 = -$z2;
	$FTP2Y5 = -$z2;
	$FTP2Y4 = 0;
	$FTP2Y3 = $z2;
	$FTP2Y2 = $z2;

	CreateProcess("NutFTP2", 150, 0, 0, "ProcessFTP2");
	SetAlias("NutFTP2", "NutFTP2");
	Request("NutFTP2", Start);
}
function MoveFTP2stop(){
	Request("@NutFTP2", Disused);
	Request("@NutFTP2", Stop);
	Move($FlagNut_FTP2, 0, @0, @0, null, false);
}
function ProcessFTP2(){
	while(1){
		BezierMove($FlagNut_FTP2, $FlagTime_FTP2, (@0,@0){@$FTP2X2,@$FTP2Y2}{@$FTP2X3,@$FTP2Y3}(@$FTP2X4,@$FTP2Y4){@$FTP2X5,@$FTP2Y5}{@$FTP2X6,@$FTP2Y6}(@$FTP2X7,@$FTP2Y7){@$FTP2X8,@$FTP2Y8}{@$FTP2X9,@$FTP2Y9}(@$FTP2X10,@$FTP2Y10){@$FTP2X11,@$FTP2Y11}{@$FTP2X12,@$FTP2Y12}(@$FTP2X13,@$FTP2Y13){@$FTP2X14,@$FTP2Y14}{@$FTP2X15,@$FTP2Y15}(@$FTP2X16,@$FTP2Y16){@$FTP2X17,@$FTP2Y17}{@$FTP2X18,@$FTP2Y18}(@$FTP2X19,@$FTP2Y19){@$FTP2X20,@$FTP2Y20}{@$FTP2X21,@$FTP2Y21}(@$FTP2X22,@$FTP2Y22){@$FTP2X23,@$FTP2Y23}{@$FTP2X24,@$FTP2Y24}(@$FTP2X25,@$FTP2Y25){@$FTP2X26,@$FTP2Y26}{@$FTP2X27,@$FTP2Y27}(@$FTP2X28,@$FTP2Y28){@$FTP2X29,@$FTP2Y29}{@$FTP2X30,@$FTP2Y30}(@$FTP2X31,@$FTP2Y31){@$FTP2X32,@$FTP2Y32}{@$FTP2X33,@$FTP2Y33}(@$FTP2X34,@$FTP2Y34){@$FTP2X35,@$FTP2Y35}{@$FTP2X36,@$FTP2Y36}(@0,@0), null, true);
	}
}


...//３
function MoveFTP3($FlagNut_FTP3,$FlagTime_FTP3,$z1,$z2){
	$FTP3x=0;
	$FTP3y=0;

	$FTP3X1 = -$FTP3x;
	$FTP3X36 = Random($z1);
	$FTP3X35 = -Random($z1);
	$FTP3X34 = Random($z1);
	$FTP3X33 = -Random($z1);
	$FTP3X32 = Random($z1);
	$FTP3X31 = -Random($z1);
	$FTP3X30 = Random($z1);
	$FTP3X29 = -Random($z1);
	$FTP3X28 = Random($z1);
	$FTP3X27 = -Random($z1);
	$FTP3X26 = Random($z1);
	$FTP3X25 = -Random($z1);
	$FTP3X24 = Random($z1);
	$FTP3X23 = -Random($z1);
	$FTP3X22 = Random($z1);
	$FTP3X21 = -Random($z1);
	$FTP3X20 = Random($z1);
	$FTP3X19 = -Random($z1);
	$FTP3X18 = Random($z1);
	$FTP3X17 = -Random($z1);
	$FTP3X16 = Random($z1);
	$FTP3X15 = -Random($z1);
	$FTP3X14 = Random($z1);
	$FTP3X13 = -Random($z1);
	$FTP3X12 = Random($z1);
	$FTP3X11 = -Random($z1);
	$FTP3X10 = Random($z1);
	$FTP3X9 = -Random($z1);
	$FTP3X8 = Random($z1);
	$FTP3X7 = -Random($z1);
	$FTP3X6 = Random($z1);
	$FTP3X5 = -Random($z1);
	$FTP3X4 = Random($z1);
	$FTP3X3 = -Random($z1);
	$FTP3X2 = Random($z1);

	$FTP3Y1 = -$z2;
	$FTP3Y36 = -$z2;
	$FTP3Y35 = -$z2;
	$FTP3Y34 = 0;
	$FTP3Y33 = $z2;
	$FTP3Y32 = $z2;
	$FTP3Y31 = 0;
	$FTP3Y30 = -$z2;
	$FTP3Y29 = -$z2;
	$FTP3Y28 = 0;
	$FTP3Y27 = $z2;
	$FTP3Y26 = $z2;
	$FTP3Y25 = 0;
	$FTP3Y24 = -$z2;
	$FTP3Y23 = -$z2;
	$FTP3Y22 = 0;
	$FTP3Y21 = $z2;
	$FTP3Y20 = $z2;
	$FTP3Y19 = 0;
	$FTP3Y18 = -$z2;
	$FTP3Y17 = -$z2;
	$FTP3Y16 = 0;
	$FTP3Y15 = $z2;
	$FTP3Y14 = $z2;
	$FTP3Y13 = 0;
	$FTP3Y12 = -$z2;
	$FTP3Y11 = -$z2;
	$FTP3Y10 = 0;
	$FTP3Y9 = $z2;
	$FTP3Y8 = $z2;
	$FTP3Y7 = 0;
	$FTP3Y6 = -$z2;
	$FTP3Y5 = -$z2;
	$FTP3Y4 = 0;
	$FTP3Y3 = $z2;
	$FTP3Y2 = $z2;

	CreateProcess("NutFTP3", 150, 0, 0, "ProcessFTP3");
	SetAlias("NutFTP3", "NutFTP3");
	Request("NutFTP3", Start);
}
function MoveFTP3stop(){
	Request("@NutFTP3", Disused);
	Request("@NutFTP3", Stop);
	Move($FlagNut_FTP3, 0, @0, @0, null, false);
}
function ProcessFTP3(){
	while(1){
		BezierMove($FlagNut_FTP3, $FlagTime_FTP3, (@0,@0){@$FTP3X2,@$FTP3Y2}{@$FTP3X3,@$FTP3Y3}(@$FTP3X4,@$FTP3Y4){@$FTP3X5,@$FTP3Y5}{@$FTP3X6,@$FTP3Y6}(@$FTP3X7,@$FTP3Y7){@$FTP3X8,@$FTP3Y8}{@$FTP3X9,@$FTP3Y9}(@$FTP3X10,@$FTP3Y10){@$FTP3X11,@$FTP3Y11}{@$FTP3X12,@$FTP3Y12}(@$FTP3X13,@$FTP3Y13){@$FTP3X14,@$FTP3Y14}{@$FTP3X15,@$FTP3Y15}(@$FTP3X16,@$FTP3Y16){@$FTP3X17,@$FTP3Y17}{@$FTP3X18,@$FTP3Y18}(@$FTP3X19,@$FTP3Y19){@$FTP3X20,@$FTP3Y20}{@$FTP3X21,@$FTP3Y21}(@$FTP3X22,@$FTP3Y22){@$FTP3X23,@$FTP3Y23}{@$FTP3X24,@$FTP3Y24}(@$FTP3X25,@$FTP3Y25){@$FTP3X26,@$FTP3Y26}{@$FTP3X27,@$FTP3Y27}(@$FTP3X28,@$FTP3Y28){@$FTP3X29,@$FTP3Y29}{@$FTP3X30,@$FTP3Y30}(@$FTP3X31,@$FTP3Y31){@$FTP3X32,@$FTP3Y32}{@$FTP3X33,@$FTP3Y33}(@$FTP3X34,@$FTP3Y34){@$FTP3X35,@$FTP3Y35}{@$FTP3X36,@$FTP3Y36}(@0,@0), null, true);
	}
}


...//４
function MoveFTP4($FlagNut_FTP4,$FlagTime_FTP4,$z1,$z2){
	$FTP4x=0;
	$FTP4y=0;

	$FTP4X1 = -$FTP4x;
	$FTP4X36 = Random($z1);
	$FTP4X35 = -Random($z1);
	$FTP4X34 = Random($z1);
	$FTP4X33 = -Random($z1);
	$FTP4X32 = Random($z1);
	$FTP4X31 = -Random($z1);
	$FTP4X30 = Random($z1);
	$FTP4X29 = -Random($z1);
	$FTP4X28 = Random($z1);
	$FTP4X27 = -Random($z1);
	$FTP4X26 = Random($z1);
	$FTP4X25 = -Random($z1);
	$FTP4X24 = Random($z1);
	$FTP4X23 = -Random($z1);
	$FTP4X22 = Random($z1);
	$FTP4X21 = -Random($z1);
	$FTP4X20 = Random($z1);
	$FTP4X19 = -Random($z1);
	$FTP4X18 = Random($z1);
	$FTP4X17 = -Random($z1);
	$FTP4X16 = Random($z1);
	$FTP4X15 = -Random($z1);
	$FTP4X14 = Random($z1);
	$FTP4X13 = -Random($z1);
	$FTP4X12 = Random($z1);
	$FTP4X11 = -Random($z1);
	$FTP4X10 = Random($z1);
	$FTP4X9 = -Random($z1);
	$FTP4X8 = Random($z1);
	$FTP4X7 = -Random($z1);
	$FTP4X6 = Random($z1);
	$FTP4X5 = -Random($z1);
	$FTP4X4 = Random($z1);
	$FTP4X3 = -Random($z1);
	$FTP4X2 = Random($z1);

	$FTP4Y1 = -$z2;
	$FTP4Y36 = -$z2;
	$FTP4Y35 = -$z2;
	$FTP4Y34 = 0;
	$FTP4Y33 = $z2;
	$FTP4Y32 = $z2;
	$FTP4Y31 = 0;
	$FTP4Y30 = -$z2;
	$FTP4Y29 = -$z2;
	$FTP4Y28 = 0;
	$FTP4Y27 = $z2;
	$FTP4Y26 = $z2;
	$FTP4Y25 = 0;
	$FTP4Y24 = -$z2;
	$FTP4Y23 = -$z2;
	$FTP4Y22 = 0;
	$FTP4Y21 = $z2;
	$FTP4Y20 = $z2;
	$FTP4Y19 = 0;
	$FTP4Y18 = -$z2;
	$FTP4Y17 = -$z2;
	$FTP4Y16 = 0;
	$FTP4Y15 = $z2;
	$FTP4Y14 = $z2;
	$FTP4Y13 = 0;
	$FTP4Y12 = -$z2;
	$FTP4Y11 = -$z2;
	$FTP4Y10 = 0;
	$FTP4Y9 = $z2;
	$FTP4Y8 = $z2;
	$FTP4Y7 = 0;
	$FTP4Y6 = -$z2;
	$FTP4Y5 = -$z2;
	$FTP4Y4 = 0;
	$FTP4Y3 = $z2;
	$FTP4Y2 = $z2;

	CreateProcess("NutFTP4", 150, 0, 0, "ProcessFTP4");
	SetAlias("NutFTP4", "NutFTP4");
	Request("NutFTP4", Start);
}
function MoveFTP4stop(){
	Request("@NutFTP4", Disused);
	Request("@NutFTP4", Stop);
	Move($FlagNut_FTP4, 0, @0, @0, null, false);
}
function ProcessFTP4(){
	while(1){
		BezierMove($FlagNut_FTP4, $FlagTime_FTP4, (@0,@0){@$FTP4X2,@$FTP4Y2}{@$FTP4X3,@$FTP4Y3}(@$FTP4X4,@$FTP4Y4){@$FTP4X5,@$FTP4Y5}{@$FTP4X6,@$FTP4Y6}(@$FTP4X7,@$FTP4Y7){@$FTP4X8,@$FTP4Y8}{@$FTP4X9,@$FTP4Y9}(@$FTP4X10,@$FTP4Y10){@$FTP4X11,@$FTP4Y11}{@$FTP4X12,@$FTP4Y12}(@$FTP4X13,@$FTP4Y13){@$FTP4X14,@$FTP4Y14}{@$FTP4X15,@$FTP4Y15}(@$FTP4X16,@$FTP4Y16){@$FTP4X17,@$FTP4Y17}{@$FTP4X18,@$FTP4Y18}(@$FTP4X19,@$FTP4Y19){@$FTP4X20,@$FTP4Y20}{@$FTP4X21,@$FTP4Y21}(@$FTP4X22,@$FTP4Y22){@$FTP4X23,@$FTP4Y23}{@$FTP4X24,@$FTP4Y24}(@$FTP4X25,@$FTP4Y25){@$FTP4X26,@$FTP4Y26}{@$FTP4X27,@$FTP4Y27}(@$FTP4X28,@$FTP4Y28){@$FTP4X29,@$FTP4Y29}{@$FTP4X30,@$FTP4Y30}(@$FTP4X31,@$FTP4Y31){@$FTP4X32,@$FTP4Y32}{@$FTP4X33,@$FTP4Y33}(@$FTP4X34,@$FTP4Y34){@$FTP4X35,@$FTP4Y35}{@$FTP4X36,@$FTP4Y36}(@0,@0), null, true);
	}
}


//========================================================//
..//シェイク１
//========================================================//

function MoveSSP1($SSP1nut,$SSP1t,$SSP1x1,$SSP1y1,$SSP1x2,$SSP1y2,$SSP1h,$SSP1i){
	CreateProcess("NutSSP1", 150, 0, 0, "ProcessSSP1");
	SetAlias("NutSSP1", "NutSSP1");
	Wait(16);
	Request("NutSSP1", Start);
}

function MoveSSP1stop(){
	Request("@NutSSP1", Disused);
	Request("@NutSSP1", Stop);
	Shake($SSP1nut, 0, 1, 0, 0, 0, 100, null, true);
}

function ProcessSSP1(){
	while(1){
		Shake($SSP1nut, $SSP1t, $SSP1x1, $SSP1y1, $SSP1x2, $SSP1y2, $SSP1h, $SSP1i, true);
	}
}

//========================================================//
..//シェイク２
//========================================================//

function MoveSSP2($SSP2nut,$SSP2t,$SSP2x1,$SSP2y1,$SSP2x2,$SSP2y2,$SSP2h,$SSP2i){
	CreateProcess("NutSSP2", 150, 0, 0, "ProcessSSP2");
	SetAlias("NutSSP2", "NutSSP2");
	Wait(16);
	Request("NutSSP2", Start);
}

function MoveSSP2stop(){
	Request("@NutSSP2", Disused);
	Request("@NutSSP2", Stop);
	Shake($SSP2nut, 0, 1, 0, 0, 0, 100, null, true);
}

function ProcessSSP2(){
	while(1){
		Shake($SSP2nut, $SSP2t, $SSP2x1, $SSP2y1, $SSP2x2, $SSP2y2, $SSP2h, $SSP2i, true);
	}
}

//========================================================//
..//シェイク３
//========================================================//

function MoveSSP3($SSP3nut,$SSP3t,$SSP3x1,$SSP3y1,$SSP3x2,$SSP3y2,$SSP3h,$SSP3i){
	CreateProcess("NutSSP3", 150, 0, 0, "ProcessSSP3");
	SetAlias("NutSSP3", "NutSSP3");
	Wait(16);
	Request("NutSSP3", Start);
}

function MoveSSP3stop(){
	Request("@NutSSP3", Disused);
	Request("@NutSSP3", Stop);
	Shake($SSP3nut, 0, 1, 0, 0, 0, 100, null, true);
}

function ProcessSSP3(){
	while(1){
		Shake($SSP3nut, $SSP3t, $SSP3x1, $SSP3y1, $SSP3x2, $SSP3y2, $SSP3h, $SSP3i, true);
	}
}

//========================================================//
..//シェイク４
//========================================================//

function MoveSSP4($SSP4nut,$SSP4t,$SSP4x1,$SSP4y1,$SSP4x2,$SSP4y2,$SSP4h,$SSP4i){
	CreateProcess("NutSSP4", 150, 0, 0, "ProcessSSP4");
	SetAlias("NutSSP4", "NutSSP4");
	Wait(16);
	Request("NutSSP4", Start);
}

function MoveSSP4stop(){
	Request("@NutSSP4", Disused);
	Request("@NutSSP4", Stop);
	Shake($SSP4nut, 0, 1, 0, 0, 0, 100, null, true);
}

function ProcessSSP4(){
	while(1){
		Shake($SSP4nut, $SSP4t, $SSP4x1, $SSP4y1, $SSP4x2, $SSP4y2, $SSP4h, $SSP4i, true);
	}
}











//========================================================//
..//セフセフ（ω）
//========================================================//
function PlainSurface("ナット名",優先度,倍率){
	CreateSurface("絵Suf",優先度,0,0,false);
	SetAlias("絵Suf", "絵Suf");

	SetSurface("ナット名","絵Suf");
	Zoom("絵Suf",0,倍率,倍率,null,true);
}

	//CreateEffect("絵Plain",優先度,0,0,1024,576,Plain);
	//SetAlias("絵Plain", "絵Plain");

function RotateSurface(秒数,回転,勢い,待ち){
	Rotate("@絵Suf", 秒数, @0, @0, 回転, 勢い, 待ち);
}

function DeleteSurface(){
	Delete("@絵Suf");
}



function CreateSurfaceEX("サーフェイス名", 画像優先度,倍率,"対象名"){
	CreateSurface("サーフェイス名", 画像優先度, 0, 0, false);
	SetAlias("サーフェイス名", "サーフェイス名");
	Zoom("サーフェイス名",0,倍率,倍率,null,false);
	Fade("サーフェイス名", 0, 0, null, true);
	SetSurface("対象名","サーフェイス名");
}




//========================================================//
..//ロール
//========================================================//
...//１
function CreateSCR1($NutSCR1a,$NutSCR1b,$TimeSCR1,$MoveXSCR1,$MoveYSCR1){

	CreateProcess("ProSCR1", 100, 0, 0, "ProcessSCR1");
	SetAlias("ProSCR1", "ProSCR1");

	Position($NutSCR1a,$NutHSCR1,$NutVSCR1);
	$WaitSCR1=($TimeSCR1/10)*8;
	$FadeSCR1=($TimeSCR1/10)*1;

	Wait(16);
	Request("ProSCR1", Start);
}

function SCR1stop(){
	Request("@ProSCR1", Disused);
	Request("@ProSCR1", Stop);

//	Move($NutSCR1a, 0, @0, @0, null, false);
//	Fade($NutSCR1a, 0, 0, null, false);
//	Move($NutSCR1b, 0, @0, @0, null, false);
//	Fade($NutSCR1b, 0, 0, null, false);
}

function ProcessSCR1(){
	while(1){
		//LockVideo(true);//★ロック設置
		Move($NutSCR1a, 0, $NutHSCR1, $NutVSCR1, null, true);
		Fade($NutSCR1b, $FadeSCR1, 0, null, false);
		Fade($NutSCR1a, $FadeSCR1, 1000, null, false);
		Move($NutSCR1a, $TimeSCR1, $MoveXSCR1, $MoveYSCR1, null, false);
		//LockVideo(false);//★ロック設置
		Wait($WaitSCR1);

		//LockVideo(true);//★ロック設置
		Move($NutSCR1b, 0, $NutHSCR1, $NutVSCR1, null, true);
		Fade($NutSCR1b, $FadeSCR1, 1000, null, false);
		Move($NutSCR1b, $TimeSCR1, $MoveXSCR1, $MoveYSCR1, null, false);
		//LockVideo(false);//★ロック設置
		Wait($WaitSCR1);
	}
}

...//２
function CreateSCR2($NutSCR2a,$NutSCR2b,$TimeSCR2,$MoveXSCR2,$MoveYSCR2){

	CreateProcess("ProSCR2", 100, 0, 0, "ProcessSCR2");
	SetAlias("ProSCR2", "ProSCR2");

	Position($NutSCR2a,$NutHSCR2,$NutVSCR2);
	$WaitSCR2=($TimeSCR2/10)*8;
	$FadeSCR2=($TimeSCR2/10)*1;

	Wait(16);
	Request("ProSCR2", Start);
}

function SCR2stop(){
	Request("@ProSCR2", Disused);
	Request("@ProSCR2", Stop);

//	Move($NutSCR2a, 0, @0, @0, null, false);
//	Fade($NutSCR2a, 0, 0, null, false);
//	Move($NutSCR2b, 0, @0, @0, null, false);
//	Fade($NutSCR2b, 0, 0, null, false);
}

function ProcessSCR2(){
	while(1){
		//LockVideo(true);//★ロック設置
		Move($NutSCR2a, 0, $NutHSCR2, $NutVSCR2, null, true);
		Fade($NutSCR2b, $FadeSCR2, 0, null, false);
		Fade($NutSCR2a, $FadeSCR2, 1000, null, false);
		Move($NutSCR2a, $TimeSCR2, $MoveXSCR2, $MoveYSCR2, null, false);
		//LockVideo(false);//★ロック設置
		Wait($WaitSCR2);

		//LockVideo(true);//★ロック設置
		Move($NutSCR2b, 0, $NutHSCR2, $NutVSCR2, null, true);
		Fade($NutSCR2b, $FadeSCR2, 1000, null, false);
		Move($NutSCR2b, $TimeSCR2, $MoveXSCR2, $MoveYSCR2, null, false);
		//LockVideo(false);//★ロック設置
		Wait($WaitSCR2);
	}
}

//========================================================//
..//くりぁえす
//========================================================//
...//１
function CreateAFA1($NutAFA1a,$NutAFA1b,$TimeAFA1,$FadeAFA1,$WaitAFA1,$ParAFA1){

	CreateProcess("ProAFA1", 100, 0, 0, "ProcessAFA1");
	SetAlias("ProAFA1", "ProAFA1");

	Wait(16);
	Request("ProAFA1", Start);
}

function AFA1stop(){
	Request("@ProAFA1", Disused);
	Request("@ProAFA1", Stop);
	Delete("@ProAFA1");
	LockVideo(false);//★ロック設置
}

function ProcessAFA1(){
	while(1){

		if($ParAFA1==1){
			LockVideo(true);//★ロック設置
			Fade($NutAFA1b, $TimeAFA1, 0, null, false);
			Fade($NutAFA1a, $TimeAFA1, $FadeAFA1, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitAFA1);
	
			LockVideo(true);//★ロック設置
			Fade($NutAFA1b, $TimeAFA1, $FadeAFA1, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitAFA1);
		}else if($ParAFA1==2){
			LockVideo(true);//★ロック設置
			Fade($NutAFA1a, $TimeAFA1, $FadeAFA1, null, false);
			Fade($NutAFA1b, $TimeAFA1, 0, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitAFA1);
	
			LockVideo(true);//★ロック設置
			Fade($NutAFA1b, $TimeAFA1, $FadeAFA1, null, false);
			Fade($NutAFA1a, $TimeAFA1, 0, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitAFA1);
		}
	}
}

...//２
function CreateAFA2($NutAFA2a,$NutAFA2b,$TimeAFA2,$FadeAFA2,$WaitAFA2,$ParAFA2){

	CreateProcess("ProAFA2", 100, 0, 0, "ProcessAFA2");
	SetAlias("ProAFA2", "ProAFA2");

	Wait(16);
	Request("ProAFA2", Start);
}

function AFA2stop(){
	Request("@ProAFA2", Disused);
	Request("@ProAFA2", Stop);
	Delete("@ProAFA2");
	LockVideo(false);//★ロック設置
}

function ProcessAFA2(){
	while(1){

		if($ParAFA2==1){
			LockVideo(true);//★ロック設置
			Fade($NutAFA2b, $TimeAFA2, 0, null, false);
			Fade($NutAFA2a, $TimeAFA2, $FadeAFA2, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitAFA2);
	
			LockVideo(true);//★ロック設置
			Fade($NutAFA2b, $TimeAFA2, $FadeAFA2, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitAFA2);
		}else if($ParAFA2==2){
			LockVideo(true);//★ロック設置
			Fade($NutAFA2a, $TimeAFA2, $FadeAFA2, null, false);
			Fade($NutAFA2b, $TimeAFA2, 0, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitAFA2);
	
			LockVideo(true);//★ロック設置
			Fade($NutAFA2b, $TimeAFA2, $FadeAFA2, null, false);
			Fade($NutAFA2a, $TimeAFA2, 0, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitAFA2);
		}
	}
}


//========================================================//
..//くりぁえす（ロック外す）
//========================================================//
...//１
function CreateAFB1($NutAFB1a,$NutAFB1b,$TimeAFB1,$FadeAFB1,$WaitAFB1,$ParAFB1){

	CreateProcess("ProAFB1", 100, 0, 0, "ProcessAFB1");
	SetAlias("ProAFB1", "ProAFB1");

	Wait(16);
	Request("ProAFB1", Start);
}

function AFB1stop(){
	Request("@ProAFB1", Disused);
	Request("@ProAFB1", Stop);
	Delete("@ProAFB1");
//	LockVideo(false);//★ロック設置
}

function ProcessAFB1(){
	while(1){

		if($ParAFB1==1){
//			LockVideo(true);//★ロック設置
			Fade($NutAFB1b, $TimeAFB1, 0, null, false);
			Fade($NutAFB1a, $TimeAFB1, $FadeAFB1, null, false);
//			LockVideo(false);//★ロック設置
			Wait($WaitAFB1);
	
//			LockVideo(true);//★ロック設置
			Fade($NutAFB1b, $TimeAFB1, $FadeAFB1, null, false);
//			LockVideo(false);//★ロック設置
			Wait($WaitAFB1);
		}else if($ParAFB1==2){
//			LockVideo(true);//★ロック設置
			Fade($NutAFB1a, $TimeAFB1, $FadeAFB1, null, false);
			Fade($NutAFB1b, $TimeAFB1, 0, null, false);
//			LockVideo(false);//★ロック設置
			Wait($WaitAFB1);
	
//			LockVideo(true);//★ロック設置
			Fade($NutAFB1b, $TimeAFB1, $FadeAFB1, null, false);
			Fade($NutAFB1a, $TimeAFB1, 0, null, false);
//			LockVideo(false);//★ロック設置
			Wait($WaitAFB1);
		}
	}
}

...//２
function CreateAFB2($NutAFB2a,$NutAFB2b,$TimeAFB2,$FadeAFB2,$WaitAFB2,$ParAFB2){

	CreateProcess("ProAFB2", 100, 0, 0, "ProcessAFB2");
	SetAlias("ProAFB2", "ProAFB2");

	Wait(16);
	Request("ProAFB2", Start);
}

function AFB2stop(){
	Request("@ProAFB2", Disused);
	Request("@ProAFB2", Stop);
	Delete("@ProAFB2");
//	LockVideo(false);//★ロック設置
}

function ProcessAFB2(){
	while(1){

		if($ParAFB2==1){
//			LockVideo(true);//★ロック設置
			Fade($NutAFB2b, $TimeAFB2, 0, null, false);
			Fade($NutAFB2a, $TimeAFB2, $FadeAFB2, null, false);
//			LockVideo(false);//★ロック設置
			Wait($WaitAFB2);
	
//			LockVideo(true);//★ロック設置
			Fade($NutAFB2b, $TimeAFB2, $FadeAFB2, null, false);
//			LockVideo(false);//★ロック設置
			Wait($WaitAFB2);
		}else if($ParAFB2==2){
//			LockVideo(true);//★ロック設置
			Fade($NutAFB2a, $TimeAFB2, $FadeAFB2, null, false);
			Fade($NutAFB2b, $TimeAFB2, 0, null, false);
//			LockVideo(false);//★ロック設置
			Wait($WaitAFB2);
	
//			LockVideo(true);//★ロック設置
			Fade($NutAFB2b, $TimeAFB2, $FadeAFB2, null, false);
			Fade($NutAFB2a, $TimeAFB2, 0, null, false);
//			LockVideo(false);//★ロック設置
			Wait($WaitAFB2);
		}
	}
}


//========================================================//
..//変則的にくりぁえす
//========================================================//
function CreateFRA1($NutFRA1a,$FadeFRA1a,$WaitFRA1a,$WaitFRA1b,$WaitFRA1c){

	//CreateFRA1(ナット名,透明度,出現,消える,待ち)

	CreateProcess("ProFRA1", 100, 0, 0, "ProcessFRA1");
	SetAlias("ProFRA1", "ProFRA1");

	Wait(16);
	Request("ProFRA1", Start);
}

function FRA1stop(){
	Request("@ProFRA1", Disused);
	Request("@ProFRA1", Stop);
	Delete("@ProFRA1");
	LockVideo(false);//★ロック設置
}

function ProcessFRA1(){
	while(1){

		$PreFadeFRA1a=1000*($FadeFRA1a/1000);//透明度
		$PreWaitFRA1a=100*($WaitFRA1a/1000);//出現
		$PreWaitFRA1b=500*($WaitFRA1b/1000);//消える
		$PreWaitFRA1c=100*($WaitFRA1c/1000);//待ち
		Fade($NutFRA1a, $PreWaitFRA1a, $PreFadeFRA1a, null, true);
		Fade($NutFRA1a, $PreWaitFRA1b, 0, null, true);
		Wait($PreWaitFRA1c);

		$PreFadeFRA1a=500*($FadeFRA1a/1000);//透明度
		$PreWaitFRA1a=100*($WaitFRA1a/1000);//出現
		$PreWaitFRA1b=800*($WaitFRA1b/1000);//消える
		$PreWaitFRA1c=300*($WaitFRA1c/1000);//待ち
		Fade($NutFRA1a, $PreWaitFRA1a, $PreFadeFRA1a, null, true);
		Fade($NutFRA1a, $PreWaitFRA1b, 0, null, true);
		Wait($PreWaitFRA1c);

		$PreFadeFRA1a=800*($FadeFRA1a/1000);//透明度
		$PreWaitFRA1a=100*($WaitFRA1a/1000);//出現
		$PreWaitFRA1b=200*($WaitFRA1b/1000);//消える
		$PreWaitFRA1c=300*($WaitFRA1c/1000);//待ち
		Fade($NutFRA1a, $PreWaitFRA1a, $PreFadeFRA1a, null, true);
		Fade($NutFRA1a, $PreWaitFRA1b, 0, null, true);
		Wait($PreWaitFRA1c);

		$PreFadeFRA1a=400*($FadeFRA1a/1000);//透明度
		$PreWaitFRA1a=100*($WaitFRA1a/1000);//出現
		$PreWaitFRA1b=500*($WaitFRA1b/1000);//消える
		$PreWaitFRA1c=50*($WaitFRA1c/1000);//待ち
		Fade($NutFRA1a, $PreWaitFRA1a, $PreFadeFRA1a, null, true);
		Fade($NutFRA1a, $PreWaitFRA1b, 0, null, true);
		Wait($PreWaitFRA1c);

		$PreFadeFRA1a=700*($FadeFRA1a/1000);//透明度
		$PreWaitFRA1a=100*($WaitFRA1a/1000);//出現
		$PreWaitFRA1b=300*($WaitFRA1b/1000);//消える
		$PreWaitFRA1c=200*($WaitFRA1c/1000);//待ち
		Fade($NutFRA1a, $PreWaitFRA1a, $PreFadeFRA1a, null, true);
		Fade($NutFRA1a, $PreWaitFRA1b, 0, null, true);
		Wait($PreWaitFRA1c);
	}
}


//========================================================//
..//ズーム
//========================================================//
function CreateZZP1($NutZZP1a,$TimeZZP1a,$ZoomZZP1a,$ZoomZZP1b,$SokuZZP1a,$SokuZZP1b,$FadeZZP1a,$FadeZZP1b){

	CreateProcess("ProZZP1", 100, 0, 0, "ProcessZZP1");
	SetAlias("ProZZP1", "ProZZP1");

	Wait(16);
	Request("ProZZP1", Start);
}

function ZZP1stop(){
	Request("@ProZZP1", Disused);
	Request("@ProZZP1", Stop);
	Delete("@ProZZP1");
	LockVideo(false);//★ロック設置
}

function ProcessZZP1(){
	while(1){
		Fade($NutZZP1a, $TimeZZP1a, $FadeZZP1a, null, false);
		Zoom($NutZZP1a, $TimeZZP1a, $ZoomZZP1a, $ZoomZZP1a, $SokuZZP1a, true);
		Fade($NutZZP1a, $TimeZZP1a, $FadeZZP1b, null, false);
		Zoom($NutZZP1a, $TimeZZP1a, $ZoomZZP1b, $ZoomZZP1b, $SokuZZP1b, true);
	}
}






//========================================================//
..//ロックオンストラ(ry
//========================================================//
function CP_LockOnGet($ナット名,秒数,$誤差Ｘ,$誤差Ｙ,勢い,待ち)
{
	$ImageH=ImageHorizon($ナット名);
	$ImageV=ImageVertical($ナット名);

	Position($ナット名,$ImageX,$ImageY);

	$ImageH2=ImageHorizon("@CP_LockOn");
	$ImageV2=ImageVertical("@CP_LockOn");

	$LOX=$ImageX+($ImageH/2)-$ImageH2+$誤差Ｘ;
	$LOY=$ImageY+($ImageV/2)-$ImageV2+$誤差Ｙ;

	Move("CP_LockOff", 秒数, $LOX, $LOY, 勢い, false);
	Move("CP_LockOn", 秒数, $LOX, $LOY, 勢い, 待ち);
}



























.//■おがみエフェクト
//=============================================================================//

function EffectZoom(EF画像優先度, EF所要時間, SHAKE所要時間, $EF画像データ, EF待ち)
{
	CreateTextureEX("function攻撃汎用100", EF画像優先度, Center, Middle, $EF画像データ);

	Fade("function攻撃汎用100", 0, 1000, null, true);
	Zoom("function攻撃汎用100", EF所要時間, 1200, 1200, Dxl2, false);
	Shake("function攻撃汎用100", SHAKE所要時間, 5, 15, 0, 0, 500, null, false);

	FadeDelete("function攻撃汎用100", EF所要時間, EF待ち);

}


function EffectZoomDX($EF画像優先度, EF所要時間, SHAKE所要時間, エフェクト色指定, $EF画像データ, EF待ち)
{

$フラッシュ優先度 = $EF画像優先度+1;

	CreateColorEXadd("functionEF色100", $フラッシュ優先度, エフェクト色指定);

	CreateTextureEX("function攻撃汎用100", $EF画像優先度, Center, Middle, $EF画像データ);

	Fade("functionEF色100", 200, 800, null, true);

	Fade("function攻撃汎用100", 0, 1000, null, true);
	Zoom("function攻撃汎用100", EF所要時間, 1200, 1200, Dxl2, false);
	Shake("function攻撃汎用100", SHAKE所要時間, 5, 15, 0, 0, 500, null, false);

	FadeDelete("functionEF色100", EF所要時間, false);
	FadeDelete("function攻撃汎用100", EF所要時間, EF待ち);



}

function EffectZoomMX($EF画像優先度, EF所要時間, SHAKE所要時間, X座標, Y座標, エフェクト色指定, $EF画像データ, EF待ち)
{

$フラッシュ優先度 = $EF画像優先度+1;

	CreateColorEXadd("functionEF色100", $フラッシュ優先度, エフェクト色指定);

	CreateTextureEXadd("function攻撃汎用100", $EF画像優先度, X座標, Y座標, $EF画像データ);

	Fade("functionEF色100", 200, 800, null, true);

	Fade("function攻撃汎用100", 0, 1000, null, true);
	Zoom("function攻撃汎用100", EF所要時間, 1200, 1200, Dxl2, false);
	Shake("function攻撃汎用100", SHAKE所要時間, 5, 15, 0, 0, 500, null, false);

	FadeDelete("functionEF色100", EF所要時間, false);
	FadeDelete("function攻撃汎用100", EF所要時間, EF待ち);



}


function EffectZoomadd(EF画像優先度, EF所要時間, SHAKE所要時間, $EF画像データ, EF待ち)
{
	CreateTextureEXadd("function攻撃汎用100", EF画像優先度, Center, Middle, $EF画像データ);

	Fade("function攻撃汎用100", 0, 1000, null, true);
	Zoom("function攻撃汎用100", EF所要時間, 1200, 1200, Dxl2, false);
	Shake("function攻撃汎用100", SHAKE所要時間, 5, 15, 0, 0, 500, null, false);

	FadeDelete("function攻撃汎用100", EF所要時間, EF待ち);



}

function EffectZoomDXadd($EF画像優先度, EF所要時間, SHAKE所要時間, エフェクト色指定, $EF画像データ, EF待ち)
{

$フラッシュ優先度 = $EF画像優先度+1;

	CreateColorEXadd("functionEF色100", $フラッシュ優先度, エフェクト色指定);

	CreateTextureEXadd("function攻撃汎用100", $EF画像優先度, Center, Middle, $EF画像データ);

	Fade("functionEF色100", 200, 800, null, true);

	Fade("function攻撃汎用100", 0, 1000, null, true);
	Zoom("function攻撃汎用100", EF所要時間, 1200, 1200, Dxl2, false);
	Shake("function攻撃汎用100", SHAKE所要時間, 5, 15, 0, 0, 500, null, false);

	FadeDelete("functionEF色100", EF所要時間, false);
	FadeDelete("function攻撃汎用100", EF所要時間, EF待ち);



}

function EffectZoomMXadd($EF画像優先度, EF所要時間, SHAKE所要時間, X座標, Y座標, エフェクト色指定, $EF画像データ, EF待ち)
{

$フラッシュ優先度 = $EF画像優先度+1;

	CreateColorEXadd("functionEF色100", $フラッシュ優先度, エフェクト色指定);

	CreateTextureEXadd("function攻撃汎用100", $EF画像優先度, X座標, Y座標, $EF画像データ);

	Fade("functionEF色100", 200, 800, null, true);

	Fade("function攻撃汎用100", 0, 1000, null, true);
	Zoom("function攻撃汎用100", EF所要時間, 1200, 1200, Dxl2, false);
	Shake("function攻撃汎用100", SHAKE所要時間, 5, 15, 0, 0, 500, null, false);

	FadeDelete("functionEF色100", EF所要時間, false);
	FadeDelete("function攻撃汎用100", EF所要時間, EF待ち);



}

function Lastfire()
{

	CreateColor("焚き火光", 17900, 0, 0, 1024, 576, "BLUE");
	SetAlias("焚き火光","焚き火光");
	Request("焚き火光", AddRender);
	Fade("焚き火光", 0, 0, null, false);
//	DrawTransition("焚き火光", 0, 200, 200, 990, null, "cg/data/circle_01_00_0.png", true);


	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}

function FlyMovingXXX()
{

$loopmovetime = $ループムーブタイム;


	$FLMV01X1 = 0;
	$FLMV01X2 = ($FLMV01X1 / 36) * 1 + 5;
	$FLMV01X3 = ($FLMV01X1 / 36) * 2 + -10;
	$FLMV01X4 = ($FLMV01X1 / 36) * 3 + -10;
	$FLMV01X5 = ($FLMV01X1 / 36) * 4 + 5;
	$FLMV01X6 = ($FLMV01X1 / 36) * 5 + -10;
	$FLMV01X7 = ($FLMV01X1 / 36) * 6 + -10;
	$FLMV01X8 = ($FLMV01X1 / 36) * 7 + -10;
	$FLMV01X9 = ($FLMV01X1 / 36) * 8 + 5;
	$FLMV01X10 = ($FLMV01X1 / 36) * 9 + 0;
	$FLMV01X11 = ($FLMV01X1 / 36) * 10 + 5;
	$FLMV01X12 = ($FLMV01X1 / 36) * 11 + 10;
	$FLMV01X13 = ($FLMV01X1 / 36) * 12 + 15;
	$FLMV01X14 = ($FLMV01X1 / 36) * 13 + 10;
	$FLMV01X15 = ($FLMV01X1 / 36) * 14 + 5;
	$FLMV01X16 = ($FLMV01X1 / 36) * 15 + 0;
	$FLMV01X17 = ($FLMV01X1 / 36) * 16 + -5;
	$FLMV01X18 = ($FLMV01X1 / 36) * 17 + 5;
	$FLMV01X19 = ($FLMV01X1 / 36) * 18;
	$FLMV01X20 = ($FLMV01X1 / 36) * 19 + 5;
	$FLMV01X21 = ($FLMV01X1 / 36) * 20 + -10;
	$FLMV01X22 = ($FLMV01X1 / 36) * 21 + -10;
	$FLMV01X23 = ($FLMV01X1 / 36) * 22 + 5;
	$FLMV01X24 = ($FLMV01X1 / 36) * 23 + -10;
	$FLMV01X25 = ($FLMV01X1 / 36) * 24 + -10;
	$FLMV01X26 = ($FLMV01X1 / 36) * 25 + -10;
	$FLMV01X27 = ($FLMV01X1 / 36) * 26 + 5;
	$FLMV01X28 = ($FLMV01X1 / 36) * 27 + 0;
	$FLMV01X29 = ($FLMV01X1 / 36) * 28 + 5;
	$FLMV01X30 = ($FLMV01X1 / 36) * 29 + 10;
	$FLMV01X31 = ($FLMV01X1 / 36) * 30 + 15;
	$FLMV01X32 = ($FLMV01X1 / 36) * 31 + 10;
	$FLMV01X33 = ($FLMV01X1 / 36) * 32 + 5;
	$FLMV01X34 = ($FLMV01X1 / 36) * 33 + 0;
	$FLMV01X35 = ($FLMV01X1 / 36) * 34 + -5;
	$FLMV01X36 = ($FLMV01X1 / 36) * 35 + 5;


	$FLMV01Y1 = 0;
	$FLMV01Y2 = ($FLMV01Y1 / 36) * 1 + -10;
	$FLMV01Y3 = ($FLMV01Y1 / 36) * 2 + 10;
	$FLMV01Y4 = ($FLMV01Y1 / 36) * 3 + -5;
	$FLMV01Y5 = ($FLMV01Y1 / 36) * 4 + -10;
	$FLMV01Y6 = ($FLMV01Y1 / 36) * 5 + 5;
	$FLMV01Y7 = ($FLMV01Y1 / 36) * 6 + 0;
	$FLMV01Y8 = ($FLMV01Y1 / 36) * 7 + 10;
	$FLMV01Y9 = ($FLMV01Y1 / 36) * 8 + -10;
	$FLMV01Y10 = ($FLMV01Y1 / 36) * 9 + 0;
	$FLMV01Y11 = ($FLMV01Y1 / 36) * 10 + -15;
	$FLMV01Y12 = ($FLMV01Y1 / 36) * 11 + -10;
	$FLMV01Y13 = ($FLMV01Y1 / 36) * 12 + -5;
	$FLMV01Y14 = ($FLMV01Y1 / 36) * 13 + 0;
	$FLMV01Y15 = ($FLMV01Y1 / 36) * 14 + 5;
	$FLMV01Y16 = ($FLMV01Y1 / 36) * 15 + 10;
	$FLMV01Y17 = ($FLMV01Y1 / 36) * 16 + 15;
	$FLMV01Y18 = ($FLMV01Y1 / 36) * 17 + 5;
	$FLMV01Y19 = ($FLMV01Y1 / 36) * 18;
	$FLMV01Y20 = ($FLMV01Y1 / 36) * 19 + -10;
	$FLMV01Y21 = ($FLMV01Y1 / 36) * 20 + 10;
	$FLMV01Y22 = ($FLMV01Y1 / 36) * 21 + -5;
	$FLMV01Y23 = ($FLMV01Y1 / 36) * 22 + -10;
	$FLMV01Y24 = ($FLMV01Y1 / 36) * 23 + 5;
	$FLMV01Y25 = ($FLMV01Y1 / 36) * 24 + 0;
	$FLMV01Y26 = ($FLMV01Y1 / 36) * 25 + 10;
	$FLMV01Y27 = ($FLMV01Y1 / 36) * 26 + -10;
	$FLMV01Y28 = ($FLMV01Y1 / 36) * 27 + 0;
	$FLMV01Y29 = ($FLMV01Y1 / 36) * 28 + -15;
	$FLMV01Y30 = ($FLMV01Y1 / 36) * 29 + -10;
	$FLMV01Y31 = ($FLMV01Y1 / 36) * 30 + -5;
	$FLMV01Y32 = ($FLMV01Y1 / 36) * 31 + 0;
	$FLMV01Y33 = ($FLMV01Y1 / 36) * 32 + 5;
	$FLMV01Y34 = ($FLMV01Y1 / 36) * 33 + 10;
	$FLMV01Y35 = ($FLMV01Y1 / 36) * 34 + 15;
	$FLMV01Y36 = ($FLMV01Y1 / 36) * 35 + 5;

	Wait(10);
	begin:
	Wait(10);


	while(1)
	{
	Wait(10);
	BezierMove("$ループムーブナット名", $loopmovetime, (@0,@0){@$FLMV01X2,@$FLMV01Y2}{@$FLMV01X3,@$FLMV01Y3}(@$FLMV01X4,@$FLMV01Y4){@$FLMV01X5,@$FLMV01Y5}{@$FLMV01X6,@$FLMV01Y6}(@$FLMV01X7,@$FLMV01Y7){@$FLMV01X8,@$FLMV01Y8}{@$FLMV01X9,@$FLMV01Y9}(@$FLMV01X10,@$FLMV01Y10){@$FLMV01X11,@$FLMV01Y11}{@$FLMV01X12,@$FLMV01Y12}(@$FLMV01X13,@$FLMV01Y13){@$FLMV01X14,@$FLMV01Y14}{@$FLMV01X15,@$FLMV01Y15}(@$FLMV01X16,@$FLMV01Y16){@$FLMV01X17,@$FLMV01Y17}{@$FLMV01X18,@$FLMV01Y18}(@$FLMV01X19,@$FLMV01Y19){@$FLMV01X20,@$FLMV01Y20}{@$FLMV01X21,@$FLMV01Y21}(@$FLMV01X22,@$FLMV01Y22){@$FLMV01X23,@$FLMV01Y23}{@$FLMV01X24,@$FLMV01Y24}(@$FLMV01X25,@$FLMV01Y25){@$FLMV01X26,@$FLMV01Y26}{@$FLMV01X27,@$FLMV01Y27}(@$FLMV01X28,@$FLMV01Y28){@$FLMV01X29,@$FLMV01Y29}{@$FLMV01X30,@$FLMV01Y30}(@$FLMV01X31,@$FLMV01Y31){@$FLMV01X32,@$FLMV01Y32}{@$FLMV01X33,@$FLMV01Y33}(@$FLMV01X34,@$FLMV01Y34){@$FLMV01X35,@$FLMV01Y35}{@$FLMV01X36,@$FLMV01Y36}(@$FLMV01X1,@$FLMV01Y1), null, true);
	}
}


function FlyMovingXXX2()
{

$t2 = $ループムーブタイム２;

	$FLMV02X1 = $x;
	$FLMV02X2 = ($FLMV02X1 / 36) * 1 + 5;
	$FLMV02X3 = ($FLMV02X1 / 36) * 2 + -10;
	$FLMV02X4 = ($FLMV02X1 / 36) * 3 + -10;
	$FLMV02X5 = ($FLMV02X1 / 36) * 4 + 5;
	$FLMV02X6 = ($FLMV02X1 / 36) * 5 + -10;
	$FLMV02X7 = ($FLMV02X1 / 36) * 6 + -10;
	$FLMV02X8 = ($FLMV02X1 / 36) * 7 + -10;
	$FLMV02X9 = ($FLMV02X1 / 36) * 8 + 5;
	$FLMV02X10 = ($FLMV02X1 / 36) * 9 + 0;
	$FLMV02X11 = ($FLMV02X1 / 36) * 10 + 5;
	$FLMV02X12 = ($FLMV02X1 / 36) * 11 + 10;
	$FLMV02X13 = ($FLMV02X1 / 36) * 12 + 15;
	$FLMV02X14 = ($FLMV02X1 / 36) * 13 + 10;
	$FLMV02X15 = ($FLMV02X1 / 36) * 14 + 5;
	$FLMV02X16 = ($FLMV02X1 / 36) * 15 + 0;
	$FLMV02X17 = ($FLMV02X1 / 36) * 16 + -5;
	$FLMV02X18 = ($FLMV02X1 / 36) * 17 + 5;
	$FLMV02X19 = ($FLMV02X1 / 36) * 18;
	$FLMV02X20 = ($FLMV02X1 / 36) * 19 + 5;
	$FLMV02X21 = ($FLMV02X1 / 36) * 20 + -10;
	$FLMV02X22 = ($FLMV02X1 / 36) * 21 + -10;
	$FLMV02X23 = ($FLMV02X1 / 36) * 22 + 5;
	$FLMV02X24 = ($FLMV02X1 / 36) * 23 + -10;
	$FLMV02X25 = ($FLMV02X1 / 36) * 24 + -10;
	$FLMV02X26 = ($FLMV02X1 / 36) * 25 + -10;
	$FLMV02X27 = ($FLMV02X1 / 36) * 26 + 5;
	$FLMV02X28 = ($FLMV02X1 / 36) * 27 + 0;
	$FLMV02X29 = ($FLMV02X1 / 36) * 28 + 5;
	$FLMV02X30 = ($FLMV02X1 / 36) * 29 + 10;
	$FLMV02X31 = ($FLMV02X1 / 36) * 30 + 15;
	$FLMV02X32 = ($FLMV02X1 / 36) * 31 + 10;
	$FLMV02X33 = ($FLMV02X1 / 36) * 32 + 5;
	$FLMV02X34 = ($FLMV02X1 / 36) * 33 + 0;
	$FLMV02X35 = ($FLMV02X1 / 36) * 34 + -5;
	$FLMV02X36 = ($FLMV02X1 / 36) * 35 + 5;


	$FLMV02Y1 = $y;
	$FLMV02Y2 = ($FLMV02Y1 / 36) * 1 + -10;
	$FLMV02Y3 = ($FLMV02Y1 / 36) * 2 + 10;
	$FLMV02Y4 = ($FLMV02Y1 / 36) * 3 + -5;
	$FLMV02Y5 = ($FLMV02Y1 / 36) * 4 + -10;
	$FLMV02Y6 = ($FLMV02Y1 / 36) * 5 + 5;
	$FLMV02Y7 = ($FLMV02Y1 / 36) * 6 + 0;
	$FLMV02Y8 = ($FLMV02Y1 / 36) * 7 + 10;
	$FLMV02Y9 = ($FLMV02Y1 / 36) * 8 + -10;
	$FLMV02Y10 = ($FLMV02Y1 / 36) * 9 + 0;
	$FLMV02Y11 = ($FLMV02Y1 / 36) * 10 + -15;
	$FLMV02Y12 = ($FLMV02Y1 / 36) * 11 + -10;
	$FLMV02Y13 = ($FLMV02Y1 / 36) * 12 + -5;
	$FLMV02Y14 = ($FLMV02Y1 / 36) * 13 + 0;
	$FLMV02Y15 = ($FLMV02Y1 / 36) * 14 + 5;
	$FLMV02Y16 = ($FLMV02Y1 / 36) * 15 + 10;
	$FLMV02Y17 = ($FLMV02Y1 / 36) * 16 + 15;
	$FLMV02Y18 = ($FLMV02Y1 / 36) * 17 + 5;
	$FLMV02Y19 = ($FLMV02Y1 / 36) * 18;
	$FLMV02Y20 = ($FLMV02Y1 / 36) * 19 + -10;
	$FLMV02Y21 = ($FLMV02Y1 / 36) * 20 + 10;
	$FLMV02Y22 = ($FLMV02Y1 / 36) * 21 + -5;
	$FLMV02Y23 = ($FLMV02Y1 / 36) * 22 + -10;
	$FLMV02Y24 = ($FLMV02Y1 / 36) * 23 + 5;
	$FLMV02Y25 = ($FLMV02Y1 / 36) * 24 + 0;
	$FLMV02Y26 = ($FLMV02Y1 / 36) * 25 + 10;
	$FLMV02Y27 = ($FLMV02Y1 / 36) * 26 + -10;
	$FLMV02Y28 = ($FLMV02Y1 / 36) * 27 + 0;
	$FLMV02Y29 = ($FLMV02Y1 / 36) * 28 + -15;
	$FLMV02Y30 = ($FLMV02Y1 / 36) * 29 + -10;
	$FLMV02Y31 = ($FLMV02Y1 / 36) * 30 + -5;
	$FLMV02Y32 = ($FLMV02Y1 / 36) * 31 + 0;
	$FLMV02Y33 = ($FLMV02Y1 / 36) * 32 + 5;
	$FLMV02Y34 = ($FLMV02Y1 / 36) * 33 + 10;
	$FLMV02Y35 = ($FLMV02Y1 / 36) * 34 + 15;
	$FLMV02Y36 = ($FLMV02Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名２", $t2, (@0,@0){@$FLMV02X2,@$FLMV02Y2}{@$FLMV02X3,@$FLMV02Y3}(@$FLMV02X4,@$FLMV02Y4){@$FLMV02X5,@$FLMV02Y5}{@$FLMV02X6,@$FLMV02Y6}(@$FLMV02X7,@$FLMV02Y7){@$FLMV02X8,@$FLMV02Y8}{@$FLMV02X9,@$FLMV02Y9}(@$FLMV02X10,@$FLMV02Y10){@$FLMV02X11,@$FLMV02Y11}{@$FLMV02X12,@$FLMV02Y12}(@$FLMV02X13,@$FLMV02Y13){@$FLMV02X14,@$FLMV02Y14}{@$FLMV02X15,@$FLMV02Y15}(@$FLMV02X16,@$FLMV02Y16){@$FLMV02X17,@$FLMV02Y17}{@$FLMV02X18,@$FLMV02Y18}(@$FLMV02X19,@$FLMV02Y19){@$FLMV02X20,@$FLMV02Y20}{@$FLMV02X21,@$FLMV02Y21}(@$FLMV02X22,@$FLMV02Y22){@$FLMV02X23,@$FLMV02Y23}{@$FLMV02X24,@$FLMV02Y24}(@$FLMV02X25,@$FLMV02Y25){@$FLMV02X26,@$FLMV02Y26}{@$FLMV02X27,@$FLMV02Y27}(@$FLMV02X28,@$FLMV02Y28){@$FLMV02X29,@$FLMV02Y29}{@$FLMV02X30,@$FLMV02Y30}(@$FLMV02X31,@$FLMV02Y31){@$FLMV02X32,@$FLMV02Y32}{@$FLMV02X33,@$FLMV02Y33}(@$FLMV02X34,@$FLMV02Y34){@$FLMV02X35,@$FLMV02Y35}{@$FLMV02X36,@$FLMV02Y36}(@$FLMV02X1,@$FLMV02Y1), null, true);
	}
}


function FlyMovingXXX3()
{

$loopmovetime3 = $ループムーブタイム３;

	$FLMV03X1 = $x;
	$FLMV03X2 = ($FLMV03X1 / 36) * 1 + 5;
	$FLMV03X3 = ($FLMV03X1 / 36) * 2 + -10;
	$FLMV03X4 = ($FLMV03X1 / 36) * 3 + -10;
	$FLMV03X5 = ($FLMV03X1 / 36) * 4 + 5;
	$FLMV03X6 = ($FLMV03X1 / 36) * 5 + -10;
	$FLMV03X7 = ($FLMV03X1 / 36) * 6 + -10;
	$FLMV03X8 = ($FLMV03X1 / 36) * 7 + -10;
	$FLMV03X9 = ($FLMV03X1 / 36) * 8 + 5;
	$FLMV03X10 = ($FLMV03X1 / 36) * 9 + 0;
	$FLMV03X11 = ($FLMV03X1 / 36) * 10 + 5;
	$FLMV03X12 = ($FLMV03X1 / 36) * 11 + 10;
	$FLMV03X13 = ($FLMV03X1 / 36) * 12 + 15;
	$FLMV03X14 = ($FLMV03X1 / 36) * 13 + 10;
	$FLMV03X15 = ($FLMV03X1 / 36) * 14 + 5;
	$FLMV03X16 = ($FLMV03X1 / 36) * 15 + 0;
	$FLMV03X17 = ($FLMV03X1 / 36) * 16 + -5;
	$FLMV03X18 = ($FLMV03X1 / 36) * 17 + 5;
	$FLMV03X19 = ($FLMV03X1 / 36) * 18;
	$FLMV03X20 = ($FLMV03X1 / 36) * 19 + 5;
	$FLMV03X21 = ($FLMV03X1 / 36) * 20 + -10;
	$FLMV03X22 = ($FLMV03X1 / 36) * 21 + -10;
	$FLMV03X23 = ($FLMV03X1 / 36) * 22 + 5;
	$FLMV03X24 = ($FLMV03X1 / 36) * 23 + -10;
	$FLMV03X25 = ($FLMV03X1 / 36) * 24 + -10;
	$FLMV03X26 = ($FLMV03X1 / 36) * 25 + -10;
	$FLMV03X27 = ($FLMV03X1 / 36) * 26 + 5;
	$FLMV03X28 = ($FLMV03X1 / 36) * 27 + 0;
	$FLMV03X29 = ($FLMV03X1 / 36) * 28 + 5;
	$FLMV03X30 = ($FLMV03X1 / 36) * 29 + 10;
	$FLMV03X31 = ($FLMV03X1 / 36) * 30 + 15;
	$FLMV03X32 = ($FLMV03X1 / 36) * 31 + 10;
	$FLMV03X33 = ($FLMV03X1 / 36) * 32 + 5;
	$FLMV03X34 = ($FLMV03X1 / 36) * 33 + 0;
	$FLMV03X35 = ($FLMV03X1 / 36) * 34 + -5;
	$FLMV03X36 = ($FLMV03X1 / 36) * 35 + 5;


	$FLMV03Y1 = $y;
	$FLMV03Y2 = ($FLMV03Y1 / 36) * 1 + -10;
	$FLMV03Y3 = ($FLMV03Y1 / 36) * 2 + 10;
	$FLMV03Y4 = ($FLMV03Y1 / 36) * 3 + -5;
	$FLMV03Y5 = ($FLMV03Y1 / 36) * 4 + -10;
	$FLMV03Y6 = ($FLMV03Y1 / 36) * 5 + 5;
	$FLMV03Y7 = ($FLMV03Y1 / 36) * 6 + 0;
	$FLMV03Y8 = ($FLMV03Y1 / 36) * 7 + 10;
	$FLMV03Y9 = ($FLMV03Y1 / 36) * 8 + -10;
	$FLMV03Y10 = ($FLMV03Y1 / 36) * 9 + 0;
	$FLMV03Y11 = ($FLMV03Y1 / 36) * 10 + -15;
	$FLMV03Y12 = ($FLMV03Y1 / 36) * 11 + -10;
	$FLMV03Y13 = ($FLMV03Y1 / 36) * 12 + -5;
	$FLMV03Y14 = ($FLMV03Y1 / 36) * 13 + 0;
	$FLMV03Y15 = ($FLMV03Y1 / 36) * 14 + 5;
	$FLMV03Y16 = ($FLMV03Y1 / 36) * 15 + 10;
	$FLMV03Y17 = ($FLMV03Y1 / 36) * 16 + 15;
	$FLMV03Y18 = ($FLMV03Y1 / 36) * 17 + 5;
	$FLMV03Y19 = ($FLMV03Y1 / 36) * 18;
	$FLMV03Y20 = ($FLMV03Y1 / 36) * 19 + -10;
	$FLMV03Y21 = ($FLMV03Y1 / 36) * 20 + 10;
	$FLMV03Y22 = ($FLMV03Y1 / 36) * 21 + -5;
	$FLMV03Y23 = ($FLMV03Y1 / 36) * 22 + -10;
	$FLMV03Y24 = ($FLMV03Y1 / 36) * 23 + 5;
	$FLMV03Y25 = ($FLMV03Y1 / 36) * 24 + 0;
	$FLMV03Y26 = ($FLMV03Y1 / 36) * 25 + 10;
	$FLMV03Y27 = ($FLMV03Y1 / 36) * 26 + -10;
	$FLMV03Y28 = ($FLMV03Y1 / 36) * 27 + 0;
	$FLMV03Y29 = ($FLMV03Y1 / 36) * 28 + -15;
	$FLMV03Y30 = ($FLMV03Y1 / 36) * 29 + -10;
	$FLMV03Y31 = ($FLMV03Y1 / 36) * 30 + -5;
	$FLMV03Y32 = ($FLMV03Y1 / 36) * 31 + 0;
	$FLMV03Y33 = ($FLMV03Y1 / 36) * 32 + 5;
	$FLMV03Y34 = ($FLMV03Y1 / 36) * 33 + 10;
	$FLMV03Y35 = ($FLMV03Y1 / 36) * 34 + 15;
	$FLMV03Y36 = ($FLMV03Y1 / 36) * 35 + 5;

	Wait(10);
	begin:
	Wait(10);


	while(1)
	{
	Wait(10);
	BezierMove("$ループムーブナット名３", $loopmovetime3, (@0,@0){@$FLMV03X2,@$FLMV03Y2}{@$FLMV03X3,@$FLMV03Y3}(@$FLMV03X4,@$FLMV03Y4){@$FLMV03X5,@$FLMV03Y5}{@$FLMV03X6,@$FLMV03Y6}(@$FLMV03X7,@$FLMV03Y7){@$FLMV03X8,@$FLMV03Y8}{@$FLMV03X9,@$FLMV03Y9}(@$FLMV03X10,@$FLMV03Y10){@$FLMV03X11,@$FLMV03Y11}{@$FLMV03X12,@$FLMV03Y12}(@$FLMV03X13,@$FLMV03Y13){@$FLMV03X14,@$FLMV03Y14}{@$FLMV03X15,@$FLMV03Y15}(@$FLMV03X16,@$FLMV03Y16){@$FLMV03X17,@$FLMV03Y17}{@$FLMV03X18,@$FLMV03Y18}(@$FLMV03X19,@$FLMV03Y19){@$FLMV03X20,@$FLMV03Y20}{@$FLMV03X21,@$FLMV03Y21}(@$FLMV03X22,@$FLMV03Y22){@$FLMV03X23,@$FLMV03Y23}{@$FLMV03X24,@$FLMV03Y24}(@$FLMV03X25,@$FLMV03Y25){@$FLMV03X26,@$FLMV03Y26}{@$FLMV03X27,@$FLMV03Y27}(@$FLMV03X28,@$FLMV03Y28){@$FLMV03X29,@$FLMV03Y29}{@$FLMV03X30,@$FLMV03Y30}(@$FLMV03X31,@$FLMV03Y31){@$FLMV03X32,@$FLMV03Y32}{@$FLMV03X33,@$FLMV03Y33}(@$FLMV03X34,@$FLMV03Y34){@$FLMV03X35,@$FLMV03Y35}{@$FLMV03X36,@$FLMV03Y36}(@$FLMV03X1,@$FLMV03Y1), null, true);
	}
}

function FlyMovingXXX4()
{

$t4 = $ループムーブタイム４;

	$FLMV04X1 = $x;
	$FLMV04X2 = ($FLMV04X1 / 36) * 1 + 5;
	$FLMV04X3 = ($FLMV04X1 / 36) * 2 + -10;
	$FLMV04X4 = ($FLMV04X1 / 36) * 3 + -10;
	$FLMV04X5 = ($FLMV04X1 / 36) * 4 + 5;
	$FLMV04X6 = ($FLMV04X1 / 36) * 5 + -10;
	$FLMV04X7 = ($FLMV04X1 / 36) * 6 + -10;
	$FLMV04X8 = ($FLMV04X1 / 36) * 7 + -10;
	$FLMV04X9 = ($FLMV04X1 / 36) * 8 + 5;
	$FLMV04X10 = ($FLMV04X1 / 36) * 9 + 0;
	$FLMV04X11 = ($FLMV04X1 / 36) * 10 + 5;
	$FLMV04X12 = ($FLMV04X1 / 36) * 11 + 10;
	$FLMV04X13 = ($FLMV04X1 / 36) * 12 + 15;
	$FLMV04X14 = ($FLMV04X1 / 36) * 13 + 10;
	$FLMV04X15 = ($FLMV04X1 / 36) * 14 + 5;
	$FLMV04X16 = ($FLMV04X1 / 36) * 15 + 0;
	$FLMV04X17 = ($FLMV04X1 / 36) * 16 + -5;
	$FLMV04X18 = ($FLMV04X1 / 36) * 17 + 5;
	$FLMV04X19 = ($FLMV04X1 / 36) * 18;
	$FLMV04X20 = ($FLMV04X1 / 36) * 19 + 5;
	$FLMV04X21 = ($FLMV04X1 / 36) * 20 + -10;
	$FLMV04X22 = ($FLMV04X1 / 36) * 21 + -10;
	$FLMV04X23 = ($FLMV04X1 / 36) * 22 + 5;
	$FLMV04X24 = ($FLMV04X1 / 36) * 23 + -10;
	$FLMV04X25 = ($FLMV04X1 / 36) * 24 + -10;
	$FLMV04X26 = ($FLMV04X1 / 36) * 25 + -10;
	$FLMV04X27 = ($FLMV04X1 / 36) * 26 + 5;
	$FLMV04X28 = ($FLMV04X1 / 36) * 27 + 0;
	$FLMV04X29 = ($FLMV04X1 / 36) * 28 + 5;
	$FLMV04X30 = ($FLMV04X1 / 36) * 29 + 10;
	$FLMV04X31 = ($FLMV04X1 / 36) * 30 + 15;
	$FLMV04X32 = ($FLMV04X1 / 36) * 31 + 10;
	$FLMV04X33 = ($FLMV04X1 / 36) * 32 + 5;
	$FLMV04X34 = ($FLMV04X1 / 36) * 33 + 0;
	$FLMV04X35 = ($FLMV04X1 / 36) * 34 + -5;
	$FLMV04X36 = ($FLMV04X1 / 36) * 35 + 5;


	$FLMV04Y1 = $y;
	$FLMV04Y2 = ($FLMV04Y1 / 36) * 1 + -10;
	$FLMV04Y3 = ($FLMV04Y1 / 36) * 2 + 10;
	$FLMV04Y4 = ($FLMV04Y1 / 36) * 3 + -5;
	$FLMV04Y5 = ($FLMV04Y1 / 36) * 4 + -10;
	$FLMV04Y6 = ($FLMV04Y1 / 36) * 5 + 5;
	$FLMV04Y7 = ($FLMV04Y1 / 36) * 6 + 0;
	$FLMV04Y8 = ($FLMV04Y1 / 36) * 7 + 10;
	$FLMV04Y9 = ($FLMV04Y1 / 36) * 8 + -10;
	$FLMV04Y10 = ($FLMV04Y1 / 36) * 9 + 0;
	$FLMV04Y11 = ($FLMV04Y1 / 36) * 10 + -15;
	$FLMV04Y12 = ($FLMV04Y1 / 36) * 11 + -10;
	$FLMV04Y13 = ($FLMV04Y1 / 36) * 12 + -5;
	$FLMV04Y14 = ($FLMV04Y1 / 36) * 13 + 0;
	$FLMV04Y15 = ($FLMV04Y1 / 36) * 14 + 5;
	$FLMV04Y16 = ($FLMV04Y1 / 36) * 15 + 10;
	$FLMV04Y17 = ($FLMV04Y1 / 36) * 16 + 15;
	$FLMV04Y18 = ($FLMV04Y1 / 36) * 17 + 5;
	$FLMV04Y19 = ($FLMV04Y1 / 36) * 18;
	$FLMV04Y20 = ($FLMV04Y1 / 36) * 19 + -10;
	$FLMV04Y21 = ($FLMV04Y1 / 36) * 20 + 10;
	$FLMV04Y22 = ($FLMV04Y1 / 36) * 21 + -5;
	$FLMV04Y23 = ($FLMV04Y1 / 36) * 22 + -10;
	$FLMV04Y24 = ($FLMV04Y1 / 36) * 23 + 5;
	$FLMV04Y25 = ($FLMV04Y1 / 36) * 24 + 0;
	$FLMV04Y26 = ($FLMV04Y1 / 36) * 25 + 10;
	$FLMV04Y27 = ($FLMV04Y1 / 36) * 26 + -10;
	$FLMV04Y28 = ($FLMV04Y1 / 36) * 27 + 0;
	$FLMV04Y29 = ($FLMV04Y1 / 36) * 28 + -15;
	$FLMV04Y30 = ($FLMV04Y1 / 36) * 29 + -10;
	$FLMV04Y31 = ($FLMV04Y1 / 36) * 30 + -5;
	$FLMV04Y32 = ($FLMV04Y1 / 36) * 31 + 0;
	$FLMV04Y33 = ($FLMV04Y1 / 36) * 32 + 5;
	$FLMV04Y34 = ($FLMV04Y1 / 36) * 33 + 10;
	$FLMV04Y35 = ($FLMV04Y1 / 36) * 34 + 15;
	$FLMV04Y36 = ($FLMV04Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名４", $t4, (@0,@0){@$FLMV04X2,@$FLMV04Y2}{@$FLMV04X3,@$FLMV04Y3}(@$FLMV04X4,@$FLMV04Y4){@$FLMV04X5,@$FLMV04Y5}{@$FLMV04X6,@$FLMV04Y6}(@$FLMV04X7,@$FLMV04Y7){@$FLMV04X8,@$FLMV04Y8}{@$FLMV04X9,@$FLMV04Y9}(@$FLMV04X10,@$FLMV04Y10){@$FLMV04X11,@$FLMV04Y11}{@$FLMV04X12,@$FLMV04Y12}(@$FLMV04X13,@$FLMV04Y13){@$FLMV04X14,@$FLMV04Y14}{@$FLMV04X15,@$FLMV04Y15}(@$FLMV04X16,@$FLMV04Y16){@$FLMV04X17,@$FLMV04Y17}{@$FLMV04X18,@$FLMV04Y18}(@$FLMV04X19,@$FLMV04Y19){@$FLMV04X20,@$FLMV04Y20}{@$FLMV04X21,@$FLMV04Y21}(@$FLMV04X22,@$FLMV04Y22){@$FLMV04X23,@$FLMV04Y23}{@$FLMV04X24,@$FLMV04Y24}(@$FLMV04X25,@$FLMV04Y25){@$FLMV04X26,@$FLMV04Y26}{@$FLMV04X27,@$FLMV04Y27}(@$FLMV04X28,@$FLMV04Y28){@$FLMV04X29,@$FLMV04Y29}{@$FLMV04X30,@$FLMV04Y30}(@$FLMV04X31,@$FLMV04Y31){@$FLMV04X32,@$FLMV04Y32}{@$FLMV04X33,@$FLMV04Y33}(@$FLMV04X34,@$FLMV04Y34){@$FLMV04X35,@$FLMV04Y35}{@$FLMV04X36,@$FLMV04Y36}(@$FLMV04X1,@$FLMV04Y1), null, true);
	}
}




function FlyMoving()
{

$loopmovetime = $ループムーブタイム;

	Wait(10);
	begin:
	Wait(10);

	while(1)
	{


	Wait(10);
	BezierMove("$ループムーブナット名", $loopmovetime, (@0,@0){@5,@-10}{@-10,@10}(@-10,@-5){@5,@-10}{@-10,@5}(@-10,@0){@-10,@10}{@5,@-10}(@0,@0){@5,@-15}{@10,@-10}(@15,@-5){@10,@0}{@5,@5}(@0,@10){@-5,@15}{@5,@5}(@0,@0){@5,@-10}{@-10,@10}(@-10,@-5){@5,@-10}{@-10,@5}(@-10,@0){@-10,@10}{@5,@-10}(@0,@0){@5,@-15}{@10,@-10}(@15,@-5){@10,@0}{@5,@5}(@0,@10){@-5,@15}{@5,@5}(@0,@0), null, true);
	}
}

function FlyMoving2()
{

$loopmovetime2 = $ループムーブタイム２;

	Wait(10);
	begin:
	Wait(10);

	while(1)
	{

	Wait(10);
	BezierMove("$ループムーブナット名２", $loopmovetime2, (@0,@0){@5,@-10}{@-10,@10}(@-10,@-5){@5,@-10}{@-10,@5}(@-10,@0){@-10,@10}{@5,@-10}(@0,@0){@5,@-15}{@10,@-10}(@15,@-5){@10,@0}{@5,@5}(@0,@10){@-5,@15}{@5,@5}(@0,@0){@5,@-10}{@-10,@10}(@-10,@-5){@5,@-10}{@-10,@5}(@-10,@0){@-10,@10}{@5,@-10}(@0,@0){@5,@-15}{@10,@-10}(@15,@-5){@10,@0}{@5,@5}(@0,@10){@-5,@15}{@5,@5}(@0,@0), null, true);
	}
}


function FlyMoving3()
{

$loopmovetime3 = $ループムーブタイム３;

	Wait(10);
	begin:
	Wait(10);

	while(1)
	{


	Wait(10);
	BezierMove("$ループムーブナット名３", $loopmovetime3, (@0,@0){@5,@-10}{@-10,@10}(@-10,@-5){@5,@-10}{@-10,@5}(@-10,@0){@-10,@10}{@5,@-10}(@0,@0){@5,@-15}{@10,@-10}(@15,@-5){@10,@0}{@5,@5}(@0,@10){@-5,@15}{@5,@5}(@0,@0){@5,@-10}{@-10,@10}(@-10,@-5){@5,@-10}{@-10,@5}(@-10,@0){@-10,@10}{@5,@-10}(@0,@0){@5,@-15}{@10,@-10}(@15,@-5){@10,@0}{@5,@5}(@0,@10){@-5,@15}{@5,@5}(@0,@0), null, true);
	}
}

function FlyMoving4()
{

$loopmovetime4 = $ループムーブタイム４;

	Wait(10);
	begin:
	Wait(10);

	while(1)
	{


	Wait(10);
	BezierMove("$ループムーブナット名４", $loopmovetime4, (@0,@0){@5,@-10}{@-10,@10}(@-10,@-5){@5,@-10}{@-10,@5}(@-10,@0){@-10,@10}{@5,@-10}(@0,@0){@5,@-15}{@10,@-10}(@15,@-5){@10,@0}{@5,@5}(@0,@10){@-5,@15}{@5,@5}(@0,@0){@5,@-10}{@-10,@10}(@-10,@-5){@5,@-10}{@-10,@5}(@-10,@0){@-10,@10}{@5,@-10}(@0,@0){@5,@-15}{@10,@-10}(@15,@-5){@10,@0}{@5,@5}(@0,@10){@-5,@15}{@5,@5}(@0,@0), null, true);
	}
}

function TurboBlur()
{

	while(1){
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 200, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 50, 300, null, true);
	Fade("$効果ナット名", 150, 0, null, true);
	Rotate("$効果ナット名", 0, @0, @0, @180, null,true);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 200, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 50, 350, null, true);
	Fade("$効果ナット名", 150, 0, null, true);


	}

}

function TurboBlur2()
{

	while(1){
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 500, 1050, 1050, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 450, 0, null, true);

	Wait(500);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 200, 1020, 1020, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 150, 0, null, true);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 800, 1050, 1050, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 750, 0, null, true);

	Wait(800);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 500, 1050, 1050, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 450, 0, null, true);

	Wait(400);


	}

}

function RotateLoop()
{
	while(1){
	Rotate("$効果ナット名１", 500, @0, @0, 10, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 0, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 5, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 0, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 5, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 0, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 5, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$効果ナット名１", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$効果ナット名２", 500, @0, @0, 0, AxlDxl,true);
	}
}

function TelopStart(画像優先度,$fテロップ描画時間,X座標,Y座標,$fテロップ画像,$fテロップテンポ)
{

/*
	CreateColor("f黒幕テロップ", 画像優先度, 0, 0, 1024, 576, "BLACK");
	SetAlias("f黒幕テロップ","f黒幕テロップ");
	Fade("f黒幕テロップ", 0, 0, null, true);
	Zoom("f黒幕テロップ", 0, 1000, 200, null, true);
	Move("f黒幕テロップ", 0, X座標, Y座標, null, true);
*/
	CreateTexture("fテロップ画像ナット", 画像優先度, X座標, Y座標, $fテロップ画像);
	SetAlias("fテロップ画像ナット","fテロップ画像ナット");
	Fade("fテロップ画像ナット", 0, 0, null, true);

	CreateProcess("functonテロッププロセス", 150, 0, 0, "TelopStartB");
	SetAlias("functonテロッププロセス","functonテロッププロセス");
	Request("functonテロッププロセス", Start);

}

function TelopStartB()
{
	Fade("@f黒幕テロップ", 1000, 500, $fテロップテンポ, false);
	Fade("@fテロップ画像ナット", 500, 1000, $fテロップテンポ, true);
	Wait($fテロップ描画時間);
	Fade("@f黒幕テロップ", 1000, 0, $fテロップテンポ, false);
	Fade("@fテロップ画像ナット", 500, 0, $fテロップテンポ, true);
	Delete("@fテロップ画像ナット");
	Request("@functonテロッププロセス", Stop);

}

function TelopDelete(描画時間,$fテロップテンポ)
{

	Fade("@fテロップ画像ナット", 描画時間, 0, $fテロップテンポ, true);
	Delete("@f黒幕テロップ");
	Delete("@fテロップ画像ナット");
	Delete("@functonテロッププロセス");

}

