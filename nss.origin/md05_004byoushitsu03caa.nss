
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03caa.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg086_病室_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($同行者 == "本家"){call_scene @->md05_004byoushitsu03caa_ho.nss;}
	else if($同行者 == "統"){call_scene @->md05_004byoushitsu03caa_su.nss;}
	else if($同行者 == "村正"){call_scene @->md05_004byoushitsu03caa_mu.nss;}
	else{}

	$PreGameName = $GameName;

	$GameName = "md05_004gameover.nss";

}

scene md05_004byoushitsu03caa.nss
{

..//ジャンプ指定
//前ファイル　"md05_004byoushitsu03ca.nss"
//●湊斗景明を
//◆フラグ分岐


}


//――――――――――――――――――――――――――――――
.//◆※本家
//◆$本家同行_Flag$=同行者="本家"
scene md05_004byoushitsu03caa_ho.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");

	SetFwC("cg/fw/fw本家_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004by0040b52">
「老夫为何非做这种事不可！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆白銀光
//◆→●失敗

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);
	SetVolume("@mbgm*", 1000, 0, null);


..//ジャンプ指定
//次ファイル　"md05_004gameover.nss"

}

//――――――――――――――――――――――――――――――
.//◆※統
//◆$統同行_Flag=$同行者="統"
scene md05_004byoushitsu03caa_su.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	SetFwC("cg/fw/fw統_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【統】
<voice name="統" class="統" src="voice/md05/004by0050b46">
「保护……从什么那里？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆白銀光
//◆→●失敗

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

	SetVolume("@mbgm*", 1000, 0, null);


..//ジャンプ指定
//次ファイル　"md05_004gameover.nss"

}

//――――――――――――――――――――――――――――――
.//◆※村正
//◆$村正同行_Flag$=同行者="村正"
scene md05_004byoushitsu03caa_mu.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");

	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0060a01">
《交给我吧！
　我有保护你的力量！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がきーん。装甲

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	DeleteStA(0,true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -410, InBottom, "cg/st/3d村正初期_立ち_通常.png");

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0070a01">
《这样不管面对什么都不用怕了！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　是吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆白銀光
//◆→●失敗

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

	SetVolume("@mbgm*", 1000, 0, null);


..//ジャンプ指定
//次ファイル　"md05_004gameover.nss"

}


