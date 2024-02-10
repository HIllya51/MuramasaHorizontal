//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mz01_002.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$香奈枝死亡 = true;
	$Kanae_Dead = true;
	$Kanae_Flag = 0;
	$完全香奈枝死亡 = true;

	$GameName = $Next_deadGame;
//	$GameName = "mz00_001.nss";

}

scene mz01_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　""

//●香奈枝を殺す

//◆剣撃。ずばしゅ
//◆銃撃。ばきゅーん。
//◆血煙。ぶしゃー。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	CreateSE("SE01b","se人体_血_たれる01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureEX("絵演背景", 1000, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("絵演背景", 0, 1250, 1250, null, true);
	SetBlur("絵演背景", true, 3, 500, 200, false);
	FadeFR2("絵演背景",0,750,200,0,0,50,AxlDxl, false);

	CreateSE("SE01c","se戦闘_銃器_拳銃発砲01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorEX("絵色白", 2000, "#FFFFFF");
	Fade("絵色白", 100, 1000, null, true);

	FadeDelete("絵演背景", 300, false);
	FadeDelete("絵色白", 300, true);

	CreateSE("SE01d","se戦闘_攻撃_刀刺さる03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	CreateColorEX("絵色血", 2000, "#CC0000");
	Fade("絵色血", 100, 1000, null, true);
	FadeDelete("絵色血", 300, true);

	WaitKey(300);

	CreateSE("SE01e","se特殊_ヒロイン_惨殺03");
	MusicStart("SE01e",0,1000,0,1000,null,false);
	SL_leftdam(@0, @0,1000);
	SL_leftdamfade2(10);

	WaitPlay("SE*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　杀了大鸟香奈枝。
　……杀了她。

　心脏剧烈跳动着。
　有别于杀人所带来的快感——杀人时的感触
并不会为心脏注入活力。反而只能把心脏冻结，
让我因寒冷而颤栗。

　加速的心跳，是因感受到杀意。
　感受到生命被威胁，从而将这份威胁转化为反击。

　我从上空、身后发动袭击的瞬间。
　孤军奋战的她，独自一人察觉出杀气，
拔枪放出一弹。

　简直像事先预感到会发生一般。
　长枪中预先装入了子弹。
　即便意识到袭击者的存在也没有半分惊慌。

　如今斯人已去。
　她香消玉殒的脸上，果然不留一丝疑念。

　只有信念。
　得知战败后的表情。
　
　士兵的表情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0020010a00">
（啊——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
　我悟了。

　——她并没有相信我。

　她其实看穿了我的谎言。
　识破了真相。

　那又是为什么……
　会被我所杀。

　为什么？<RUBY text="········">是原谅了我的罪行</RUBY>吗？

　她本可以杀了我。
　本可以如此。如果之前就已对我心生怀疑！

　为什么——
　
　——难道？

　她本想，<RUBY text="····">试着相信</RUBY>我吗？

　……是非难断。
　大鸟香奈枝已无法回答我的疑问。

　我唯有俯视她的尸骸，
　对于失去了本不该失去的女人这一事实，深感恐惧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(3000, 2000);


//◆ヒロイン画面：香奈枝欄にキルマーク

}

..//ジャンプ指定
//次ファイル　""