//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_005.nss_MAIN
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

	$GameName = "md03_006.nss";

}

scene md03_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_004.nss"


//◆堀越
//◆ＥＶ：地下牢の村正

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 1000, "BLACK");

//■本当はev223 inc櫻井

//	CreateTextureEX("村正", 1100, @0, @0, "cg/ev/ev223_囚われの村正.jpg");


	Wait(2000);
	Delete("上背景");
	Fade("村正", 1500, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　封闭的空间中仅为黑暗所充斥，
黑暗长久地支配着此处，
毫无改变的征兆。
　这里的时间一定是凝固的吧。

　一切都丝毫不曾改变。
　无止境地重复着同一瞬间。

　暗色依旧。
　手脚上的枷锁巍然不动。
　于是心铁开始腐烂，无止境地腐烂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm15", 0, 1000, true);
	SetFwC("cg/fw/fw村正_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0050010a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——没能保护好他。

　<RUBY text="主人">景明</RUBY>不在。
　和足利茶茶丸一起将我关进这地下牢后就不知
去向了。

　自然无法去责怪他。
　景明之所以会突然转变，是因为本应保护他的剑胄能
力不足。

　如果我有更卓越的性能，就不至如此。

　锁住手脚的刑具由高精度的锻铁所打造。
　这材质与装甲相同，是不可能用蛮力破坏的，再加上
不知它用了何种手段使得热量难以传递，因此自己既无
法使用能力也不能改变形态。

　我只能像个被玩腻的人偶般在这里垂头丧气。

　……我也死心认定这是我自作自受。

　甚至能够自嘲这处境与自己的无能很相配。
　但是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0050020a01">
（……主君……！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　只有他，自己放不下。

　明明发誓要帮助他的。
　明明和他、和自己立下约定，要回应他的信赖的。

　在他最为需要我的瞬间，我却无为无能。

　操控者的心魂就这样被夺走了。
　如此贵重之人沦为银星号的下属，被严重地扭曲了。

　可恨的足利称此为<RUBY text="··">坦率</RUBY>。
　但是，这确实是实话——虽然景明的一部分性格被夸
张化了，不过他并没有被完全变成另一个人。

　但是，有别的东西被削除掉了。
　有别的东西被当做无用之物舍弃掉了。

　他心中的纠葛。
　一方面他<RUBY text="··">极欲</RUBY>救助凑斗光，而另一方面他又<RUBY text="··">告诫</RUBY>自己
这件事绝不能做。他的这一烦恼在他自己得出答案之前
被抹消得一干二净。

　从某种意义上说，他得到了解脱。
　这话我不能说得事不关己——曾几何时我也要求过他
抛下无用的烦恼，甚至利用精神污染来强迫他。

　但是他拒绝了，选择了其他的方法。
　他希望，<RUBY text="他">操控者</RUBY>与<RUBY text="我">剑胄</RUBY>不是从属的关系——
而是尊重彼此的意识共同战斗的战友。

　不会忘记。
　无论我还剩下多少星霜岁月，都绝不会忘记。

　所以绝不放弃。
　不能原谅自己的失态。

　无法认同他的意志以这样的形式被剥夺。

　……必须要去。
　去景明身边。

　我不得不去!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆じゃらじゃら。

	OnSE("se日常_金属_鎖鳴る01", 1000);


	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0050030a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　在心中嘶喊着理想，而后屈服于现实中的枷锁。
　这样究竟重复了多少次呢。

　一切都毫无改变。
　暗色波澜不惊，冰冷地封锁住我。

　只有重复着徒然的呐喊的心铁，每每伤害到自身，慢
慢地腐朽。

　与以前在凑斗家长眠之时不同。
　我已经不能如那般心如止水。

　因为我有了<RUBY text="主人">操控者</RUBY>。

　所以，再也忍受不了独自一人了。

　——想见他。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0050040a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　腐烂。
　腐烂。

　腐朽毫不留情地持续着。
　速度未必很快……但其结果无异。

　只要无法逃离这黑暗，腐朽就会令我在这里
朽烂至死。
　变成一堆毫无意义的铁锈。

　……但是。
　我当真有觉得厌恶的权利吗。

　名为村正的剑胄已然被逼入穷途末路，
　即将证明自己是毫无意义、派不上用场的次品。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0050050a01">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　腐烂。

　黑暗纹丝未变。
　只有腐朽不断侵蚀着我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆ウェイト
//◆ギー。戸が開く音
//◆フェードイン
//◆黒瀬童子

	SetVolume("@mbgm*", 3000, 0, null);
	Wait(2000);

	FadeDelete("村正",1500,true);
	WaitKey(1000);
	OnSE("se日常_建物_牢獄扉開く02", 1000);

	Wait(2000);

	CreateColorSP("絵色100", 2500, "BLACK");
	Fade("絵色100", 0, 500, null, true);

	StC(1500, @0, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStC(1300, true);


	SetFwR("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0050060b26">
「…………」

{	FwR("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0050070b26">
「……虽不清楚事情的缘由，
　不过这样吾就能还清之前欠下的人情了吧？」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0050080a01">
「————」

{	FwR("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0050090a01">
「……你……？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_006.nss"