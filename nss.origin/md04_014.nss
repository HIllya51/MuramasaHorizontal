//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_014.nss_MAIN
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
	#bg016_公園a_03=true;
	#bg071_普陀楽城内張り出し_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_015.nss";

}

scene md04_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_013.nss"


//◆進駐軍夜営地（適当）。bg016＋進駐軍兵士
//◆進駐軍兵士、もう一人
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg020_山脈_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StL(1000, @0, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	Rotate("@StL*", 0, 180, 0, 180, null, false);
	StR(1100, @0, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");

	FadeStL(500, false);
	FadeStR(500, true);



	SetNwH("cg/fw/ny歩哨Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／歩哨Ａ】
<voice name="ｅｔｃ／歩哨Ａ" class="その他男声" src="voice/md04/0140010e245">
「换班吗？」

{	NwH("cg/fw/ny歩哨Ｂ.png");}
//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140020e246">
「嗯。辛苦了。」

{	NwH("cg/fw/ny歩哨Ａ.png");}
//【ｅｔｃ／歩哨Ａ】
<voice name="ｅｔｃ／歩哨Ａ" class="その他男声" src="voice/md04/0140030e245">
「真的很辛苦啊。
　终于能睡觉了。」

//【ｅｔｃ／歩哨Ａ】
<voice name="ｅｔｃ／歩哨Ａ" class="その他男声" src="voice/md04/0140040e245">
「大和人明明不可能精神好到来夜袭的……
白天都把他们打成那样了。
　现在肯定在准备逃跑呢。就算没有步哨也
没问题的。」

{	NwH("cg/fw/ny歩哨Ｂ.png");}
//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140050e246">
「即便如此，营地晚上怎么能没人值班呢？」

{	NwH("cg/fw/ny歩哨Ａ.png");}
//【ｅｔｃ／歩哨Ａ】
<voice name="ｅｔｃ／歩哨Ａ" class="その他男声" src="voice/md04/0140060e245">
「我知道啦。
　那么之后就拜托你了。」

{	NwH("cg/fw/ny歩哨Ｂ.png");}
//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140070e246">
「嗯。
　好好休息吧。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ばたり。


	OnSE("se人体_衝撃_転倒01", 1000);
	WaitKey(250);
	OnSE("se人体_衝撃_転倒02", 1000);
	DeleteStL(600, false);
	Move("@StL*", 600, @0, @60, Axl2, true);
	Wait(500);

	SetNwH("cg/fw/ny歩哨Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140080e246">
「……喂！」

//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140090e246">
「累也不能在这种地方睡啊！」

{	NwH("cg/fw/ny歩哨Ａ.png");}
//【ｅｔｃ／歩哨Ａ】
<voice name="ｅｔｃ／歩哨Ａ" class="その他男声" src="voice/md04/0140100e245">
「————」

{	NwH("cg/fw/ny歩哨Ｂ.png");}
//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140110e246">
「真是没办法。
　就那么累吗……」

{	DeleteStR(300, false);}
//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140120e246">
「喂，起来啊。
　………………………………」

{	SetVolume("@mbgm*", 1000, 0, null);}
//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140130e246">
「哎？
　这是什么？」

//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140140e246">
「喉咙上是……<RUBY text="Ｋｎｉｆｅ">短刀</RUBY>？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0);//―――――――――――――――――――――――――――――


//◆厩衆数騎
//■反転させる？ inc櫻井
	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 6050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 6100, -100, -344, "cg/bg/bg020_山脈_03.jpg");
	SetShade("絵演窓上/絵演背景", HEAVY);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	CreateTextureEX("絵演窓上/絵立絵", 6200, -750, -465, "cg/st/resize/3d厩衆_立ち_抜刀l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	OnSE("se人体_足音_鎧歩く03",1000);

	Move("絵演窓上/絵演背景", 2000, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 2000, -950, @0, Dxl2, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(1500);

	FadeDelete("絵色100", 1000, false);
	FadeDelete("絵演窓上*", 1000, true);
	Delete("絵演窓上*");

	OnSE("se特殊_鎧_駆動音02", 1000);

	StL(1050, @0, @0, "cg/st/3d厩衆_立ち_戦闘.png");
	StR(1000, @50, @0, "cg/st/3d厩衆_立ち_抜刀.png");
//	Rotate("@StR*", 0, @0, @180, @0, null,true);
//	Move("@StL*", 500, @100, @0, Axl3, false);
//	Move("@StML*", 500, @80, @0, Axl2, false);
	FadeStL(1000, false);
	FadeStR(1000, true);

	SetNwH("cg/fw/ny歩哨Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140150e246">
「——————」

//【ｅｔｃ／歩哨Ｂ】
<voice name="ｅｔｃ／歩哨Ｂ" class="その他男声" src="voice/md04/0140160e246">
「什……什么人——」

{	NwH("cg/fw/ny厩衆Ａ.png");}
//【ｅｔｃ／厩衆Ａ】
<voice name="ｅｔｃ／厩衆Ａ" class="その他男声" src="voice/md04/0140170e023">
「六波罗厩众。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆一閃



	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	CreateColorEX("黒幕１", 3000, "#000000");
	CreateTextureEXadd("一閃", 15000, @170, @0, "cg/ef/ef010_汎用斜め軌道.jpg");
	Fade("黒幕１", 100, 1000, null, false);
	Fade("一閃", 100, 1000, null, true);
	DeleteStR(0,true);
	OnSE("se戦闘_攻撃_刀刺さる05", 1000);
	CreateTextureEX("血", 16000, @0, @0, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("血", 300, 1000, null, true);
	Delete("一閃");
	FadeDelete("血",1000,true);
	
//◆ばったり。

	OnSE("se人体_衝撃_転倒02", 1000);

	SetNwH("cg/fw/ny厩衆Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／厩衆Ａ】
<voice name="ｅｔｃ／厩衆Ａ" class="その他男声" src="voice/md04/0140180e023">
「火。」

{	NwH("cg/fw/ny厩衆Ｂ.png");}
//【ｅｔｃ／厩衆Ｂ】
<voice name="ｅｔｃ／厩衆Ｂ" class="その他男声" src="voice/md04/0140190e024">
「好的。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆放火
//	CreateColorEX("黒幕１", 5000, "BLACK");
//	Fade("黒幕１", 1500, 1000, null, true);
	DeleteStA(0,true);
	OnSE("se人体_動作_着火音01", 1000);
	CreateColorSPadd("ひ", 17000, "#990000");
	CreateColorSPadd("ひ２", 16000, "#ffffcc");
	CreateColorSPadd("ひ０", 15000, "#FFFFFF");
	DrawTransition("ひ１", 0, 1000, 140, 300, null, "cg/data/circle_08_00_0.png", false);
	DrawTransition("ひ２", 0, 1000, 150, 200, null, "cg/data/circle_08_00_0.png", false);
	DrawTransition("ひ０", 0, 1000, 100, 50, null, "cg/data/circle_08_00_0.png", true);
	WaitKey(500);


//◆普陀楽テラス
	OnBG(100, "bg071_普陀楽城内張り出し_03.jpg");
	FadeBG(0, true);

	FadeDelete("ひ*", 1500, true);

	Wait(1000);
	FadeDelete("黒幕１",1000,true);
	Wait(1000);



	SetNwC("cg/fw/nw厩衆Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/md04/0140200e025">
「头领，看到了。
　在貌似敌军夜营地周边处发现火光。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0140210b37">
「好了。
　传令曲射炮炮手。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0140220b37">
「攻击那火光。」

{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/md04/0140230e025">
「是！」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0140240b37">
「这样多少能报点仇了吧。」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0140250b37">
「……时间……
　能争取到多少呢……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆発砲。どーん。

	CreateColorEX("絵色100", 1500, "BLACK");
	CreateSE("SE03","se戦闘_衝撃_鎧散華");

	OnSE("se戦闘_攻撃_高速徹甲弾発射01", 1000);
	Fade("絵色100", 5000, 1000, null, false);
	Wait(1500);
	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(3000);

	ClearWaitAll(1500, 1500);
/*
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 200, 300, null, "cg/data/circle_11_00_0.png", false);
	DrawTransition("ばく２", 0, 1000, 210, 200, null, "cg/data/circle_11_00_0.png", false);
	DrawTransition("ばく０", 0, 1000, 220, 100, null, "cg/data/circle_11_00_0.png", true);
	FadeDelete("ばく*", 1000, false);

//おがみ：次↓スクリプトへ移動
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　
　　　　　　　　　一二月一日
　　　　　　　　　上午八时二一分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/


}

..//ジャンプ指定
//次ファイル　"md04_015.nss"