//<continuation number="220">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_020.nss_MAIN
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
	#bg061_普陀楽城大手門a_02=true;
	#bg105_城門付近内側_02=true;
	#bg062_普陀楽城大手道_02=true;
	#bg072_火災で倒壊した和風建築_02=true;
	#ev001_銀星号事件イメージ１=true;
	#ev003_銀星号事件イメージ３=true;
	#ev002_銀星号事件イメージ２=true;
	#ev152_見下ろす銀星号_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_021.nss";

}

scene mb03_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_019.nss"

//◆小弓御所（一部）
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵演背景", 500, Center, Middle, "cg/bg/bg061_普陀楽城大手門a_02.jpg");
	Rotate("絵演背景", 0, @0, @180, @0, null,true);

	CreateTextureSP("絵演背景２", 200, Center, Middle, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_02l.jpg");
	Rotate("絵演背景２", 0, @0, @180, @0, null,true);
	Move("絵演背景２", 0, -500, 0, null, true);

	OnBG(100,"bg105_城門付近内側_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　小弓殿前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200010a00">
「…………」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200020a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我们来到了——殿前。
　从东面绕近，看准警戒线的间隙靠近后，找时机装甲
飞行。保持低空高度，瞄准公方府前进，

　自始至终都没有遭遇迎击。
　
　……一切都过于顺利了。

　就算如何伺机寻找防卫的薄弱之处，低空飞行数十米
之远的骑影定会被目击。没有可能躲过。一旦被发现，
马上就会联络公方府，同时向防空队下达指令，他们的
部分兵士大概就会前来捉拿我们。

　原本是这么考虑的。如果只是这种程度的话，短时间
内强行突围也不是不可能。
　而且也许，连这种估计都太过乐观。

　但现实更加夸张，简直就像砂糖点心。

　装甲姿态讽刺般的毫发无损，我和一条径直来到了目
的地。
　原本以为极度艰难的潜入之行居然顺利进展至此，其
中理由难以琢磨。

　……不。是<RUBY text="··">曾经</RUBY>难以琢磨。
　
　如意过头的进攻使我们终于来到今川雷蝶的宅邸，将这
里的全景尽收眼底，直到此时……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小弓御所全景。落城済み。一部燃えてたり。


	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	MusicStart("SEL01",2000,500,0,700,null,true);

	Move("絵演背景２", 70000, -1000, 0, null, false);
	FadeDelete("絵演背景", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　小弓城池，已经沦陷。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200030a02">
「……怎么这样？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200040a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200050a02">
「难道是，小姐她们……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　遭到了以冈部余党为核心力量的倒幕军队的袭击——
　
　首先，这是不可能的。连一条自己都完全不相信自己
说出的话。

　第一，与既定战略有出入。第二，所谓黑濑童子召集
的区区千余兵力不可能攻陷公方府。第三，行动过于迅
速。
　第四——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆中へ
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);


	CreateTextureSP("絵演背景２", 200, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Rotate("絵演背景２", 0, @0, @180, @0, null,true);

	OnBG(100,"bg062_普陀楽城大手道_02.jpg");//ダミー注意
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我踏入了馆内，尘埃漫天，凄惨无比。
　一条也尾随我而来。

　里面是一片狼藉。
　就算是遭遇大军的突袭，瞬间被攻入内部——会造成
这般落魄光景吗。

　从崩毁痕迹来看，只能认为是机关枪扫射造成的。
　倒塌的墙壁前面横卧着炮身扭曲的迫击炮——这是什
么？不会是在馆内使用这种武器进行炮击吧？

　还有尸体。
　死、死、死、死。

　所有尸体都穿着六波罗的军装。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200060a02">
「……真奇怪。
　他们是被谁杀的呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200070a02">
「没有一具<RUBY text="··">敌人</RUBY>的尸体……
　这是怎么回事？　难道是六波罗攻打了六波
罗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200080a02">
「不过，如果说这里的家伙都死掉了……那活
下来的家伙呢……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200090a00">
「没有。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200100a02">
「啊？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200110a00">
「没有活下来的人。
　所有人都死了。」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200120a00">
「留在这里的只有死尸和
　……死神而已。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆駆け出す
	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("煙動画");
	Delete("絵演背景*");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　向深处奔跑。
　飞过尸骸上方。溅起点点血色飞沫。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0200130a01">
《——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　村正的内心犹如隆冬的铁板一般坚固而冰冷。
　然而有时却又像刚从熔炉中熔化流出的矿渣那样黏稠
火热。

　装备村正的我，内心也与她相似吧。
　冷酷与灼热的相伴中，意识仿佛就要飞往天际尽头。

　我奔跑着，不断追寻这份随时会超越现实的意识。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走って
//◆奥の間へ。屋根も吹っ飛んでる
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	WaitKey(200);
	OnBG(100,"bg072_火災で倒壊した和風建築_02.jpg");
	FadeBG(0,true);
	SetVolume("SE*", 500, 0, null);
	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);

	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	MusicStart("SEL01",2000,500,0,700,null,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　那里，也许是这座城池的主人曾居住的房间吧。
　似乎一度充斥着绚烂的装饰。

　过眼云烟。

　而今早已无踪无影。
　粉碎、崩裂，所有的一切都一去不返。

　包括它们的主人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200140a02">
「……这家伙……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200150a00">
「是啊。
　曾在大和ＧＰ看到过啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　从我身后窥视周遭的一条顿时愕然，我朝她点点头。
　房间中央躺倒着的是，人类——的残渣。碎片。

　过于激烈的战斗所造成的结局吗。
　用奢华的剑胄装甲身躯的小弓公方今川雷蝶，仿佛象
征着宅邸所受灾祸一般，呈现出骇人的模样
<RUBY text="·····">破碎而零散</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200160a02">
「……这究竟是怎么回事……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200170a00">
「谁知道是怎么回事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　咬牙挤出这句话。
　情况不明吗。不。正相反。

　情况一目了然。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200180a00">
「你应该见过，一条。
　这幅光景，你应该亲眼见过一次。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200190a02">
「——是——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　今川雷蝶死了。
　小弓公方府毁灭了。

　但是，我们还什么都没做。
　作为他们的敌人，我们还什么也没做。

　所以，他们不是被敌人摧毁的。
　战争并没有杀了他们。

　是什么杀了他们，是什么毁灭了一切。
　完全不同于战争，却能毁灭众生的是什么？

　是天灾。
　卷起雷雨旋涡的暴风。乘风四起的大火。吞噬沿岸的
大海啸。山神怒吼，将周边变为人间地狱的火山爆发。

　与那些同等威力。
　一样的突如其来，一样的无法抵抗，一样的冷酷无情。
取人性命。毁人营生。只有这些现象。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	Zoom("絵演", 0, 1250, 1250, null, true);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,500,0,1000,null,false);
	FadeFR2("絵演",0,750,200,0,0,30,AxlDxl, true);
	Delete("絵演");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225a]
　人们称之为。
　杀戮之天象。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev003_銀星号事件イメージ３.jpg");
	Zoom("絵演", 0, 1250, 1250, null, true);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,750,0,1000,null,false);
	FadeFR2("絵演",0,750,200,0,0,30,AxlDxl, true);
	Delete("絵演");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225b]
