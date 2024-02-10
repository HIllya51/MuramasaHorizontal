
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004hazure01cc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg050_湊斗家門前_01=true;

	//▼ルートフラグ、選択肢、次のGameName

	if($md05_２週目==true){$統目的２_Flag = true;}
	else{$統目的_Flag = true;}

	$PreGameName = $GameName;
	$GameName = "md05_004hazure01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004hazure01cc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004hazure01c.nss"


	PrintBG("上背景", 30000);

	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");

//●目的の事
//◆フラグ分岐

//――――――――――――――――――――――――――――――
.//◆第二段階

//●目的の事

if($md05_２週目==true){



	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【統】
<voice name="統" class="統" src="voice/md05/004ha0070b46">
「你能帮我阻止光吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$統目的２_Flag = true;

}else{

//――――――――――――――――――――――――――――――
.//◆第一段階



	SetFwC("cg/fw/fw統_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【統】
<voice name="統" class="統" src="voice/md05/004ha0060b46">
「……只要遵守约定就行了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$統目的_Flag = true;

}


..//ジャンプ指定
//次ファイル

}


