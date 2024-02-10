
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03cba.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg086_病室_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($同行者 == "本家"){call_scene @->md05_004byoushitsu03cba_ho.nss;}
	else if($同行者 == "統"){call_scene @->md05_004byoushitsu03cba_su.nss;}
	else if($同行者 == "村正"){call_scene @->md05_004byoushitsu03cba_mu.nss;}
	else{}

	if($同行者=="村正"){
		$PreGameName = $GameName;
		$GameName = "md05_004end.nss";
	}else{
		$PreGameName = $GameName;
		$GameName = "md05_004gameover.nss";
	}

}

scene md05_004byoushitsu03cba.nss
{

..//ジャンプ指定
//前ファイル　"md05_004byoushitsu03cb.nss"

//●湊斗景明を
//◆フラグ分岐



}

//――――――――――――――――――――――――――――――
.//◆※本家
//◆$本家同行_Flag
scene md05_004byoushitsu03cba_ho.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");

	Delete("上背景");

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004by0160b52">
「景明……你神智错乱了吗？」

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
//◆$統同行_Flag
scene md05_004byoushitsu03cba_su.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");


	Delete("上背景");

	SetFwC("cg/fw/fw統_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【統】
<voice name="統" class="統" src="voice/md05/004by0170b46">
「等、等等，儿啊！
　要是有烦恼就尽管对我说，别连个条理都没
有就突然开播悬疑剧啊！」

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
//◆$村正同行_Flag
scene md05_004byoushitsu03cba_mu.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");


	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");


//◆攻撃。ざしゅ。血

	OnSE("se戦闘_攻撃_刀刺さる03", 1000);

	CreateTextureEX("絵背景10", 6100, @0, @0, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵背景10", 300, 1000, null, true);
	CreateTextureEX("絵背景20", 6200, @0, @0, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵背景20", 500, 1000, null, true);
	Delete("絵背景10");
	Delete("絵窓");
	SetVolume("@mbgm*", 1000, 0, null);

	WaitKey(1000);

	FadeDelete("絵背景*",1000,true);

//◆洗脳景明、倒れる

	OnSE("se人体_衝撃_転倒01", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0180a01">
《……咦……？》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0190a01">
《为什么？
　这种——不对……！》

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004by0200a00">
「…………」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004by0210a00">
「没有……不对。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　————没错。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/004by0220a00">
「这样就行了……
　这是……正确的。村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0230a01">
《主君!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　没错。
　
　这是正确的方法。

　要杀凑斗光的话，凑斗景明就会成为最大的阻碍。
  因为凑斗景明注定要保护凑斗光。

　那么就从一开始，将这种阻碍杀掉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル　"md05_004end.nss"

}


