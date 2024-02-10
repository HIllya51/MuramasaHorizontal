	//<continuation number="30">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_014.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg045_普陀楽城公方の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_015.nss";

}

scene mb02_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_013.nss"

//◆フェード
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　冷岩石旅次之眠 冰肌肤彻体之寒
　　　　　　　　　　　可借否青苔之裳
　
　　　　　　　　　　　　　……小野小町之于遍昭和尚

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆邦氏私室
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0140010a00">
「这首收录于后选和歌集中。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0140020b49">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　看着起初完全没有弄清状况的邦氏，我直截告诉他这
么一句话。
　既位于大和贵族之列，和歌乃属基本教养的范畴。这
句解释想必足矣。

　过了几秒。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_恋情.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	SetComic(@0,@0,3);}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0140030b49">
「啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteComic();

	OnSE("se人体_衝撃_転倒01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　足利邦氏晕厥了过去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェード
	SetVolume("@mbgm*", 2500, 0, null);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　遁世出家人 青苔裳无二
　　　　　　　不借疏情分 与君共眠否
　
　　　　　　　　　　　　　　　　　……遍昭答诗

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"mb02_015.nss"