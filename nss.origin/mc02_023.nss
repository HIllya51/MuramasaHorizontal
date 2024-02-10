//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_023.nss_MAIN
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
	#イベントファイル名=true;
	#ev220_茶々丸の世界=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_024.nss";

}

scene mc02_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_022.nss"

//◆普陀楽城
//◆茶々丸の間
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景11", 11, Center, Middle, "cg/bg/bg045_普陀楽城公方の間_01.jpg");
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("上背景");
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0230010a07">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆〝茶々丸の世界_を表現
//◆画面がうにょーんと歪んで
//◆雑音ＳＥ。人声やら物音やらごちゃ混ぜ
//◆やがてそれを圧する怪音波。耳障り
	CreateSE("ちゃちゃまる", "se特殊_その他_茶々丸の世界_L");
	MusicStart("ちゃちゃまる", 0, 1000, 0, 1000, null,true);
	CreateTextureEX("絵背景10", 12, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Fade("絵背景10", 1000, 500, null, true);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0230020a07">
「吵死了。」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0230030a07">
「吵死了！
　吵死了!!」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0230040a07">
「我今天就成全你。
　所以……别在我<RUBY text="··">耳边</RUBY>嚷嚷！」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0230050a07">
「让我睡觉!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(300);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　
　　　　　　　　　上午七点四〇分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("ちゃちゃまる", 1500, 0, AxlAuto);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	WaitPlay("ちゃちゃまる", null);

	ClearFadeAll(0, true);

}

..//ジャンプ指定
//次ファイル　"mc02_024.nss"