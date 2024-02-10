//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_036.nss_MAIN
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
	#bg113_駅のホームa_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_001.nss";

}

scene mc02_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_035.nss"

//◆爆発遠景
//◆キノコ雲
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 19900, "#FFFFFF");

	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/ev/ev174_鍛造雷弾投下.jpg");
	CreateSE("SE01","se戦闘_破壊_爆発09");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("上背景");
	Fade("絵色白",2000,0,null,true);

	WaitKey(1500);

	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL01",1000,1000,0,900,null,true);

	WaitKey(2500);

	SoundPlay("@mbgm36", 0, 1000, true);

	SetNwC("cg/fw/nw六波羅兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／幕兵Ａ】
<voice name="ｅｔｃ／幕兵Ａ" class="その他男声" src="voice/mc02/0360010e270">
「啊……啊啊啊……」


{	NwC("cg/fw/nw六波羅兵士Ｂ.png");}
//【ｅｔｃ／幕兵Ｂ】
<voice name="ｅｔｃ／幕兵Ｂ" class="その他男声" src="voice/mc02/0360020e271">
「那，那是什么啊！
　那到底是什么啊!!」


{	NwC("cg/fw/nw六波羅兵士Ｃ.png");}
//【ｅｔｃ／幕兵Ｃ】
<voice name="ｅｔｃ／幕兵Ｃ" class="その他男声" src="voice/mc02/0360030e272">
「南无阿弥陀佛南无阿弥陀佛。」


{	NwC("cg/fw/nw六波羅兵士Ｄ.png");}
//【ｅｔｃ／幕兵Ｄ】
<voice name="ｅｔｃ／幕兵Ｄ" class="その他男声" src="voice/mc02/0360040e273">
「城……城消失了……
　普陀乐城消失了……」


{	NwC("cg/fw/nw六波羅兵士Ｅ.png");}
//【ｅｔｃ／幕兵Ｅ】
<voice name="ｅｔｃ／幕兵Ｅ" class="その他男声" src="voice/mc02/0360050e274">
「阁——阁下！　大鸟中将！
　这这这是怎么回事………这是怎么
回事……!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360060a06">
「……………………」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360070a06">
（永仓翁突然来联系时，
　吾曾猜测是否会如此……）


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360080a06">
（……真敢做啊。
　对大和土地竟敢如此——那些白种猪!!）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 10000, 0, null);

//◆邦氏
	PrintGO("上背景", 20000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg113_駅のホームa_01.jpg");
	StR(1000, @0, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeStR(0,true);

	FadeDelete("上背景", 1000, true);

	CreateSE("SE02","se人体_動作_後ずさり01");
	StL(1000, @-60, @0,"cg/st/st邦氏_通常_私服.png");

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StL*", 300, @60, @0, Dxl1, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360090b49">
「狮……狮子吼！
　为余解释！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360100a06">
「……邦氏殿下……」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360110b49">
「将余绑架，带离普陀乐城……
　其后——竟然如此！」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360120b49">
「此亦卿所为!?
　意欲毁灭普陀乐……毁灭幕府!!」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360130a06">
「若您真有如此疑念。
　殿下，请立刻砍掉吾之首级。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360140b49">
「…………」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360150b49">
「那……此为……」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360160a06">
「此乃进驻军所为。」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360170b49">
「什么!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360180a06">
「此乃名为锻造雷弹之新型兵器。
　进驻军欲以此扫平六波罗，
篡夺本国。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360190b49">
「————」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360200b49">
「那……现已……
　……余已……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360210a06">
「但是，进驻军未能得逞。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360220b49">
「什么？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360230a06">
「吾六波罗之主。
　足利四郎邦氏殿下尊身在此。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360240a06">
「殿下之将领，狮子吼护驾在此。
　六波罗百万骑最精锐之奉公众、厩众
亦追随于此。」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360250a06">
「且吾麾下篠川军尚健在。
　——六波罗绝未毁灭！」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360260b49">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360270a06">
「殿下！
　在下狮子吼，定助殿下卷土重来。」



//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360280a06">
「所以，
　恳请殿下定要忍耐须臾之耻辱，暂住于吾之
领地！」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360290b49">
「……栖于卿之领国吗。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360300a06">
「是！」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360310a06">
「此刻——前往会津！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆Ｂパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,2);

	ClearWaitAll(3000, 2000);

/*
//あきゅん「演出：外注部分退避」
	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("上背景");

	CreateColorSP("絵色黒", 1, "#000000");

	FadeDelete("上背景",1500,true);

	WaitKey(1000);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("背景80", 30, Center, Middle, "cg/sys/title/タイトル背景.png");
	Move("背景80", 0, 20, 0, null, false);
	Move("背景80", 200, -20, 0, null, false);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);
	CreateTextureEX("背景81", 32, Center, Middle, "cg/sys/title/画像タイトルlogo.png");
	Fade("背景81", 300, 1000, null, false);
	
	CreateTextureSPadd("絵背景500", 31, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Rotate("絵背景500", 0, 180, 0, 180, null, true);
	Move("背景81", 0, 600, 40, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"mc03_001.nss"