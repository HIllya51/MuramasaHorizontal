//<continuation number="1080">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_026.nss_MAIN
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
	#ev261_村正メイドさんバージョン=true;
	#ev262_村正メイドさんご奉仕_a=true;
	#ev262_村正メイドさんご奉仕_b=true;
	#ev262_村正メイドさんご奉仕_c=true;
	#ev262_村正メイドさんご奉仕_d=true;
	#ev262_村正メイドさんご奉仕_e=true;
	#bg089_大鳥邸貴人の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_027.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#md06_026=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene md06_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================
..//ジャンプ指定
//前ファイル　"md06_025.nss"

//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100,"bg089_大鳥邸貴人の間_01.jpg");
	FadeBG(0,true);

	CreatePlainEX("絵板写", 990);
	SetShade("絵板写", HEAVY);

	Delete("上背景");

	Wait(1000);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100,"bg089_大鳥邸貴人の間_01.jpg");
	FadeBG(0,true);

	CreatePlainEX("絵板写", 990);
	SetShade("絵板写", HEAVY);

	//リコ背景抹消
	RecoIn();
}
//========================================================

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260010a01">
「…………那么。」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260020a01">
「这就是所谓『相近的事物』？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260030a00">
「某种意义上来说是。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260040a01">
「也就是稍微的偏离或曲解……
肯定是吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：メイド村正
//◆あるいは流用背景＋立ち絵
	FadeDelete("黒", 1000, true);
	SoundPlay("@mbgm22", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　在车站附近某旅馆的一个房间。
　位于一楼，是供应衣服的服装出租店——　
为舞会等场合准备需要的服装，这种店在　
旅馆内并不算少见。

　服装种类齐全，而被分为化妆舞会用的
衣服中，正好有一套可以满足我的要求。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵イベ２", 1010, Center, InBottom, "cg/ev/resize/ev261_村正メイドさんバージョンl.jpg");
	Fade("絵イベ２", 1000, 1000, null, true);

	Move("絵イベ２", 9000, @0, 0, DxlAuto, false);
	Wait(5600);
	FadeDelete("絵イベ２", 1000, true);

	WaitKey(1000);

	CreateWindow("絵窓", 5000, 192, 0, 400, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);

	CreateTextureSP("絵窓/絵イベ", 1000, 30, -230, "cg/ev/resize/ev261_村正メイドさんバージョンsex.jpg");

	Move("絵窓/絵イベ", 3000, -110, @0, DxlAuto, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);
	Fade("絵板写", 3000, 1000, null, false);

	SetFwR("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260050a00">
「很完美。」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260060a01">
「可以问这是什么吗？
　……要说的话，我其实并不太
想问的……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260070a00">
「这的确是贵族侍女的服装。
　只不过是西洋货。」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260080a01">
「真的吗……」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260090a00">
「哎呀，很好。
　嗯，太棒了。」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260100a01">
「虽然被这么称赞我很开心。
　……但是你现在看上去像是病了。」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260110a00">
「病归病，恐怕半数以上的　
地球男性都有这种病，　
所以别在意。」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260120a01">
「什么呀。
　那，我这身打扮应该做些什么？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260130a00">
「也是呢……
　端茶递水吧。」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260140a01">
「道具呢？」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260150a00">
「就用桌子上的那个。」

{	FwR("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260160a01">
「这个……？
　呼。说不定在海的对面，
喝茶就是用这种器具吧。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260170a00">
「如果场所变一下。」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260180a01">
「稍等等啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//背景あったらここでイベント一旦フェードアウト inc櫻井
	Zoom("絵窓", 1000, 0, 2000, null, false);
	Fade("絵板写*", 1000, 0, null, true);
	Delete("絵窓");

//◆かちゃかちゃ。
//◆がっちゃん。
	OnSE("se日常_食器_お茶準備_L", 1000);

	WaitKey(3000);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se日常_金属落ちる", 1000);

	WaitKey(500);

	SetFwR("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260190a01">
「哇，哇……
　抱歉，我没用过这种东西啦！」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260200a01">
「都洒出来了，得赶紧擦干净。」

{	OnSE("se擬音_コミカル_ガーン01", 1000);
	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260210a00">
「……哈……」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆ガーン
	OnSE("se擬音_コミカル_ガーン02", 1000);

	SetFwR("cg/fw/fw村正_驚きb.png");
	SetComic(@280, @0, 8);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260220a01">
「为什么你会感动啊!?」

</PRE>
	SetTextEXR();
	TypeBeginTimeRI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260230a00">
「不，不是不是。
　我还真是……有些失魂落魄了。」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260240a00">
「好不容易把魂都给找了回来。」

{	FwR("cg/fw/fw村正_凹むb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260250a01">
「魂去哪儿了啊……」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260260a00">
「别在意，继续吧。
　不管失败多少次都没关系。」

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260270a01">
「不会。
　先等我重新沏茶。」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

//◆かちゃかちゃ。
	CreateSE("SEL01","se日常_食器_お茶準備_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEX("絵イベ", 1000, -430, -570, "cg/ev/resize/ev261_村正メイドさんバージョンm.jpg");
	Fade("絵イベ", 1000, 1000, null, true);

	WaitKey(1000);

	SetVolume("SEL*", 1000, 0, null);
	Fade("絵イベ", 1000, 0, null, true);

	SetFwR("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260280a00">
「…………」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260290a01">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆かちゃかちゃ。
	CreateSE("SEL01","se日常_食器_お茶準備_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Move("絵イベ", 0, -283, -1060, null, true);
	Fade("絵イベ", 1000, 1000, null, true);

	WaitKey(1000);

	SetVolume("SEL*", 1000, 0, null);
	Fade("絵イベ", 1000, 0, null, true);

	SetFwR("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260300a00">
「…………」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260310a01">
「……那个。」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260320a00">
「什么？」

{	Fade("絵イベ", 1000, 1000, null, false);
	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260330a01">
「我很在意你的视线。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260340a00">
「为什么？」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260350a01">
「隐约感觉到一丝邪念。」

{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260360a00">
「咦？」

{	FwR("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260370a01">
「……没在想淫意之事吧？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260380a00">
「唔，想了。」

{	FwR("cg/fw/fw村正_驚きb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260390a01">
「至少否认一下啊！
　这下都无所遁形了吧！」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260400a00">
「所以我承认了。」

{	FwR("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260410a01">
「不、不能这样。
　不能在这种地方。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260420a00">
「但是也不能穿成这样出去吧。」

{	Move("絵イベ", 10000, @0, -260, DxlAuto, false);
	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260430a01">
「…………」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260440a00">
「…………」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260450a01">
「……………………」

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260460a00">
「……………………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵イベ*", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　唉。
　
　村正深深地叹了口气。
　仿佛已无计可施般地看向我。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260470a01">
「……真是的。
　想要我怎么做？」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260480a00">
「我解释给你听吧。
　很简单的事。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 15000, "BLACK");
	Fade("黒", 1000, 1000, null, true);

//◆ＥＶ：メイドさんご奉仕。

	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureSP("メイド01EX", 4210, -250, -30, "cg/ev/resize/ev262_村正メイドさんご奉仕_al.jpg");
	Delete("絵イベ");

	WaitKey(1000);

	FadeDelete("黒",1000,true);

	SoundPlay("@mbgm28", 0, 1000, true);

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260490a01">
「……变态，下流。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260500a00">
「真失礼啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	Move("メイド01EX", 3000, @0, -200, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　让村正跪于我的两膝之间。
  强迫她摆出一种看似尊敬的姿势。

　正对着我已经隆起的部位。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	CreateTextureSP("メイド01", 4200, Center, Middle, "cg/ev/ev262_村正メイドさんご奉仕_a.jpg");

	Move("メイド01EX", 3000, @0, @-200, null, false);
	FadeDelete("メイド01EX", 1000, false);

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260510a01">
「真是的……突然要做这种事。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260520a00">
「要恨就恨自己的衣服吧。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260530a01">
「是你让我穿上的吧！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260540a00">
「我也不过是个被蛊惑的受害者。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260550a01">
「真不知道你在说什么……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260560a00">
「村正，把手伸出来。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260570a01">
「手？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260580a00">
「惯用的那只。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260590a01">
「是。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分

	CreateTextureEX("メイド02", 4400, @0, @0, "cg/ev/ev262_村正メイドさんご奉仕_b.jpg");
	Fade("メイド02", 1000, 1000, null, true);
	Delete("メイド01");


	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260600a01">
「……握住了……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260610a00">
「不要紧张。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260620a01">
「就像这样……摩擦吗？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260630a00">
「嗯，轻柔些就好。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260640a01">
「这样……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　纤细的手指，听话地抽动着。

　虽然要论调情仍略显生涩。
　但那种还无法被称为快感的刺痒
爬上了神经。

　让人焦急烦躁的感觉。
　也不能说不舒服。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260650a01">
「让我做这种事居然感到开心。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260660a00">
「昨晚似乎是你主动做了
类似的事……」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260670a01">
「啊，那次是那次！
　这次是这次啦！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260680a00">
「那样大胆而强硬的事都做得出来，
这种程度不过小菜一碟。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260690a01">
「……呜……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260700a00">
「手可以稍微用点力。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260710a01">
「……这样？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260720a00">
「对……」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260730a01">
「…………
　总觉得开始有点可怕了。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260740a00">
「这是生理现象。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260750a01">
「不是指这个。
　是指你的眼神之类的。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260760a00">
「……抱歉。
　<RUBY text="·">这</RUBY>真的是一种病。」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0260770a00">
「在头脑还清醒的时候预先道歉。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260780a01">
「却还不肯罢休呢……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260790a00">
「下面用嘴来。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260800a01">
「还变本加厉了……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260810a00">
「村正。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260820a01">
「是……真任性。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分

	CreateTextureEX("メイド03", 4600, @0, @0, "cg/ev/ev262_村正メイドさんご奉仕_c.jpg");
	Fade("メイド03", 1000, 1000, null, true);
	Delete("メイド02");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　村正犹豫了一下，伸舌抵上粘膜。
　只是稍稍被舌头触碰的程度。

　但触感和手指全然不同。
　这回的刺激才能称为性感。

　随着舌头的接触面不断扩大。
　兴奋感也愈发加深。

　丑恶的肉块如同在诉说愉悦般，随着脉搏跳动着。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260830a01">
「……可以吗？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260840a00">
「很好。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260850a01">
「我倒是觉得很不好意思。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260860a00">
「正因如此。正因如此才要。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260870a01">
「……男人这种生物真是……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　尽管嘴上这么说，村正仍然在继续。
　舌头攀于分身的前端，并用嘴唇轻啄着。

　虽然这做法事先不知是否可行，
但效果却很显著。
　感觉到一丝疼痛，我不由得舔了舔下唇。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260880a00">
「对，就这样……」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260890a01">
「……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260900a00">
「把它放入口中。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260910a01">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("メイド04", 4800, @0, @0, "cg/ev/ev262_村正メイドさんご奉仕_d.jpg");
	Fade("メイド04", 1000, 1000, null, true);
	Delete("メイド03");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　面对目露责备之色的村正，我假装视而不见。
　抓住她的脖子，轻声催促。

　虽然满眼怒诉着我的毫无人性，她还是予以了宽容。

　分身自其口唇的夹缝间插入。
　看着丑陋之物与美丽之物相互交融的模样，
真令人心受蛊惑。

　兴奋之情伴随着愧疚感不断上扬。

　这下糟了。
　实在——太舒服。

　渐渐难以忍耐。

　一想到居然让村正做这种事，暗色的喜悦感
便持续高涨。

　尽管感到困惑，村正还是唯命是从。
　口中含着我的分身，并不断用笨拙的舌头
摩擦舔舐着。

　快感愈加攀升。
　慢慢地，慢慢地步入高潮。

　让人急不可耐。

　无法忍受。

　我也开始有所行动。
　将手附于她的脸颊，带动分身在口中进出。

　兴许是觉得难受，村正皱起了眉头。
　即便如此也并没打算将其吐出。

　贪婪享受着她对我的隐忍。
　分身与脸颊内侧不断摩擦，然后再次向喉咙进犯。

　受不了了。

　这种污秽的行为，
　————欲仙欲死。

　到达极限。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260920a00">
「村正。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260930a01">
「……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260940a00">
「朝着我这边。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　就在村正眼前。
  抽出肉根。

　然后，在她还没反应过来之前，
欲望迸射。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
//◆差分：顔射

	CreateColorEX("白フラ", 15000, "WHITE");
	Fade("白フラ", 100, 1000, null, true);
	CreateTextureSP("メイド05", 5000, @0, @0, "cg/ev/ev262_村正メイドさんご奉仕_e.jpg");
	Delete("メイド04");
	Fade("白フラ", 300, 0, null, true);

	Fade("白フラ", 100, 1000, null, true);
	FadeDelete("白フラ", 1500, true);

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260950a01">
「咿呀……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我压住反射性想要逃跑的村正。
　也不准她将头转向一边，射上她的正脸。

　自鼻梁至眼角、额头。
　甚至刘海。

　没想到自己的量竟然这么多。
　小小的脸上遍洒白浊的液体。

  无法动弹的村正，唯有安于接受这一暴行。
  只剩下眼皮还能眨动。

　直到我喷射出最后一滴为止。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260960a01">
「嗯……唔……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260970a00">
「真是一番好景致。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260980a01">
「…………
　结束了……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260990a00">
「还没有。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261000a01">
「哎？」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261010a01">
「可是……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　没什么可不可是的。
　我的欲望还没有得以满足。

　分身仍然坚挺如故。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0261020a00">
「接下来。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261030a01">
「还，还要做什么？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0261040a00">
「很快你就知道了。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261050a01">
「那个，主君……
　眼神已经不只是可怕了，
赤裸裸地暴露出危险啊。」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0261060a00">
「都说这是病了。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//背景あったらここでCG切り替え inc櫻井
	FadeDelete("メイド*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　我被体内这蠢蠢欲动的兴奋感操控着。

　翻过村正的胴体，托起她的腰。
　使她摆出翘起臀部的猥亵身姿。

　然后伸手掀开她的衣服下摆，扯去内衣。　
　不过欲速则不达……反正有的是时间。　

　先满足一下视觉享受吧。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261070a01">
「……啊……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0261080a00">
「那么接下来。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　沉醉于其中吧。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
	//◆フェードアウト
		ClearWaitAll(1500,1500);
	}
//============================================



}

..//ジャンプ指定
//次ファイル　"md06_027.nss"