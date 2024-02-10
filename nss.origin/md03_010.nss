//<continuation number="390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_010.nss_MAIN
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
	#bg088_高級ホテルのホール_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_011.nss";

}

scene md03_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_009.nss"


//◆茶々丸の世界
//◆ＳＥ：金神魔王尊の声（どういう音にするか一考）
//◆魔王尊の姿もちらっと出すか。

//■あえてBGMなし inc櫻井

/*
	PrintBG("上背景", 30000);
	CreateColorSP("白", 5000, "WHITE");

	CreateTextureSP("茶々丸", 1000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");


	Delete("上背景");
	DrawDelete("白", 1000, 100, "zoom_01_00_0", true);

*/

	PrintBG("上背景", 30000);
	CreateColorSPadd("黒幕１", 20000, "WHITE");
	CreateTextureSP("茶々丸の世界", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界", 0, 1500, 1500, null, true);
	CreateTextureEX("茶々丸の世界２", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界２", 0, 1500, 1500, null, true);
	DrawEffect("茶々丸の世界", 50, "LowWave ", 0, 100, null);
	DrawEffect("茶々丸の世界２", 50, "SuperWave", 0, 500, null);
	Delete("上背景");

	OnBG(100, "bg088_高級ホテルのホール_01b.jpg");
	FadeBG(0, true);

	CreateSE("SE01", "se特殊_その他_神の声01");
	CreateSE("ぼえー", "se特殊_その他_神の声02");
	CreateSE("ノイズ１", "se日常_機械_ノイズ03");
	CreateSE("ノイズ２", "se日常_機械_ノイズ02");
	CreateSE("ノイズ３", "se日常_機械_ノイズ03");
	CreateSE("ノイズ４", "se日常_機械_ノイズ03");
	MusicStart("ぼえー",2000,1000,0,500,null,true);

	FadeDelete("黒幕１",2000,false);


	Wait(100);

	MusicStart("ノイズ１",0,1000,0,1000,null,false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ１", 0, 0, null);

	Wait(200);

	MusicStart("ノイズ２",0,1000,0,1000,null,false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ２", 0, 0, null);

	Wait(50);
	MusicStart("ノイズ３",0,1000,0,1000,null,false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(150);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ３", 0, 0, null);

	Wait(100);

	MusicStart("ノイズ４",0,1000,0,1000,null,true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 500, null, true);

	SetVolume("ノイズ４", 3000, 100, null);


	MusicStart("SE01", 1000, 1000, 0, 1000, null,false);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0100010a00">
「…………!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　这是——什么？

　声音？

　这是声音吗？

　这冲击、感触，简直就像用铁锤将脑髓细致地砸碎后放
到石磨上碾烂成酱接着再烘烤————<k>这是声音!?

　是<RUBY text="··">谁的</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SE02", "se特殊_その他_神の声02");
	MusicStart("SE02", 1000, 1000, 0, 1000, null,false);
	CreateTextureEXover("神", 15000, @0, @0, "cg/ev/ev241_森で発光する金神_a.jpg");
	Fade("神", 1000, 1000, null, true);
	FadeDelete("神", 1000, false);



	SetNwC("cg/fw/nw緑龍会Ｉ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／緑龍会Ｉ】
<voice name="ｅｔｃ／緑龍会Ｉ" class="その他男声" src="voice/md03/0100020e298">
「……哦哦……」

{	NwC("cg/fw/nw緑龍会Ａ.png");}
//【ｅｔｃ／緑龍会Ａ】
<voice name="ｅｔｃ／緑龍会Ａ" class="その他男声" src="voice/md03/0100030e290">
「是神！」

{	NwC("cg/fw/nw緑龍会Ｄ.png");}
//【ｅｔｃ／緑龍会Ｄ】
<voice name="ｅｔｃ／緑龍会Ｄ" class="その他女声" src="voice/md03/0100040e293">
「多么雄伟……令人敬畏！」

{	NwC("cg/fw/nw緑龍会Ｇ.png");}
//【ｅｔｃ／緑龍会Ｇ】
<voice name="ｅｔｃ／緑龍会Ｇ" class="その他男声" src="voice/md03/0100050e296">
「咳、咳咳……
　这声音每次都让我想吐……」

{	NwC("cg/fw/nw緑龍会Ｅ.png");}
//【ｅｔｃ／緑龍会Ｅ】
<voice name="ｅｔｃ／緑龍会Ｅ" class="その他男声" src="voice/md03/0100060e294">
「真烦人！」

{	NwC("cg/fw/nw緑龍会Ｈ.png");}
//【ｅｔｃ／緑龍会Ｈ】
<voice name="ｅｔｃ／緑龍会Ｈ" class="その他女声" src="voice/md03/0100070e297">
「好热……多么炙热啊……！」

{	NwC("cg/fw/nw緑龍会Ｋ.png");}
//【ｅｔｃ／緑龍会Ｋ】
<voice name="ｅｔｃ／緑龍会Ｋ" class="その他男声" src="voice/md03/0100080e300">
「啊啊……我的神……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE03", "se特殊_その他_神の声01");
	MusicStart("SE03", 1000, 1000, 0, 1000, null,false);

	CreateTextureEXover("神", 15000, @0, @0, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("神", 1000, 1000, null, true);
	FadeDelete("神", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……神……？

　不对。
　<RUBY text="···">这东西</RUBY>才不是神。

　这只是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100090a07">
「没错，哥哥。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　茶茶丸用只有我能听到的声音低语。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE04", "se特殊_その他_神の絶叫");
	MusicStart("SE04", 1000, 1000, 0, 1000, null,false);

	CreateTextureEXover("神", 15000, @0, @0, "cg/ev/ev241_森で発光する金神_a.jpg");
	Fade("神", 1000, 1000, null, true);
	FadeDelete("神", 1000, false);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100100a07">
「这<RUBY text="····">只是力量</RUBY>而已。
　神才不是什么伟大的东西。怎么可能
有智慧。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100110a07">
「这家伙只是一大团力量，除此之外什么都
不是。
　无止境地强大……仅是强大，却什么都
做不到。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100120a07">
「没有任何意义。
　比虫豸还低等。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100130a07">
「所以这家伙希望有个
　能赋予自己价值的操控者。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0100140a00">
「…………」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100150a07">
「所以一天二十四小时一直吼个不停。
　……都不考虑别人的感受……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　最后的低语——
　混杂了愤怒、憎恶与绝望。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SE02", "se特殊_その他_神の声02");
	MusicStart("SE02", 1000, 1000, 0, 1000, null,false);
	CreateTextureEXover("神", 15000, @0, @0, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("神", 1000, 1000, null, true);
	FadeDelete("神", 1000, false);

	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100160a13">
「追求着神、身为探求者的我，以及
　能传达神的声音、身为预言者的她。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100170a13">
「我们相遇了。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100180a13">
「见到她，我给自己的推论找到了根据。
　见到我，她也理解了自己所感受到的东西。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100190a13">
「现在神的坐标已经确定了。
　<RUBY text="········">大和帝国相模玉绳</RUBY>、<RUBY text="··········">从普陀乐城往地球中心</RUBY>
<RUBY text="········">的方向一一五公里</RUBY>!!」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100200a13">
「神就在那里。
　而且，开启到达该处之路的方法也有了！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100210a13">
「银星号！
　至上的剑胄，最接近始祖的存在，
就在当今世上！」

{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100220a13">
「条件如此万全!!
　既然如此，我们该做什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100230a13">
「诸位！」

{	NwC("cg/fw/nw緑龍会Ｂ.png");}
//【ｅｔｃ／緑龍会Ｂ】
<voice name="ｅｔｃ／緑龍会Ｂ" class="その他男声" src="voice/md03/0100240e291">
「呼唤!!」

{	NwC("cg/fw/nw緑龍会Ｅ.png");}
//【ｅｔｃ／緑龍会Ｅ】
<voice name="ｅｔｃ／緑龍会Ｅ" class="その他男声" src="voice/md03/0100250e294">
「呼唤神!!」

{	NwC("cg/fw/nw緑龍会Ｊ.png");}
//【ｅｔｃ／緑龍会Ｊ】
<voice name="ｅｔｃ／緑龍会Ｊ" class="その他女声" src="voice/md03/0100260e299">
「把神呼唤到地上!!」

{	NwC("cg/fw/nw緑龍会Ａ.png");}
//【ｅｔｃ／緑龍会Ａ】
<voice name="ｅｔｃ／緑龍会Ａ" class="その他男声" src="voice/md03/0100270e290">
「为了见识祂!!」

{	NwC("cg/fw/nw緑龍会Ｃ.png");}
//【ｅｔｃ／緑龍会Ｃ】
<voice name="ｅｔｃ／緑龍会Ｃ" class="その他男声" src="voice/md03/0100280e292">
「为了暴露祂!!」

{	NwC("cg/fw/nw緑龍会Ｄ.png");}
//【ｅｔｃ／緑龍会Ｄ】
<voice name="ｅｔｃ／緑龍会Ｄ" class="その他女声" src="voice/md03/0100290e293">
「为了尊崇祂!!」

{	NwC("cg/fw/nw緑龍会Ｇ.png");}
//【ｅｔｃ／緑龍会Ｇ】
<voice name="ｅｔｃ／緑龍会Ｇ" class="その他男声" src="voice/md03/0100300e296">
「为了辱骂祂!!」

{	NwC("cg/fw/nw緑龍会Ｆ.png");}
//【ｅｔｃ／緑龍会Ｆ】
<voice name="ｅｔｃ／緑龍会Ｆ" class="その他男声" src="voice/md03/0100310e295">
「为了嘲笑祂!!」

{	NwC("cg/fw/nw緑龍会Ｉ.png");}
//【ｅｔｃ／緑龍会Ｉ】
<voice name="ｅｔｃ／緑龍会Ｉ" class="その他男声" src="voice/md03/0100320e298">
「为了憎恨祂!!」

{	NwC("cg/fw/nw緑龍会Ｋ.png");}
//【ｅｔｃ／緑龍会Ｋ】
<voice name="ｅｔｃ／緑龍会Ｋ" class="その他男声" src="voice/md03/0100330e300">
「呼唤!!」

{	NwC("cg/fw/nw緑龍会Ｄ.png");}
//【ｅｔｃ／緑龍会Ｄ】
<voice name="ｅｔｃ／緑龍会Ｄ" class="その他女声" src="voice/md03/0100340e293">
「呼唤神!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	SetVolume("ノイズ*", 1000, 0, null);
	SetVolume("ぼえー", 1000, 0, null);
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Fade("茶々丸*", 400, 0, Axl2, false);
	EffectZoomDXadd(20000, 1000, 0, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);

	Wait(3500);
	Delete("茶々丸*");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0100350a00">
「————————」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100360a13">
「新朋友啊。
　我们欢迎你，衷心地欢迎你。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100370a13">
「追求黄金黎明的同志！」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100380a13">
「欢迎来到——」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
　
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100390a13">
　　　　　　「“绿龙会”。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md03_011.nss"