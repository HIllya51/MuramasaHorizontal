//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_017.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//$Ichizyou_Dead = true;
//$Kanae_Dead = true;

	//▼イベントＣＧ
	#イベントファイル名=true;
	if($Ichizyou_Dead == true){
	#ev909_荒覇吐 = true;
	#ev912_荒覇吐竜気砲アップ_a = true;
	#bg022_山林a_03 = true;
	}else if($Kanae_Dead == true){
	}else{
	#bg022_山林a_03 = true;
	#ev909_荒覇吐 = true;
	#ev120_文庫本を読む香奈枝_a = true;
	#ev120_文庫本を読む香奈枝_b = true;
	#ev120_文庫本を読む香奈枝_c = true;
	#ev121_両手を突き出すさよ_a = true;
	#ev121_両手を突き出すさよ_b = true;
	#ev122_擱坐した荒覇吐 = true;
	}

	//$Kanae_Dead = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_allk";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($Kanae_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_allk";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}

	$PreGameName = $GameName;

	$GameName = "ma04_018vs.nss";

}

scene ma04_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_016vs.nss"

//◆分岐。
//◆ヒロイン全員生存or香奈枝のみ生存の場合は１６Ａ
//◆一条のみ生存の場合は１６Ｂ

}



//――――――――――――――――――――――――――――――
.//●１６Ａ
scene ma04_017.nss_allk
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆荒覇吐
//◆ぶれすとふぁいあー。ずががん。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 10, -270, -130, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	OnSE("se戦闘_破壊_爆発07",1000);

	CreateTextureEX("絵振", 1000, -270, -130, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreatePlainEXadd("絵振２", 1010);
	SetBlur("絵振２", true, 3, 600, 30, false);
	CreateColorEXadd("絵フラ", 2000, "#FFFFFF");

	Fade("絵振２", 0, 700, null, false);

	Zoom("絵振２", 200, 1200, 1200, null, false);
	Fade("絵フラ", 200, 1000, null, true);

	Delete("絵振２");

	Fade("絵フラ", 300, 0, null, false);
	DrawDelete("絵フラ", 300, 100, "effect_01_00_0", false);

	Shake("絵ＥＶ", 1000, 10, 60, 0, 0, 1000, Dxl2, false);
	FadeFR4("絵振",0,500,1000,0,0,30,Dxl2,true);
	Delete("絵振*");

//◆ＥＶ：木を背にして腰をおろし、文庫本を読む香奈枝
//◆やや遠い銃声
	PrintGO("上背景", 30000);
	CreateSE("SEL01","se戦闘_銃器_機関銃乱射02");
	CreateTextureSP("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_b.jpg");
	MusicStart("SEL01",3000,200,0,1000,null,false);
	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170010a03">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//◆ページめくり音。ぱらり。
	CreateSE("SE01","se日常_物_紙をめくる02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm27",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
“……心若死灰地听着这一曲死气沉沉的间之山节的，
是一行五人，以及其他围坐于他们身边之人。”


“自庭院延伸至对面，有座双层楼房，不同于一间间
宽敞明室，夹层中的某间颇为阴森昏暗。这也是理所
应当，因为此处有女为病痛所恼，亦有女为情郎所迷。”

“此处兼休养与监禁诸如此类的痴女两种用处，因此总
有一间房，在此间有女人吐血而亡，亦或是有幽灵出没
等诸般传言从未间断。”


“间之山节开始之前，在这间房屋，有一女以砚研墨，
挥笔书于长长的卷纸之上。”

“古市的艺妓，既不梳繁复的胜山髻，亦不着华丽的长
罩衫，而只作普通人的平凡打扮，所以因人而异，这种
搭配亦会美艳绝伦。”

“对白色腰卷缠身，风韵犹存的女人，年轻男子甚至会
倾尽生命地与之热恋，此类逸事也时有发生。”

“方才在此书写的女人亦是为病痛所恼，但她欲作普通
人的打扮却乏其神韵，不伦不类，于此可充分窥见此女
之品格。”

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆銃撃。段々近くなる
	CreateSE("SEL01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SEL01",3000,500,0,1000,null,false);

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170020a03">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//◆ページめくり音。ぱらり。
	CreateSE("SE01","se日常_物_紙をめくる02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
“在四方的朱漆罩灯下，挥墨而就，时而停笔不动，此
时她间或流泪哭泣。在这时，前半阙。”

　　　　　　“朝夕钟声鸣
　　　　　　　涅盘方为乐
　　　　　　　闻者无人惊”

“行文的毛笔飘然落下，侧耳倾听，伴奏的音声化为绸
缎，流淌飘散。”


　　　　　　“花谢春复开
　　　　　　　鸟归旧巢里
　　　　　　　未返黄泉迈”
</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170030a03">
「……呵呵……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170040a03">
「朝夕钟声鸣……
　涅盘方为乐……
　闻者无人惊……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170050a03">
「……朝夕钟声鸣……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ全景。香奈枝、足を撃たれている。酷い出血。
	CreateTextureSP("絵ＥＶ10", 50, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_a.jpg");
	CreateTextureSP("絵ＥＶ50", 50, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_a.jpg");
	FadeDelete("絵ＥＶ100", 1000, true);

//◆銃撃
//◆すぐ隣の木が吹っ飛ぶ
	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_c.jpg");
	CreateTextureEXadd("絵ＥＶ200", 100, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_c.jpg");
	SetBlur("絵ＥＶ200", true, 3, 300, 100, false);

	CreateMovie("ムービー１", 150, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("ムービー１", 0, 0, null, true);
	Rotate("ムービー１", 0, 180, 180, 45, null,true);
	Zoom("ムービー１", 0, 6000, 8000, null, true);
	Move("ムービー１", 0, @-200, @+50, null, true);
	SetAlias("ムービー１","ムービー１");

	CreateColorEXadd("絵色100", 1500, "White");

	OnSE("se自然_森_木々倒れる01",1000);
	OnSE("se戦闘_破壊_建物02",1000);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/circle_15_00_0.png", true);

	Fade("ムービー１", 0, 1000, null, true);
	Shake("絵ＥＶ200", 1000, 5, 10, 0, 0, 1000, null, false);
	Zoom("絵ＥＶ200", 500, 2000, 2000, null, false);
	Fade("絵ＥＶ200", 300, 300, null, false);
	Fade("絵ＥＶ100", 300, 1000, null, false);
	Zoom("ムービー１", 6000, 40000, 10000, Axl1, false);
	FadeDelete("ムービー１", 5000, false);
	Fade("絵色100", 300, 0, null, true);
	FadeDelete("絵ＥＶ200", 300, false);

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170060a03">
「……哎呀哎呀，怎么办呢？」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170070a03">
「听到了间之山节。
　干脆死掉算了吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆ブラックアウト
	CreateColorEX("絵暗転", 5500, "#000000");
	Fade("絵暗転", 200, 1000, null, true);

	WaitPlay("@mbgm*", null);

//◆以下台詞、顔グラなし
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170080a04">
　　　　　「……这可不行。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170090a04">
「请容许我还不想过贫寒的隐退生活。
　若大小姐不在人世，我会十分困扰。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばあやの両手アップ。純白の手袋
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev121_両手を突き出すさよ_a.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//嶋：ボイスなしにつきタグなし（確認済み）
//◆横書き斜体表示。ＣＧ処理か。
　
　「<I>裸身的钢铁人偶，
    肉色且化着妆</FONT>。</I>」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆吸血装甲バートリー発動
//◆白い手袋が真っ赤に
	CreateSE("SE01a","se特殊_鎧_バートリィ発動");
	MusicStart("SE01a",0,1000,0,500,null,false);
	CreateTextureSP("絵ＥＶ90", 90, Center, Middle, "cg/ev/ev121_両手を突き出すさよ_b.jpg");
	DrawDelete("絵ＥＶ100", 1000, 1000, "effect_01_00_0", true);

	SetVolume("SEL01", 200, 0, null);
//◆荒覇吐
//◆レッドアウトレッドイン。なんか妙な攻撃食らった風
	CreateSE("SE01b","se戦闘_攻撃_殴る05");
	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorEXmul("絵ダメ", 500, "#CC0000");
	Fade("絵ダメ", 0, 800, null, true);
	CreateTextureSP("絵ＥＶ200", 200, -450, -100, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵ＥＶ振", 200, -450, -100, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Wait(10);
	FadeDelete("絵ダメ", 400, false);
	Shake("絵ＥＶ振", 400, 10, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　————?!

　这个瞬间。
　紧追可恨的敌人，终于解决对方，理应是这样的，然而
他却因为今天第二次的惊愕，不由地被阻挠了意图。


　侵入全身的失常感。
　仿佛有什么东西从身体中<RUBY text="·······">被一点点地榨取</RUBY>。

　——发生什么事了?!

　我被做了什么?!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ゆっくり落ちる荒覇吐。
//◆ずずーん。
	PrintGO("上背景", 15000);
	CreateTextureSP("絵ＥＶ100", 100, 0, 0, "cg/ev/ev122_擱坐した荒覇吐.jpg");

	CreateSE("SE01a","se戦闘_荒覇吐_転倒01");
	CreateSE("SE01b","se戦闘_破壊_建物02");

	Move("絵ＥＶ100", 500, @0, -366, Dxl1, false);
	FadeDelete("上背景", 300, true);


	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("絵ＥＶ100", 600, 0, 20, 0, 0, 1000, null, true);

//◆香奈枝
	OnBG(90,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵ＥＶ100", 1000, true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170100a03">
「…………」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170110a03">
「婆婆？
　请把<RUBY text="··">这个</RUBY>丢掉啦，出来吧。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170120a03">
「这对心脏不好。」


//◆さよだが、顔グラもボイスも無し
{	NwC("cg/fw/nwさよ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170121z00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆少しウェイト
	WaitKey(2000);

	SoundPlay("@mbgm26",0,1000,true);

	StL(1000, @-30, @0,"cg/st/stさよ_通常_私服.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170130a04">
「让您久等了。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170140a03">
「辛苦了。
　给我倒杯茶吧？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170150a04">
「是。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆とぽとぽとぽ
	DeleteStA(300,true);
	CreateSE("SE01","se日常_水_注ぐ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170160a04">
「请用，大小姐。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170170a03">
「谢谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆少しウェイト
	WaitKey(500);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170180a03">
「呼。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170190a04">
「脚上的伤势如何？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170200a03">
「虽然暂时不能动，不过没问题。
　并未伤及筋骨。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170210a04">
「如此便好……
　失礼了。」

//◆治療を始めたよーな音
{	CreateSE("SE01","se日常_動作_治療中_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170220a03">
「……婆婆？
　包扎的话待会再做也可以。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170230a03">
「还没有结束呢。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170240a04">
「不，似乎已然是终幕。
　骑兵队总算是姗姗来迟了。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170250a03">
「哎呀。
　真可惜，专挑精彩之时出风头呢，
太不巧了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170260a04">
「这也是女主角的职责所在。
　我们躲避起来吧。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170270a04">
「或许会有加演。
　遗憾的是，以现在的状态，被牵连进去
也只会碍手碍脚。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170280a03">
「若事情真的发展至此，
也的确很有女主角的感觉。
　是啊。接下来就交给骑士大人吧。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170290a04">
「是。
　交给骑士殿下……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170300a03">
「……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170310a04">
「……」

{	SetVolume("SE*", 2000, 0, null);
	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170320a03">
「<RUBY text="···">听到了</RUBY>？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170330a04">
「由于有段距离，所以只听到些片断。
　不过，重点十分清楚。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170340a04">
「没想到会有这种事，将<RUBY text="··">终端</RUBY>偷偷
放进去是正确的呢。
　一定要感谢雪车町殿下。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170350a03">
「嗯。
　拜他所赐，明白了很多东西……」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170360a03">
「<RUBY text="·······">他为什么会死呢</RUBY>。
　你说呢？　婆婆。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170370a04">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定？
//次ファイル　"ma04_018vs.nss"　シナリオ連結要奈良原確認

}




//――――――――――――――――――――――――――――――
.//●１６Ｂ
scene ma04_017.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆銃撃
//◆かきんかきん
//◆ぱきーん。割れる音
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵光", 15000, "#FFFFFF");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	CreateSE("SE01a","se戦闘_銃器_跳弾02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Delete("上背景");
	FadeDelete("絵光", 1000, false);
	WaitKey(500);
	CreateSE("SE01b","se特殊_鎧_装着03");
	MusicStart("SE01b",0,1000,0,1300,null,false);
	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170380a02">
「啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆生身一条
	StL(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　第几次了？第几十次了？
　不断抵挡充满杀伤力的枪弹的红色装甲，终于
<RUBY text="····">分崩离析</RUBY>。

　恢复成钢丝，瞬间生锈、瓦解。
　散落到地面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170390a02">
「……是吗。
　辛苦了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160a]
　已经得到很多帮助了。
　一条充满感激地低语着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵ＥＶ100", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160b]
　然后仰望天空。
　将下次会把自己杀掉的敌人。

　确实地——
　被不成气候的寡敌所阻挠，将这种愤懑之情发泄一通，
将炮口对准狙击点。

　到此为止了吗。
　一条如此想。

　没有后悔。
　却有所不甘——希望能再多战斗一会。

　与<RUBY text="···">那个人</RUBY>一起。
　然而这个愿望，仅有一次，得到了实现。

　与毫无作为地度过自己苦闷漫长的一生相比，为短暂
的斗争而亡的现在，无疑是幸福的。

　绫弥一条如此想。

　接受死亡——
　于是她握紧双拳。

　为了战斗到最后。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//――――――――――――――――――――――――

//◆砲門。今にも撃ちそー。
//◆荒覇吐、急浮上
//◆進路転換
	CreateTextureSP("絵ＥＶ90", 5090, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateSE("SE01","se戦闘_銃器_砲門構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵ＥＶ10*", 1000, true);


	WaitKey(1000);
	OnSE("se特殊_鎧_駆動音01",1000);

	CreateTextureEX("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵ＥＶ100", 300, 1000, null, true);
	Delete("絵ＥＶ90");

	CreateSE("SEL01","se戦闘_動作_空走行01_L");
	MusicStart("SEL01",0,1000,0,500,null,true);

	SetFwR("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170400a02">
「……哎？」

{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170410a02">
「喂。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　离开了。
　巨大的兵器——将她丢下。

　没有杀掉她，是表示怜悯……不，看起来并不是
这样。
　<RUBY text="····">十分匆忙</RUBY>。

　装甲发出嘎吱嘎吱的声音，迅速地回头。
　向着那边。

　<RUBY text="··">那边</RUBY>——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170420a02">
「……啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　一条理解了。
　她理解发生了什么事。

　就是说——
　自己又得救了。

　被那个人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//あきゅん「演出：18だと香奈枝臭かったので調整しました」
	SoundPlay("@mbgm33",0,1000,true);

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170430a02">
（…………）

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170440a02">
（又……被救了）

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170450a02">
（本应死亡的生命，被救回来
这种事……
　就是说，这条命，已经是那个
人的东西了，啊……）

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170460a02">
（嗯。
　而且是两次）

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170470a02">
（这条性命要为那个人而用）

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170480a02">
（为了那个人的战斗而用。
　为了救很多人，为了战斗而用）

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170490a02">
（用这条救回来的性命……
　我也去救别人）

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170500a02">
（……嗯……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆林の中
	SetVolume("@mbgm*", 300, 0, null);

	SetFwC("cg/fw/fw一条_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170510a02">
「——这。
　并不是发呆的时候吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　还没有结束。
　战争仍在继续。

　以这条性命，发誓战斗的话——
　必须现在就这么做。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170520a02">
「好了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　向战火的方向——岛中央的方向——遥望。
　绫弥一条奔跑起来。

　为了战斗！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
//◆海岸
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	SetVolume("SE*", 1000, 0, null);
	DrawDelete("上背景", 500, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 500, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　然后到达。
　——向海岸。

　完全相反的方向。
　眼前的是，来岛上时作为路标的灯塔。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170530a02">
「为什么啊———?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　她是天生的路痴。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_018vs.nss"

}


