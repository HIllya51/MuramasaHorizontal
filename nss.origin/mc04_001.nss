//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_001.nss_MAIN
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
	#voice_on_大鳥花枝=true;

	$PreGameName = $GameName;

	$GameName = "mc04_002vs.nss";

}

scene mc04_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc03_027.nss"


//◆大鳥本邸
//◆応接間
//◆邦氏、花枝
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSP("絵背景20", 100, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	Delete("上背景");
	FadeDelete("黒幕１", 2000, true);

	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);
	SoundPlay("@mbgm20",0,1000,true);
	StR(1100,@0,@ 0,"cg/st/st花枝_通常_私服.png");
	StCL(1100,@50,@ 0,"cg/st/st邦氏_通常_私服.png");
	StL(1000,@-90,@ 0,"cg/st/st獅子吼_通常_制服.png");
	FadeStL(300,false);
	Move("@StL*", 300, @20, @0, Dxl1, true);

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010010a06">
「邦氏殿下。花枝大人。
　时间快要到了。」


{	FadeStCL(300,false);
	FadeStR(300,false);
	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010020b49">
「……」


{	#voice_on_大鳥花枝=true;
	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010030b18">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010040a06">
「请二位做好准备。」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010050b49">
「唔……」

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010060b49">
「……」

//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010070b49">
「且慢……
　狮子吼。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010080a06">
「殿下。
　此次订婚的意义，吾已说明多次。」



{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010090a06">
「为夺回镰仓，此乃无可避免之一步。」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010100b49">
「这……余明白。
　余明白，但是……」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010110a06">
「既然明白，就请听从吾言。
　殿下生为担负六波罗——
　担负大和之命运者。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010120a06">
「请殿下舍弃个人的意志。
　任何事的抉择，都请以国家为重。」



{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010130b49">
「————」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mc04/0010140e123">
「狮，狮子吼阁下。您言重了！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010150a06">
「……<RUBY text="···">言重了</RUBY>？
　哪里言重了。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010160a06">
「吾言皆为现实。宫女。
　吾所言可有不实之处？」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw女官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mc04/0010170e123">
「我……我没有这个意思——」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010180a06">
「汝无此意？
　明知吾所言无虚，却欲曲解而告知殿下吗？」



{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010190a06">
「君侧奸臣。」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mc04/0010200e123">
「什么……」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010210a06">
「汝无资格侍奉于殿下之侧。
　带下去。」


{	NwC("cg/fw/nw大鳥軍兵士Ａ.png");}
//【ｅｔｃ／大鳥兵士Ａ】
<voice name="ｅｔｃ／大鳥兵士Ａ" class="その他男声" src="voice/mc04/0010220e171">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆兵士、女官連れ去る。ＳＥで表現か

	DeleteStA(200,true);
	OnSE("se人体_動作_抱く02", 1000);
	WaitKey(200);
	OnSE("se人体_動作_人引きずる_L", 1000);

	SetNwC("cg/fw/nw女官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mc04/0010230e123">
「殿、殿下！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――


//◆ドア閉まる。ばたん。
	SetVolume("@OnSE*", 200, 0, null);
	OnSE("se日常_建物_扉閉める01", 1000);
	WaitKey(300);
	StCL(1100,@50,@ 0,"cg/st/st邦氏_通常_私服.png");
	FadeStCL(300,false);
	

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010240b49">
「等——等等！」


//◆ドス利かせて
{
	StL(1000,@-90,@ 0,"cg/st/st獅子吼_通常_制服.png");
	FadeStL(300,false);
	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010250a06">
「殿下。」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010260b49">
「……！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010270a06">
「吾重申一遍。
　吾向殿下说明现实。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010280a06">
「<RUBY text="····">足利邦氏</RUBY>无任何价值。
　价值所在乃源氏长者，乃龙军元帅。
　乃正三位六卫大将领。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010290a06">
「……殿下理解了吗。
　今后任何事的处理，都请遵循此理。」



{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010300b49">
「………………」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010310a06">
「殿下。
　请下令。」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc04/0010320b49">
「……余前去准备。
　汝且稍候。」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010330a06">
「是！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

//◆邦氏、去る

	Move("@StCL*", 200, @-20, @0, Dxl1, false);
	DeleteStCL(200,true);
	StR(1100,@0,@ 0,"cg/st/st花枝_通常_私服.png");
	FadeStR(200,true);
	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010340b18">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010350a06">
「花枝大人也请……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010360b18">
「……」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010370a06">
「什么事？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010380b18">
「狗畜生！」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010390a06">
「————」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010400a06">
「花枝大人所言甚是。
　请去准备。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010410b18">
「蒙昧！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010420a06">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010430a06">
「请前往准备室。
　侍从在等着花枝大人。」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010440b18">
「粪便！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010450a06">
「……………………」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010460b18">
「你说的话听起来都是粪便。
　粪便粪便粪便粪便粪便粪便！」


{	Move("@StL*", 300, @50, @0, Dxl2, false);
	DeleteStL(300,false);
	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010470a06">
「——<RUBY text="Ｌｉａｒ">骗子</RUBY>！」


//◆獅子吼、花枝の顎をつかむ。ＳＥ表現？
{	OnSE("se人体_動作_腕を掴む01", 1000);
	Shake("@StR*", 100, 7, 0, 0, 0, 1000, Dxl3, false);
	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010480b18">
「……呜……」


{	DeleteStR(300,false);
	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010490a06">
「只有您这低劣的品性，吾未能调教好。
　果然是因为承袭了不知本分者的血脉吗。
　您的姐姐也是如此。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010500a06">
「<RUBY text="····">这种货色</RUBY>居然要成为大君的后妃……
　实为大鸟家千年之耻。
　全部都是因为本人力量不足。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010510a06">
「请一定原谅在下，花枝大人。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010520b18">
「呜……啊……」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010530a06">
「事成之后……
　这一次，吾会仔细调教——让花枝大人多少
具备些常人的品性。」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010540b18">
「……你这个……！
　放开我……变态！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010550a06">
「……」


//◆がぶ。
{	OnSE("se人体_動作_噛みつき", 1000);
	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010560a06">
「！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 990);

//◆振り払う。倒れる花枝

	OnSE("se人体_動作_跳躍01", 1000);
	StL(1000,@20,@ 0,"cg/st/st獅子吼_通常_制服.png");
	Move("@StL*", 300, @-20, @0, Dxl1, false);
	FadeStL(300,false);

	Wait(200);

	OnSE("se人体_衝撃_転倒03", 1000);
	Shake("絵板写", 300, 0, 10, 0, 0, 1000, Dxl1, true);
	Delete("絵板写");

	WaitKey(700);

	StR(1100,@0,@50,"cg/st/st花枝_通常_私服.png");
	OnSE("se人体_動作_後ずさり01", 1000);
	Move("@StR*", 300, @0, @-50, Dxl1, false);
	FadeStR(300,true);
	WaitKey(300);
	SetFwC("cg/fw/fw花枝_野心.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010570b18">
「……呸。
　狗畜生连血也难喝。太差劲了。」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010580a06">
「就算狗畜生都不会乱咬人。
　您的性格似乎已经很扭曲了。」



{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010590a06">
「但是我不会放弃。
　失去了雄飞大人的希望之后，
大鸟家主只剩下您了。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010600b18">
「……」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010610a06">
「为了让邦氏殿下和大鸟家之间生下孩子，
需要一个<RUBY text="··">纽带</RUBY>……
　吾会纠正您，让您能够完成这个任务。
　所以请觉悟吧。」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010620b18">
「还是你做好觉悟吧！
　别以为你的脑袋能一直留在脖子上。」



{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010630a06">
「……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010640b18">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010650a06">
「把花枝大人带去。」


{	NwC("cg/fw/nw大鳥軍兵士Ｂ.png");}
//【ｅｔｃ／大鳥兵士Ｂ】
<voice name="ｅｔｃ／大鳥兵士Ｂ" class="その他男声" src="voice/mc04/0010660e172">
「是——是！」


//【ｅｔｃ／大鳥兵士Ｂ】
<voice name="ｅｔｃ／大鳥兵士Ｂ" class="その他男声" src="voice/mc04/0010670e172">
「首领，这边请……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010680b18">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆外で爆音。どかーん。
	SetVolume("@mbgm*", 1000, 0, null);

	DeleteStA(150,true);

	CreatePlainSP("絵板写", 5000);

	OnSE("se戦闘_破壊_爆発02", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, true);

	WaitKey(300);

	SetNwC("cg/fw/nw大鳥軍兵士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／大鳥兵士Ｂ】
<voice name="ｅｔｃ／大鳥兵士Ｂ" class="その他男声" src="voice/mc04/0010690e172">
「什……什么!?」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010700b18">
「……爆炸……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

//◆どかーんどかーん

	OnSE("se戦闘_破壊_爆発02", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,20,Dxl2, true);
	WaitKey(300);

	OnSE("se戦闘_破壊_爆発01", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, true);
	WaitKey(300);

	SetFwC("cg/fw/fw獅子吼_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010710a06">
「————」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010720a06">
「是榴弹炮……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆どかーん
	OnSE("se戦闘_破壊_爆発05", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,60,Dxl2, false);

	CreateVOICE("ｅｔｃ／大鳥兵士Ｃ","mc04/0010730e173");
	MusicStart("ｅｔｃ／大鳥兵士Ｃ",0,1000,0,1000,null,false);

//	SetNwC("cg/fw/nw大鳥軍兵士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0070]
//◆ボイスのみ
//【ｅｔｃ／大鳥兵士Ｃ】
//<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/0010730e173">
//「敌袭————!!
//　是敌袭——————————————!!」

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0010740b18">
「…………」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0010750a06">
「……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("ｅｔｃ／大鳥兵士Ｃ", 2500, 0, null);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc04_002vs.nss"