　人们称之为。
　死亡之雨。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Zoom("絵演", 0, 1250, 1250, null, true);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵演",0,750,200,0,0,30,AxlDxl, true);
	Delete("絵演");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225c]
　人们称之为。
　魔王。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225d]
　而且，人们称之为。
　
　白银之星。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆瓦礫背景にレイヤー重ねで銀星号？
//◆演出利かせて。
//あきゅん「演出：ここでのＥＶはきっと本来での使用方法とは違う雰囲気重視で仮入れ」
	CreateTextureSP("絵ＥＶ", 2000, -324, -576, "cg/ev/resize/ev152_見下ろす銀星号_aｌ.jpg");

	CreateMovie("煙動画", 2001, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", AddRender);
	Move("煙動画", 0, @0, @-400, null, true);
	Rotate("煙動画", 0, @0, @180, @0, null,true);


	FadeDelete("絵色黒", 3000, false);
	Move("絵ＥＶ", 30000, 0, @0, null, false);
	SoundPlay("@mbgm37",0,1000,true);

	Wait(4000);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/mb03/0200200a14">
「夕阳真美，景明。
　宛如鬼灯煌煌的原野……」


//【光】
<voice name="光" class="光" src="voice/mb03/0200210a14">
「你不觉得吗？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200220a00">
「——银星号!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度シーン切って
//◆銀星号
	CreateTextureSP("絵ＥＶ２", 1990, Center, Middle, "cg/ev/ev152_見下ろす銀星号_a.jpg");
	SetBlur("絵ＥＶ２", true, 3, 300, 70, false);
	Zoom("絵ＥＶ２", 0, 2000, 2000, null, true);

	CreateSE("SE01","se特殊_雰囲気_鎧登場演02");

	CreateMovie("煙動画", 1999, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 4000, null, true);
	Request("煙動画", AddRender);
	Move("煙動画", 0, @0, @-100, null, true);
	Rotate("煙動画", 0, @0, @180, @0, null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵ＥＶ２", 500, 1000, 1000, Dxl2, false);
	FadeDelete("絵ＥＶ", 500, true);
	Wait(2000);


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_021.nss"


