//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_021.nss_MAIN
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
	#bg109_宇宙空間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_022.nss";

}

scene md05_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_020vs.nss"


//◆※以下、モニター展開時は高度計を０で固定。宇宙
//◆空間なので。
//◆黒


//無音のほうがいい？ inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("下黒", 90, "BLACK");
	CreateTextureSP("地球", 80, @0, @0, "cg/ev/ev238_地球と太陽と月と金神_b.jpg");


//	CreateTextureSP("コクピット", 10000, @0, @0, "cg/cp/mura/フレーム.png");
//	Zoom("コクピット", 0, 950, 950, null, true);
//	Move("コクピット", 0, @-50, @-50, null, true);





	FadeDelete("上背景",1500,true);
//	FadeDelete("黒",1500,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………

　………………………………………………

　身体……灼热。

　好似燃烧一般。

　被称为皮肤的东西已被烧烂。

　呼吸也很痛苦……

　这里是哪里。

　我在哪里。

　我……堕入地狱了吗……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆暗い空。つか宇宙なんだが。

	CreateTextureEX("宇宙", 900, 0, @0, "cg/bg/bg204_横旋回背景_04.jpg");
	CreateTextureEX("宇宙2", 900, 0, @0, "cg/bg/bg204_横旋回背景_04.jpg");

//	CreateTextureEXadd("宇宙3", 900, 0, @-200, "cg/bg/bg204_横旋回背景_04.jpg");
//	CreateTextureEXadd("宇宙4", 900, 0, @-200, "cg/bg/bg204_横旋回背景_04.jpg");
//	Zoom("宇宙3", 0, 1100, 1100, null, true);
//	Zoom("宇宙4", 0, 1100, 1100, null, true);
//	Rotate("宇宙3", 0, @0, @180, @0, null,true);
//	Rotate("宇宙4", 0, @0, @180, @0, null,true);


//	Move("宇宙", 20000, @-400, @0, null, false);
//	Zoom("宇宙", 0, 1500, 1500, null, false);

	CreateSCR1("@宇宙","@宇宙2",40000,-300,@0);
//	CreateSCR2("@宇宙3","@宇宙4",40000,-800,@0);

	Wait(2000);
//	Fade("宇宙", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　黑暗。

　漆黑，昏暗。

　果然是地狱吗。

　但是，却有些不纯粹……

　有点点星光。

　并不是完全的黑暗。

　……这里是，哪里？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆暗い空間に漂う村正
//◆村正最終_騎航_通常を１２０～１８０度回転させて
//◆表示。それでどうにも不自然なようなら新規作成


//■宇宙っぽくしてみようとしたけれどダサい。 inc櫻井

	CreateTextureEX("muramasa", 1000, @-100, @-250, "cg/st/3d村正最終_騎航_通常5.png");
	Rotate("muramasa", 0, @0, @0, @120, null, true);
	Request("muramasa", Smoothing);


	Move("muramasa", 13000, @100, @0, AxlDxl, false);
	Fade("muramasa", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210010a01">
《……主君。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210020a00">
（……村正吗？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　喉咙堵塞，发不出声音。
　即使如此，思想也传递着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210030a01">
《嗯。
　身体如何？　只做了应急处理。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210040a00">
（虽然很痛……
　但还不至于无法动弹）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　确认了肌肉的情况。
　没有完全断裂之处——但也没有不痛而能正常行动
之处。

　特别是胸口附近伤势严重。
　胸骨好像碎裂了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210050a01">
《虽然在被踢到的前一刻张开了磁力屏障……
但也不能完全防住。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210060a00">
（……这样啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　但正因为有磁气屏障的反弹效果，才只受了这种
程度的伤吧。
　即使被踢碎也不奇怪。那一踢就是有如此威力。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210070a01">
《于是呢，主君。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210080a00">
（嗯？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210090a01">
《……被踢，再加上磁力反弹，还有刚才的空
间扭曲也感觉很是诡异，最终似乎被踢到
了很远的地方。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210100a00">
（在哪里？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210110a01">
《唔嗯……看到那个了吗？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210120a00">
（那个？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　朝着脑内剑胄传音指示的方向看去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("下黒", 0, true);
	Fade("宇宙*", 2000, 0, null, false);
	Fade("muramasa", 2000, 0, null, true);
	Delete("宇宙*");
	Delete("muramasa");


}

..//ジャンプ指定
//次ファイル　"md05_022.nss"

