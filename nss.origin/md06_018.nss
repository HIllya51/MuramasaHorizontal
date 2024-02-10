//<continuation number="740">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_018.nss_MAIN
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
	#bg112_川沿いの道a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_019.nss";

}

scene md06_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_017.nss"


//◆翌日、川沿い

//冒頭音楽流れないのはわざとです inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	CreateSE("SEL01","se自然_水_流れる01_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	OnBG(100, "bg112_川沿いの道a_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　真是不堪一击。

　昨天傍晚，虽然其相不扬，但好歹也算完工的
桥基在一夕之间，变成了海狸的巢穴。
　倒塌得很是彻底，目睹这般光景，任谁都会打消
再在此处重建桥梁的念头了。

　倒塌的原因一目了然。
　因为下雨，水量增加而被冲垮的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm30", 0, 1000, true);


	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180010e228">
「…………」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180020e227">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一起造桥的同伴们，沉默地看着这一惨状。
　似乎连说话的精力也不复存在。

　我也差不多。

　就如同石地藏菩萨般木立原地，任凭身后住民
往来穿梭。
　时而传来足以让人听闻的嘲讽声。

　……我太天真了。

　最大的失败在于作为地基的桩子太浅了吧。
　本以为已经考虑到河底不够结实，把地基
打得更深一些，看来着实不够啊。

　还有其他的一些情况我也注意到了。
　如果在施工中多加注意的话，其中大半错误都可以
避免，但是错在我太乐观而没当回事。

　本应更加慎重地对待此次施工……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180030a00">
「先整理一下问题所在吧。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180040e227">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180050a00">
「再重新设计——」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180060e228">
「……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180070a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　无人应答。
　回应我话语的，唯有他们那伴随着呼吸
而倾吐出的深深徒劳感。

　无可厚非。
　即便抱着没有回报，最终功亏一篑的觉悟
去工作，但终究落得一场枉然，难免还是会
灰心丧气吧。

　目前我还未想出鼓舞他们的方法。
　……姑且先将残骸回收。

　我踏入河中，拿起已经化身前卫艺术品般的
木材。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180080e307">
「啊……真是的。」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180090e307">
「惨不忍睹啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180100a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　始料未及的声音源自昨天的老人。
　今天也同样叼着那根虚有其表的烟管，
大摇大摆地走了过来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180110e307">
「喂。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180120a00">
「您好。」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180130e307">
「你们全部都是一群门外汉啊。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180140a00">
「哈……
　谁都没有造桥的经验啊。」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180150e307">
「也没有做过木匠的家伙吧？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180160a00">
「如您所言。」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180170e307">
「就这样你们还想造桥啊。
　就好比口齿不清的家伙意图说相声。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180180a00">
「……真的那么有难度吗？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180190e307">
「虽然我已经退休，但曾经是木匠出身。
　也建造过几次桥梁。」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180200e307">
「比起在静止的地面上建造房屋，在流动的
河水上造桥愈加麻烦，必须要考虑到
水流的冲击。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180210a00">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　可不是嘛。
　只靠门外汉的话终究太
勉强了啊……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180220a00">
「老先生。」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180230e307">
「嗯？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180240a00">
「曾做过木匠，又有造桥经验的您，
能否助我们一臂之力呢？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180250e307">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180260a00">
「只要给一些建议就可以了。
　请务必——」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180270e307">
「如果我没这个意思，就不会搭话了。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180280a00">
「那么——」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180290e307">
「那边的小子们！」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180300e228">
「……？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180310e227">
「哎？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180320e307">
「从现在开始照着我的话去做。
　首先把那些废弃材料收拾一下。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180330e228">
「……」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180340e227">
「……」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180350e307">
「别在那傻愣着！
　不是要造桥嘛！」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180360e228">
「啊……」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180370e227">
「啊，是……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180380a00">
「那么，地基就按照这样……
　支撑怎么办？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180390e307">
「以此河宽看来没有那个必要。
　在那上面架上垃圾等于画蛇添足。」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180400e307">
「那些桥台要造得尽量结实。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180410a00">
「好，明白了。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180420e109">
「……？
　那不是粂家的爷爷嘛。在干啥呢？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180430e110">
「你在帮那些家伙吗？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180440e307">
「可以这么说。
　小子们，今天休息吗？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180450e110">
「是的，不过……」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180460e307">
「那就来帮忙。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180470e109">
「什么？
　喂喂，为什么我们要做这种事？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180480e307">
「别磨磨蹭蹭的了。
　没了桥，你们不是也很困扰嘛。」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180490e109">
「说得……也是。」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180500e307">
「交给他们做的话，还不知道要
等到猴年马月才能完工。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180510e110">
「…………」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180520e307">
「赶紧换衣服去。
　还有，把其他有空的家伙都带来。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180530e110">
「……怎么办？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180540e109">
「还能怎么办。
　…………没办法吧。」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180550e109">
「真是的，真是敌不过老头子啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆川沿い
//◆とんてんかん

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateSE("橋", "se背景_ガヤ_橋建設中01_L");
	MusicStart("橋", 0, 1000, 0, 1000, null,true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180560a00">
（……实在是……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　意想不到的场景。

　原住民和新来的难民，居然在通力合作。
　为了建造某样事物而——互相配合。

　他们并未和解。

　既没有交谈，也不曾相视而笑。
　偶尔交错的目光也是冰冷的，彼此间的
不信任感显露无遗。

　尽管如此。
　
　——搬动沉重的木材时。
　——向河底打入桩子时。

　一个人手头的工作应接不暇，另一个人就会施以援助，
而这两人可能既非住民伙伴亦非难民同胞。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180570a00">
（这样的话……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　也许会用时许久。
　也许会阻碍繁多。

　但是，终有一日————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

//ここで音楽を消し、不穏な気配を演出する inc櫻井
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("橋", 1000, 0, null);



	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180580e110">
「最好把这个也运去现场吧？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180590e109">
「是啊……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ざっ。誰か来た
	OnSE("se人体_動作_一歩", 1000);

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180600e109">
「嗯？」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180610e109">
「怎么是你啊？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180620e110">
「之前说的那事吗？
　不好意思啊，虽然连工资都没有，
但最后还是觉得要靠自己啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　
　　　　　「————————
　　　　　　————————」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180630e110">
「……哈啊？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180640e109">
「什么？
　你说什么……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180650a00">
「桥的宽度，只要能足够一个人通过
就行了吧？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180660e307">
「最好再宽一点。
　可以让两人并肩通过……
这样的话，货车也可以通行了。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180670a00">
「这的确很便利。
　但是材料大概会不够。」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180680e307">
「不用担心。
　为了以防万一，
我可以到以前的工地去取一些。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180690a00">
「……那就有劳您了。」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180700e307">
「好嘞。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180710e110">
「……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180720e109">
「……」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180730e110">
「……那个嚣张的小哥……？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180740e109">
「不会……吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_019.nss"