//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_022.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_023.nss";

}

scene mc02_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_021.nss"


//◆景明の部屋
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 11, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("上背景");
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　早饭。
　如同先前所听到的方法那样，在准时的规定时间
内由守卫的士兵递上的餐点里藏有讯息。

　用餐刀切开尚未在大和市面上贩卖的
纸制牛乳容器后，我立刻发现了贴在内侧的
耐水纸。
　我拭去水分，摊开纸张，浏览上面的文字。

『啊啊，景明大人！　立下山盟海誓的我们，
已经无法失去对方了。
　若我们能过着像两亿年前一般宁静的生活，
将再也不需要任何誓言。』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0220010a00">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0220020a00">
（……“一切都照计划进行”……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——不论是敌方的作战，亦或是我方的应对。
　
　我在脑内将暗号转换为正确的内容，然后把纸翻面，
写下“俱已明白”的暗号。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0220030a00">
（『刚刚的内容我就当作没看到』……吧）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我将纸放回原处。
　之后只要等几分钟，假装外出上厕所就行了。

　……好。
　如果一切按照预定进行，那么还有四、五分钟。


　
　　　　　　　　　上午七点三〇分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	ClearFadeAll(0, true);
}

..//ジャンプ指定
//次ファイル　"mc02_023.nss"