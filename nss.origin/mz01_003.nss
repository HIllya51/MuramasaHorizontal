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

scene mz01_003.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
$badEnd_Flag = true;
		if($badEnd_Flag == true){$その他死亡 = true;$一条死亡 = true;$香奈枝死亡 = true;SetHex();}
		else{}
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg007_若宮大路a_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mz01_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　""


//●村正を殺す

//◆※ルート分岐条件を満たさなかった場合のバッドエ
//◆ンドとして流用する際は以下シーンを挿入

	if($badEnd_Flag == true){

	$badEnd_Flag = false;

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 10, "#000000");
	FadeDelete("上背景", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　杀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬
//◆血
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(25);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演血", 20, Center, Middle, "cg/anime/Left/blood_C_6.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　杀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬
//◆血
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(20);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演血２", 20, Center, Middle, "cg/anime/Right/blood_B_6.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　不知杀了多少人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬
//◆血
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(15);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演血３", 20, Center, Middle, "cg/anime/Center/bloodA_7.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　追逐着银星号，追逐着被“卵”侵蚀人——
　日复一日地持续狩猎的生活，永无止境。

　所杀之人不计其数。
　也杀了与他们等量的同伴。

　回过神来，我的身边已空无一人。

　尽管如此仍要继续弑敌。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬
//◆血
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演血４", 20, Center, Middle, "cg/anime/Center/bloodA_14.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　所以，已经无法回头。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆ここまで

	}else{

	}

//◆以下、ヒロインキルの場合と共有

//◆夜の街路
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(10,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
　……不知身处何地，就这样伫立街头。
　四下无人，伸手不见五指。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//装甲まとめ
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	StC(50, @0, @150,"cg/st/3d村正蜘蛛_正面.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
　我叹了口气，解除了村正的装备。
　剥离覆盖全身的装甲，变为深红色蜘蛛的形态。

　然后面面相觑。
　寂静的地面月光斑驳，我与半身相偎的铁骑对峙。

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030010a01">
《……是么。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　没做任何说明。
　但是我的蜘蛛却已察觉。

　如同我突然想起什么事一般，　
蜘蛛也若有所思。
　该来的终究会来吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030020a01">
《你除了我，已经一无所有了。
　就像我除了你，也一无所有。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030030a00">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　颔首——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030040a00">
「我们，失去的太多。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030050a01">
《……嗯。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　互相颔首。
　接受了这个事实。

　——顺序到了。
　轮到，我们了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030060a01">
《那么，二选一。
　你杀了我。
　或者，我杀了你。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　手中，是熟悉的重量。
　太刀被传递而来。

{	CreateSE("SE01b","se戦闘_動作_刀構え02");
	MusicStart("SE01b",0,1000,0,1500,null,false);}
　村正的嘴角獠牙。
　太刀和獠牙。是我最终的抉择。

　——答案早已了然。

　即便如此村正还是将选择权交给了我。
　这是诚意——慈悲——还是温情？与将
肉体化作钢铁的她相映，有些不称。

　我想紧紧抱住那份纯真。
　想要守住性命。

　死亡的恐惧——
　
　然而我很明白。

　如果被恐惧打败会导致什么后果。
　自己捡回一条命，而相对又会失去什么。

　现在的我很明白。
　在那天与村正相遇之时便已心知肚明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030070a00">
「答案已经有了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030080a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　为了阻止银星号的扩散破坏。
　我和村正，谁更为重要？

　答案，呼之欲出——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030090a01">
《我。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030100a00">
「我并没有问你的打算，剑胄。
　我只是作为操控者命令你。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030110a01">
《——主君。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　<RUBY text="··">彼此</RUBY>心照不宣。
　知道该做什么事。

　知道数罪并罚的意义。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030120a00">
「完成你的职责。
　村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030130a01">
《主君。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　有恐惧。也有懊悔。
　我思考着余下之事。

　不过，这都是我自食其果。
　是不自量力而招致这样的末日，
我已无路可逃。

　也绝不会逃。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030140a00">
「<RUBY text="光">银星号</RUBY>就拜托你了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030150a01">
《……我发誓，必定鞠躬尽瘁。
　我的主君。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆黒画面
//◆ずばしゅ。
	CreateColorSP("絵色黒", 100, "#000000");
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerdamN(@0, @0,1200);
	SL_centerdamfadeN2(10);

//◆デッドエンド
	ClearWaitAll(3000, 2000);

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　""