//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045b.nss_MAIN
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
	#ev128_病床の光_g01=true;
	#bg105_城門付近内側_02=true;
	#ev230_泣きじゃくる村正=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_046.nss";

}

scene md04_045b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_045.nss"

//あきゅん「演出：ここではまだ汚染状態にします、森島了承済」

//●捨てられない
	PrintBG("上背景", 30000);
	CreateColorSP("白", 10, "WHITE");

	SoundPlay("@mbgm31", 0, 1000, true);


	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　能够舍弃。
　
　
　…………

　要是能这么说的话，这灵魂该会多么安稳呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·病床の光

	EfRecoIn1(18000,600);

	CreateTextureEX("絵回想", 1000, @0, @0, "cg/ev/ev128_病床の光_a01.jpg");
	Fade("絵回想", 0, 1000, null, true);

	EfRecoIn2(300);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　为了守护光。为了拯救光。
　只为了这些我才能活下去。

　这是我灵魂的安宁。

　只要一句话，
　只要说出一句话，就能得到它。

　————但是。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);


	Delete("絵回想*");

	EfRecoOut2(600,true);


//◆新田雄飛、鈴川令法、ふきとふな、長坂右京、風魔
//◆小太郎、皇路操、皇路卓、ガーゲット少佐


	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl2, true);

//yuuhi

	CreateColorSP("絵色黒地", 18000, "#000000");
	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st雄飛_通常_制服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//suzukawa

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st鈴川_通常_制服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st鈴川_通常_制服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//ふき

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/stふき_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/stふき_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);


	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//ふな

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/stふな_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/stふな_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);


//長坂

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st長坂_通常_制服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st長坂_通常_制服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//風魔

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st小太郎_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st小太郎_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);
	
//操
	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st操_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st操_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

//卓
	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st皇路_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st皇路_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);
	
