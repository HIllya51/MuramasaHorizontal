
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004saidenn01b.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($md05_３週目 == true){
		call_scene @->md05_004saidenn01b_03.nss;
	}else if($md05_２週目 == true){
		call_scene @->md05_004saidenn01b_02.nss;
	}else{
		call_scene @->md05_004saidenn01b_01.nss;
	}


	$PreGameName = $GameName;
	$GameName = "md05_004saidenn01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004saidenn01b.nss
{

..//ジャンプ指定
//前ファイル　"md05_004saidenn01.nss"

//●話す
//◆フラグ分岐

}


//――――――――――――――――――――――――――――――
.//◆第三段階
scene md05_004saidenn01b_03.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);

	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004sa0030a01">
《吾乃村正。
　你的……剑胄。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

//――――――――――――――――――――――――――――――
.//◆第二段階
scene md05_004saidenn01b_02.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);

	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004sa0020a01">
《吾乃……村正。
　继承千子右卫门之名的最后之剑胄……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}



//――――――――――――――――――――――――――――――
.//◆第一段階
scene md05_004saidenn01b_01.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);

	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004sa0010a01">
《……吾……
　有什么必须要做之事……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル

}


