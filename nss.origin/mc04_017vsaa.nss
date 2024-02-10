
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsaa.nss_MAIN
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
	#ev186_村正ＶＳ銘伏_l=true;
	#bg090_大鳥邸通路c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_018.nss";

}

scene mc04_017vsaa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_017vsa.nss"

//●下
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景08EX", 6000, -1730, -750, "cg/ev/resize/ev186_村正ＶＳ銘伏_klm.jpg");

	Delete("上背景");

//◆画像を下へスクロール。
	Move("絵背景08EX", 6000, @0, -1620, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　我尽量不让敌人发现，将视线转向下方。
　那里——有我想要的东西。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	WaitAction("@絵背景08EX", null);
	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　影子!!

　地面上有着黑色的人影。
　走廊中的电灯照出了他的影子，只要看着他影子的脚
边，他的位置就无法隐藏了。


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

	PrintGO("上背景", 20000);

	CreateTextureSP("絵演", 5000, Center, InBottom, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
　狮子吼没有发觉。

　我不认为这是他简单的失策。
　本来，这就是不可能的事——在黑夜之中行刺的暗杀
者，不可能让影子落在地上。

　他偏离了自己的本分，出现在了光明之下，所以有了
缺陷。
　至今为止他都没有机会注意到这一点吧。

　这就是我得到的最大的<RUBY text="Ｌｕｃｋ">幸运</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_影人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0650a06">
「————」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0660a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我运用这一点来进攻。

　进入范围————<k>
　在这一瞬间，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼接近
	CreateTextureEX("絵背景09", 5800, @0, InBottom, "cg/ev/ev186_村正ＶＳ銘伏_l.jpg");
	Fade("絵背景09", 1000, 1000, null, true);
	Delete("絵演");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　斩击!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆獅子吼斬撃
//◆電磁抜刀
//◆激突ぞごーん。
	CreateColorSP("色黒", 20000, "#000000");
	CreateColorSP("色黒地", 10, "#000000");

	Delete("絵*");

	SL_rightdown(@0, @0,1500);

	CreateTextureEXadd("絵演上", 8100, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	CreateTextureEX("絵演", 8000, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	Zoom("絵演上", 0, 8000, 8000, null, false);

	Delete("色黒");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	CreateSE("SE01a","se特殊_電撃_放電01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdownfade(0);

	Wait(150);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵演上", 0, 450, null, true);
	Fade("絵演", 0, 1000, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorEXadd("絵色白", 29000, "#FFFFFF");
	Fade("絵色白", 150, 1000, null, true);

	Wait(600);

	SetVolume("@mbgm*", 2500, 0, null);


//◆闇
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");

	Delete("@slash*");
	Delete("@Slash*");

	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);
	WaitPlay("SE*", null);


	Wait(2000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0670a01">
《……主君！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0680a01">
《主君啊！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0690a00">
「呜……嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆どが。瓦礫を押し退けて立つ
	OnSE("se人体_動作_瓦礫を押しのける", 1000);

	OnBG(100, "bg090_大鳥邸通路c_03.jpg");
	FadeBG(0, true);

	CreatePlainEX("絵板写", 110);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 800, 0, 30, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵色黒", 1000, true);

	OnSE("se特殊_鎧_駆動音01", 1000);

	StR(1000, @-20, @50, "cg/st/3d村正標準_立ち_通常.png");
	Move("@StR*", 600, @20, @-50, DxlAuto, false);
	FadeStR(600, true);

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我拨开了压在身体上的东西，站起身。
　
　我看到那似乎是墙壁的残骸。

　我确认了周围环境的变化。
　……看来我被击飞后，撞破了几面墙，摔在了很远的
地方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16", 0, 1000, true);


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0700a00">
「两败俱伤吗……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0710a01">
《嗯。
　我们也受了很重的一击。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　脊椎嘎吱嘎吱的疼痛也是因此吗。
　看来这沉重的打击让我骨骼受损了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0720a01">
《拔刀快了一瞬间，幸好如此。
　这样降低了对方相当大的威力。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0730a00">
「敌骑呢？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0740a01">
《这附近没有他的反应。
　他应该也被打飞很远了。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0750a01">
《去找吗？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0760a00">
「相反。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我立刻摇头否定。
　我没有嗜好特意去追求和那种强敌的战斗。

　我要趁现在离开这里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0770a00">
「村正。
　确认先前的位置和现在的位置。
　重新调查通往楼梯的路线。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//嶋：修正（ことしなくて）【090930】
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0780a01">
《不用那样做啊。
　……你看看身后。》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0790a00">
「嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("絵色黒", 19000, "#000000");
	DrawTransition("絵色黒", 600, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　于是我回过头。

　……我的眼前就是通往地下的楼梯。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_018.nss"