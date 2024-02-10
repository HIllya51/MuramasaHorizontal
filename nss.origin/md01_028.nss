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

scene md01_028.nss_MAIN
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
	#ev953_護氏装甲_a=true;
	#ev953_護氏装甲_b=true;
	#bg096_八幡宮地下岩窟_01a=true;
	#bg032_八幡宮奥舞殿内a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_髭切=true;

	$PreGameName = $GameName;

	$GameName = "md01_029vs.nss";

}

scene md01_028.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_027.nss"

//◆鬚切·馬
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵白転", 15000, "#FFFFFF");
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	CreateSE("SE01","se戦闘_動作_鎧_着地02");
	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵白転", 1000, true);

	SetNwL("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280010a01">
「!!」

{	FwL("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280020a05">
「源氏之至宝玷以杂兵之血，余亦难过。
　但因汝大胆欲取余首级，便与汝品尝其刃之锋
利。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆護氏＆鬚切、装甲アクション
	CreateSE("SE00","se人体_動作_跳躍03");
	CreateSE("SE00a","se特殊_鎧_装着04");
	MusicStart("SE00",0,1000,0,1000,null,false);
	MusicStart("SE00a",0,1000,0,1000,null,false);
	CreateTextureEXadd("絵ＥＶ上", 4110, Center, InBottom, "cg/ev/resize/ev953_護氏装甲_al.jpg");
	CreateTextureEX("絵ＥＶ", 4100, Center, InBottom, "cg/ev/resize/ev953_護氏装甲_al.jpg");
	SetVertex("絵ＥＶ*", center, bottom);
	Request("絵ＥＶ*", Smoothing);
	SetBlur("絵ＥＶ上", true, 2, 500, 180, false);

	Zoom("絵ＥＶ*", 600, 510, 510, Dxl3, false);
	Fade("絵ＥＶ*", 300, 1000, null, true);
	FadeDelete("絵ＥＶ上", 300, true);

	SetFwL("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280030a05">
「归命顶礼八幡大菩萨！
　余将成汝之器!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆装甲
//◆武者·鬚切
	#av_髭切=true;

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	CreateTextureSP("絵ＥＶ", 4100, Center, Middle, "cg/ev/ev953_護氏装甲_b.jpg");

	FadeDelete("絵フラ", 1000, true);

	SetNwL("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280040a01">
「主君！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……无路可退。
　无论是从我个人来说，还是对舞殿宫来说。

　我的身份已然暴露。
　如果让大将领活着离开，就会问亲王之罪，招致无为
之死。

　事已至此。
　只能做出觉悟！

　将足利护氏……斩杀!!

　然后————

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想
	SetVolume("SE*", 100, 0, null);
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/bg/bg032_八幡宮奥舞殿内a_01.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 100, null, true);

	SetFwC("cg/fw/fw署長_冷厳.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0280050a11">
「到时就杀我吧。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0280060a11">
「可以吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetNwL("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280070a00">
「————村正!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ばっ。装束脱いだ。
//◆景明と村正。以降、顔グラ使う
	CreateSE("SE01","se人体_動作_外套纏う01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵ＥＶ*");
	DeleteStA(0,true);
	DrawDelete("黒幕１", 150, 100, "slide_01_03_1", true);

	StR(1000, @30, @0,"cg/st/st景明_通常_私服.png");
	StL(1000, @30, @0,"cg/st/st村正_通常_私服.png");
	Move("@StR*", 300, @-30, @0, null, false);
	FadeStR(300,false);

	WaitKey(200);

	Move("@StL*", 300, @-30, @0, null, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw髭切_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280080a05">
「其为虾夷之女……
　以服饰藏之甚妙。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280090a05">
「但此刻现身又能如何？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280100a01">
「这还用问吗。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280110a01">
「和那个有名的剑胄——
　须切之剑胄，太刀较量！」

{	FwC("cg/fw/fw髭切_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280120a05">
「……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280130a00">
「……」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280140a01">
「……喂，主君。
　先不说那边，为什么连你也露出这种表情，
好像是说『这个女人在说什么胡话』！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280150a00">
「抱、抱歉。
　看到你这个样子，我现在还无法顺利接受——」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280160a01">
「别再说那些搞不懂的话了。
　来吧，装甲之势！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正蝦夷→蜘蛛→分解？
	SoundPlay("@mbgm04",0,1000,true);
	CreateSE("SE02","se特殊_鎧_装着04");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StL(1000, @0, @160,"cg/st/3d村正蜘蛛_正面.png");
	FadeStL(0,true);
	FadeDelete("絵フラ", 300, true);

	SetFwC("cg/fw/fw髭切_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280170a05">
「什……什么?!」

{	CreateSE("SE02b","se特殊_鎧_装着03");
	MusicStart("SE02b",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);
	DeleteStL(0,true);
	FadeDelete("絵フラ", 300, false);}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280180a05">
「是剑胄?!
　汝————为武者!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクション１
	CreatePlainSP("絵演板", 3000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStR(0,true);
	FadeDelete("絵演板", 300, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280190a00">
「遇鬼斩鬼，
　逢佛弑佛。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクション２
	CreatePlainSP("絵演板", 3000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStR(0,true);
	FadeDelete("絵演板", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280200a00">
「剑胄之理，正在于此！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲ガキーン
	CreateSE("SE01","se特殊_鎧_装着02");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStA(0,true);
	Wait(300);
	FadeDelete("絵フラ", 600, true);

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280210a00">
「………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280220a01">
《怎么？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280230a00">
「没事……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我产生了奇妙的安心感，于是露出了苦笑。

　装甲之后，我明白了。

　……村正并没有任何变化。

　她是我的剑胄。

　我没必要对她的外表感到困惑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280240a00">
「——上吧！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280250a01">
《明白！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一度シーン切り
	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"md01_029vs.nss"