//ガーゲット

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/stガーゲット_通常_制服a.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/stガーゲット_通常_制服a.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

	Delete("絵演立絵*");
	Delete("絵色黒地*");

	FadeDelete("絵色白", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我记得。

　记得这双手上的罪孽。

　记得血的味道。

　记得死前最后的气息。

　记得瞳孔变得空虚，失去光芒的样子。

　记得无数的死亡。

　……我为何，杀了他们呢？
　
　那理由是——

　本就没有任何借口，能够向被杀死的他们，和他们
留在世上的亲人们辩解。
　我是凭自己一人决定杀死他们，所以理由毫无意义，
绝对无法逃避憎恶和裁决。

　杀害他们的理由，只有对我自己才有意义。

　……我。
　
　我是为了不让更多人死去，才杀了他们。

　为了不让银星号的灾厄增殖。
　得到“卵”的武者，与将村正的特质当做必然而祈
求的另外一人——我选择了牺牲，砍下他们的头颅。

　我若是，到现在这个地步还容许银星号的存在——
那他们的死又有何意义呢。

　恐怕因为我的主观，他们的死将会变得毫无价值。
　如果连逼死他们的我，也否定他们死去的意义的话。

　他们，
　他们的死————————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0010a00">
（办不到）

//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0020a00">
（我办不到）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　无论是否会被饶恕。
　无论是否罪孽深重。

　超越那些领域。

　那都是办不到的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0030a00">
（因为我<RUBY text="··">牺牲</RUBY>了他们）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　用价值来衡量他们的生命。
　断定其他的什么东西比较重要。

　用无情之剑斩断了他们。
　
　
　所以，我非说不可。

　说出，<RUBY text="············">你们是为了拯救更多人而死</RUBY>这句话。
　
　身为死亡裁定者的我，必须傲慢地将他们死亡的意义
高呼下去不可!! 


　不能忘记——
　不能舍弃!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆精神世界脱出
//◆※汚染時専用テキストボックスを使用していた場合
//◆は、これ以後元に戻る

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se特殊_陰義_発動04", 1000);
	CreateColorSP("白幕", 25000, "WHITE");
	DrawTransition("白幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	DeleteStL(0,true);

	OnBG(100, "bg105_城門付近内側_02.jpg");
	FadeBG(0, true);

	DrawTransition("白幕", 300, 1000, 0, 100, null, "cg/data/circle_01_00_0.png", true);
	FadeDelete("白幕",1500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　意识重归外界时，最初感到了严重的失调感。
　大概是时间和空间断了联系吧。无法把现实空间认定
为现实空间。

　是因为从银星号的精神污染中解放了吧。
　大脑被迅速地整理明晰，回到原本的形态。这过程就
像是神经被强迫错乱一般。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0040a00">
「咕……啊……!!」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0050a01">
「主君，没事吧?!」

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0060a00">
「……呜……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0070a01">
「冷静点。
　不要着急……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　村正支撑着我的身体，伸手摸着我的额头。
　是本就如此，还是经过了什么处理呢。手十分冷。

　……令人感激。
　现在正需要这份冰冷。

　假如很温暖的话，一定很舒服吧。
　也许会失去力气，变得困倦，最终落入梦乡。

　但是冰冷的手给了我力量。
　用双腿站起来的力量。

　……对了。

　这是钢铁的凉爽。
　是力量本身的温度。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm05", 0, 1000, true);


	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0080a01">
「没事吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0090a00">
「嗯。
　已经能站住了……」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0100a00">
「村正。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0110a01">
「什么事？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0120a00">
「我是……回来了吗？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0130a01">
「……嗯。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0140a01">
「你回来了。
　主君……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　两脚踏上地面。
　作为真正的<RUBY text="自己">凑斗景明</RUBY>，站着。

　并不觉得强大，也不觉得爽快。
　只是，切实感到自己毫无扭曲地存在这一事实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0150a00">
「村正。谢谢你。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0160a01">
「……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0170a00">
「又被你救了。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0180a01">
「……我……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0190a01">
「救了你吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0200a00">
「……？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0210a01">
「我在想，我是不是只会令你痛苦。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0220a00">
「啊啊，是的……
　直到刚才，我的心境都十分轻松。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0230a00">
「现在，又变得沉重了。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0240a01">
「……我知道会这样。
　但是，我是剑胄。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0250a01">
「我的心是铁做的……所以一定是冷酷的吧。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0260a00">
「多亏如此。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0270a01">
「……主君？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0280a00">
「多亏了你，我又回复到本来的自己。
　多亏了你是冰冷的剑胄。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0290a01">
「————」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0300a01">
「什、什么啊……这个……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0310a00">
「？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0320a01">
「说这种话……我……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0330a01">
「……我……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0340a01">
「我会不知道该怎么办才好……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//おがみ：EVきてから演出見直し
//◆ＥＶ：村正、涙
	CreateTextureEX("涙", 5010, -270, InBottom, "cg/ev/resize/ev230_泣きじゃくる村正m.jpg");
	Fade("涙", 1000, 1000, null, true);

	Wait(1000);

	CreateTextureSP("涙下", 5000, Center, Middle, "cg/ev/ev230_泣きじゃくる村正.jpg");


	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0350a00">
「村正……？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("涙", 6000, @0, -50, DxlAuto, false);

	Wait(2000);

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0360a01">
「对不起。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0370a01">
「我，其实……
　不想逼你选的。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0380a01">
「因为我想要你回来……！」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0390a00">
「…………」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0400a01">
「我不想和你分离。
　真的只是这样而已……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0410a01">
「要是你骂我就好了。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0420a01">
「我知道你会痛苦……
　因为——我带你回到我身边……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0430a01">
「……呜……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0440a01">
「对不起……！」

{	FadeDelete("涙", 1000, false);
	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0450a00">
「……为什么道歉……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0460a00">
「你做得对。
　你没有错。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0470a00">
「我很感激。」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0480a01">
「……不要说……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045b0490a01">
「不要说了……！」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045b0500a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("涙*",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我——
　
　……只能等待。

　我只能默默支持着因我无法理解的罪恶感和悔意而
哭泣的村正。
　然后束手无策地等待着，内心明明应该有着钢铁般
毫不动摇的意志，如今却一片混乱的村正平静下来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(3000, 1000);

}

..//ジャンプ指定
//次ファイル　"md04_046.nss"
