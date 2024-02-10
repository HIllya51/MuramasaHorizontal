//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_007.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_008.nss";

}

scene md02_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_006.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(0,false);
	FadeStL(0,false);
	SoundPlay("@mbgm16", 0, 1000, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",0,true);


//◆ぱんぱん。
	OnSE("se人体_動作_手を叩く01", 1000);
	WaitKey(1500);
//◆襖が開く

	OnSE("se日常_建物_スライド開く01", 1000);

	SetNwC("cg/fw/nw女中.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0070010e259">
「在。
　请问有何吩咐？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0070020a07">
「带那边那个姐姐到杂物房去。」

{	NwC("cg/fw/nw女中.png");}
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0070030e259">
「是。」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070040a01">
「等一下。」

{	SoundPlay("@mbgm25",0,1000,true);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0070050a07">
「喏，去啊。
　那个人会带你去一个好房间的。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070060a01">
「刚才我可听得很清楚，说什么杂物房！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0070070a07">
「哧……听了些不该听的话。」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070080a01">
「不做个了断的话果然不行吗？」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0070090a07">
「很好。
　乖乖地收拾杂物就好了嘛，要是对废铁工厂
更有兴趣的话我就成全你。」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070100a01">
「你就试试吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteComic();


//◆がっし。
	OnSE("se擬音_コミカル_殴り02", 1000);
	OnSE("se人体_動作_腕を掴む01", 1000);
	OnSE("se擬音_コミカル_殴り02", 1000);
	OnSE("se人体_動作_腕を掴む01", 1000);
	DeleteStA(200,false);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg097_堀越御所内景明の部屋_01.jpg");
	Shake("絵背景100", 500, 10, 0, 0, 0, 1000, Dxl2, false);

	Wait(300);

	SoundPlay("@mbgm08", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　本该消失的火焰再度燃起。

　那是灵魂的激战。
　炙热燃烧着的两股力量相互较量。

　怎么想都会给附近带来烦扰。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0070110a00">
「…………」

{	NwC("cg/fw/nw女中.png");}
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0070120e259">
「客人。
　要为您准备些茶水吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0070130a00">
「……已经很晚了。
　你的心意我领了。」

{	NwC("cg/fw/nw女中.png");}
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0070140e259">
「遵命。
　那么请随意。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆しゃー、ぴしゃん。
	OnSE("se日常_建物_スライド閉める02", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　不要提无理的要求。
　养父母这样教育过我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070150a01">
「……啊呀？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//すぐ続くのでClear使わない inc櫻井

}

..//ジャンプ指定
//次ファイル　"md02_008.nss"