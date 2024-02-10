//<continuation number="1730">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_012.nss_MAIN
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

//嶋：デバッグ用
//$Ichizyou_Dead=true;
//$Kanae_Dead=true;

	//▼ルートフラグ、選択肢、次のGameName

	if($Ichizyou_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	#av_荒覇吐=true;

	}else if($Kanae_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	#av_荒覇吐=true;

	}else{
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	#av_荒覇吐=true;

	}

	$PreGameName = $GameName;

	$GameName = "ma04_013vs.nss";

}

scene ma04_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_011.nss"

//◆夜
//◆長磯
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我们乘着夜色登陆江之岛。
　与昨日一样，但较昨日而言更有效率。
在刚过午夜之时，已经着手调查。

　宛如拨开夜幕般前进。
　大概昨夜的印象还残留着……埋没了风景的黑暗看起来
更加诡异，似乎隐藏着某些东西。

　不知不觉间，脚步变得沉重而谨慎。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆分岐。
//◆ヒロイン全員生存なら１１Ａ
//◆香奈枝死亡なら１１Ｂ
//◆一条死亡なら１１Ｃ


}


scene ma04_012.nss_all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_011.nss"

//◆夜
//◆長磯
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――
.//●１１Ａ

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0120010a04">
「凑斗大人。今夜有何行动方针？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120020a00">
「总之先去昨夜发现了古怪痕迹的地方吧。
　说不定能找到新的异变。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120030a00">
「之后去研究所。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120040a02">
「我觉得直接向研究所前进比较好啊？
核心怎么想都肯定在那里。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120050a03">
「这话是没错，不过反正方向相同。
那么稍微绕些路也绝非徒劳之举吧。
　……您是这个意思吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120060a00">
「是的。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120070a02">
「原来如此……
　我明白了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　『渔业研究所』据说镇座于岛中央靠西的地方。
　至少在幕府发行的地图上是这么显示的。

　如果这处记载有违于事实，我们就只能自己寻找
它的所在处了。
　所以我想优先察看确切留下了某些线索的地方。
虽然不知道能派上多大用场。

　不过时间有限，且远远不足。
　想绕远路就得加快速度。所以我喝斥自己
谨慎到有些怯懦的脚步，在不发出声音的限度内
加快前进。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　不久后，我们终于抵达。
　地面上残留着深深爪印的奇异空地。
枯萎的树木也与昨天别无二致。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120080a02">
「……接下来怎么办？」

{	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120090a03">
「今天要闯进去吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120100a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　昨天也因为时间不足，所以避免了冒险。
但通过侦察能从这块地方上了解到的事情有限。
不深入就无法得到情报。
　当然，必须谨慎小心地依顺序进行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120110a00">
「村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120120a01">
《嗯……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120130a00">
「进行热源探查。
　在周围寻找生命反应。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120140a01">
《了解。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。それっぽいＳＥ
	CreateSE("SE01","se特殊_コックピット_起動音04");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);

	WaitKey(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120150a01">
《……无反应。
　什么都没有……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120160a01">
《真的什么都没有。
　连小猫小狗都不存在……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120170a00">
「这样啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　现在也能感受到凉飕飕的<RUBY text="····">虚无氛围</RUBY>，如今又像是得到了
证实一般。
　果然这附近没有生物。

　考虑到异常的酷热和急剧的温度变化，
生态系统的损伤也是理所当然的。
　但即使如此，<RUBY text="·····">死亡与毁灭</RUBY>也都超过了限度。

　还有其他理由。
　一定还有别的理由……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120180a03">
「景明大人？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120190a00">
「……四周似乎没有他人。
　开始调查吧。尽可能迅速地——」

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120200a01">
《——主君!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　紧张的剑胄传音打断了我的话。
　明显是进行警告的尖叫。

　我伸手催促同行者安静，接着仰望头上的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120210a00">
「村正?!
　怎——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120220a01">
《高热源反应!!
　到——到底是什么啊！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120230a00">
「村正?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　高热源——武者么——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120240a01">
《出现<RUBY text="·">超</RUBY>高度热源反应！
　来了————有东西要来了!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120250a00">
「从哪里?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120260a01">
《地下！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　————地下?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかーん。
//◆怪物登場演出。まずシルエットか。
	OnSE("se戦闘_破壊_建物01",1000);
	CreatePlainEX("絵振", 5100);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");

	Fade("絵振", 0, 500, null, true);
	Shake("絵振", 1000, 0, 30, 0, 0, 1000, Dxl1, false);
	Fade("絵フラ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　眼前的空地呈四方形开始<RUBY text="··">下陷</RUBY>——看起来就是如此。
　下一瞬间。

　从那洞穴底部，<RUBY text="·">它</RUBY>浮升显现。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵用強化外装·荒覇吐
	#av_荒覇吐=true;

//◆というかビグザム。遮光器土偶風？
	PrintGO("上背景", 25000);
	CreateSE("SE01","se特殊_その他_渦巻く力");
	CreateColorSP("絵煙幕", 10000, "#FFFFFF");
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵背景200", 5000, Center, Middle, "cg/ef/efRec_雲a03.png");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 3000, 5000, null, true);
	Move("絵背景100", 0, @+100, @0, null, true);
	Move("絵背景200", 0, @+250, @-50, null, true);
	CreateMovie("ムービー１", 10000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-50, null, true);

	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景100", 1500, @0, @+200, null, false);
	Shake("絵背景100", 3000, 1, 2, 0, 0, 1000, Dxl1, false);

	DrawDelete("絵煙幕", 1000, 1000, "effect_01_00_0", true);

	Zoom("絵背景200", 2500, 10000, 80000, null, false);
	Fade("絵背景200", 1000, 0, null, false);
	Move("ムービー１", 5000, @0, @+300, null, false);
	Zoom("ムービー１", 5000, 70000, 8000, null, false);
	Fade("ムービー１", 4000, 0, null, false);

	WaitKey(1000);
	SetVolume("SE01", 4000, 0, null);

//ここまで

	SetFwL("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120270a02">
「…………怪……」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120280a02">
「……怪物……？」

{	FwL("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120290a03">
「……哎呀哎呀。」

{	FwL("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0120300a04">
「……这可真是的。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　没错。
　那东西除了“怪物”，就没有其他可用的称谓了。

　接近白金的银色肌肤。
　仿佛将人体极度抽象化后出现的造型。

　最重要的是——
　那副巨大身躯。

　简直就是登陆的巨鲸。
　总重量不知高达几吨。无从计算。

　这种玩意儿……
　<RUBY text="····">浮在空中</RUBY>。

　这是一幅难以体味到现实感的风景。
　我无法正常思考，不知道该作何感想，
也不知道该有何举动。

　大概处于这种情况的也不止我一人。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//ここまで
	CreateTextureEX("絵背景1000", 6000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵背景1000", 1000, 1000, null, true);
	Delete("ムービー１");
	Delete("絵背景100");
	Delete("絵背景200");


	SetFwL("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120310a03">
「……据说很久很久以前，
有个叫西村什么玩意儿的人
就制造了类似这个的东西……」

{	FwL("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0120320a04">
「在下倒是听说那人在德国
失踪了……」

{	FwL("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120330a02">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　怒斥无法正常运作的脑袋。
　我应该做些事情——一定有某些事要我去做。

　危险。

　这里不是珍奇小屋。
　我没空闲去享受这份惊愕感。

　我该做的事。
　我要做我该做的事——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120340a00">
「……村正。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120350a01">
《……主君？》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120360a00">
「那是什么……
　你知道吗？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120370a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120380a01">
《……是剑胄。
　虽然有些……与众不同。》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120390a00">
「剑胄……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我也有这种猜想。
　那是剑胄。

　那么。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120400a00">
「有“卵”么？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120410a01">
《…………没有。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120420a01">
《它不是。》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120430a00">
「不是寄生体啊。
　那么当然也不是银星号。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120440a01">
《嗯。》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120450a00">
「那么——现在应该撤退吧。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120460a01">
《是啊……
　试着告诉它自己没有战意，如何？》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　魁梧的大剑胄将视线——视线？　——投向我。
　它在看着我。

　不偏不倚地看着我。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120470a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　似乎有些不妙。
　好像会发生麻烦事。

　接不上茬。
　我无法准确把握。

　迷茫——困惑。
　<RUBY text="··············">虽然我知道现在不是发呆的时候</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぐおーん。
//◆カロリードレイン発動。
	CreateSE("SE01","se特殊_陰義_荒覇吐01");

	CreateTextureEXsub("絵反転100", 16000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateColorEX("絵反転200", 15000, "White");

	CreateTextureEXadd("絵背景200", 12000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	CreateMovie("ムービー１", 12000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("ムービー１", 0, 0, null, true);
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-30, null, true);
	SetAlias("ムービー１","ムービー１");

	MusicStart("SE01",0,1000,0,500,null,false);

	Zoom("ムービー１", 5000, 40000, 5000, Axl1, false);
	Fade("ムービー１", 1000, 1000, null, false);
	Shake("絵背景100", 2000, 2, 1, 0, 0, 1000, null, false);
	Shake("絵反転200", 2000, 2, 1, 0, 0, 1000, null, false);

	Fade("絵背景200", 0, 1000, null, false);
	DrawTransition("絵背景200", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("絵背景200", 300, 0, null, false);
	Fade("絵反転100", 0, 1000, null, false);
	DrawTransition("絵反転100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Fade("絵反転200", 0, 1000, null, false);
	DrawTransition("絵反転200", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);


	Wait(400);

	Fade("ムービー１", 2000, 0, null, false);
	Zoom("ムービー１", 5000, 30000, 5000, Axl1, false);

	FadeDelete("絵反転*", 500, false);


//ここまで

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120480a00">
「……!!」

{	FwL("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120490a03">
「这是……?!」

{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120500a02">
「好热……
　不对，真冷?!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通
	SetVolume("SE01", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　温暖的风吹过。
　身体的中心<RUBY text="····">冻结住了</RUBY>。

　我失去了某些东西。
　我被夺走了某些东西。

　这是————

　这是攻击！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120510a00">
「村正!!」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120520a01">
《————!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆鋼糸攻撃
//◆ざしゅざしゅざしゅ。突き刺さる。
	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	CreateTextureEX("絵EF100", 10000, 0, 0, "cg/ef/ef018_蜘蛛の糸.jpg");

	SetVertex("絵EF100", 1024, 576);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Request("絵EF100", Smoothing);

	SetBlur("絵EF100", true, 3, 500, 100, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵EF100", 200, 1024, 0, Dxl1, false);
	Fade("絵EF100", 100, 1000, null, true);

	Wait(50);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵EF100");
	Delete("ムービー１");
	Delete("絵背景200");

	SetVolume("SE01", 200, 0, null);

	OnSE("se戦闘_銃器_跳弾04",1000);


	Fade("フラッシュ白",300,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　蜘蛛吐出的钢丝如飞矛般划过半空。
　扎进了银色巨型装甲。

　我不知道这一击能带来多大损伤。
　但是，怪风静止下来了。

　肉体又恢复自由了。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	StR(1000, @-30, @0,"cg/st/st景明_通常_私服.png");
	Move("@StR*", 200, @30, @0, DxlAuto, false);
	FadeStR(200,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120530a00">
「撤退！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　我向同行者叫道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120540a00">
「返回海湾——
　不，回到片濑！」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120550a02">
「凑斗先生——」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120560a00">
「快去!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340a]
　我大叫。
　根本无暇进行问答。

{	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);}
　大鸟大尉拉起呆立着的一条的手，强硬地带着她开始
奔跑。
　她自己也开始奔跑了……但在那之前，
她看了我一眼。

{	SetVolume("SE*", 3000, 0, null);}
　我也回望她。
　现在只能做出这种回应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340b]
　我无暇凝望奔离而去的背影，只能倾听自己背后
渐渐消失的脚步声。
　然后，对峙。

　——巨大立像。
　沐浴在蜘蛛的反击之下，却毫不畏惧的怪影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120570a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バリーン。パーツ分解
//◆景明の周囲に展開
//◆左手で顔を覆う。片目は覗く
	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStR(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120580a00">
「遇鬼斩鬼，
　逢佛弑佛。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆左手を前へ伸ばす
	CreatePlainSP("絵板写", 2000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120590a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆武者·三世右衛門尉村正
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120600a00">
「……好了。
　要开始了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120610a01">
《嗯……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 4100, -780, -170, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Request("絵ＥＶ100", Smoothing);
	Rotate("絵ＥＶ100", 0, @0, @180, @0, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　我必须战斗。
　至少要在她们成功脱逃之前。

{	DrawTransition("絵ＥＶ100", 0, 0, 260, 600, null, "cg/data/slide_01_03_0.png", true);
	Fade("絵ＥＶ100", 300, 850, null, false);}
　与这个对手——
　与我前所未见，也从未设想过自己会遇见的
这个敌人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_013vs.nss"

}


//――――――――――――――――――――――――――――――
.//●１１Ｂ
scene ma04_012.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_011.nss"

//◆夜
//◆長磯
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120620a00">
「……总之先去昨天的地方。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120630a02">
「就是那个留有奇怪痕迹的地方吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120640a00">
「嗯。
　之后去研究所。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120650a02">
「直接去研究所比较快捷
吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　那里应该是核心。
　我理解了一条的思考。她是想这么说。

　我也并无异议。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120660a00">
「反正是顺路。
　并不会太费事的，而且那里说不定
还有某些重要的情报。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120670a02">
「啊，这样啊……这倒也是。
　我明白了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　据说『渔业研究所』镇座于岛中央靠西的
地方。
　至少在幕府发行的地图上是这么显示的。

　如果这处记载有违于事实，我们就只能自己寻找它的所在处
了。
　所以我想优先察看确切留下了某些线索的地方。
虽然不知道能派上多大用场。

　不过时间有限，且远远不足。
　想绕远路就得加快速度。所以我喝斥自己
谨慎到有些怯懦的脚步，在不发出声音的限度内
加快前进。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　不久后，我们终于抵达。
　地面上残留着深深爪印的奇异空地。
枯萎的树木也与昨天别无二致。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120680a02">
「……接下来怎么办？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120690a00">
「今天要闯进去。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　昨天也因为时间不足，所以避免了冒险。
但通过侦察能从这块地方上了解到的事情有限。
不深入就无法得到情报。
　当然，必须谨慎小心地依顺序进行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120700a00">
「村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120710a01">
《嗯……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120720a00">
「进行热源探查。
　在周围寻找生命反应。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120730a01">
《了解。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。それっぽいＳＥ
	CreateSE("SE01","se特殊_コックピット_起動音04");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);

	WaitKey(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120740a01">
《……无反应。
　什么都没有……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120750a01">
《真的什么都没有。
　连小猫小狗都不存在……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120760a00">
「这样啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　现在也能感受到凉飕飕的<RUBY text="····">虚无氛围</RUBY>，如今又像是得到了
证实一般。
　果然这附近没有生物。

　考虑到异常的酷热和急剧的温度变化，
生态系统的损伤也是理所当然的。
　但即使如此，<RUBY text="·····">死亡与毁灭</RUBY>也都超过了限度。

　还有其他理由。
　一定还有别的理由……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500a]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120770a02">
「凑斗先生？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120780a00">
「……四周似乎没有他人。
　开始调查吧。尽可能迅速地——」

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120790a01">
《——主君!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　紧张的剑胄传音打断了我的话。
　明显是进行警告的尖叫。

　我伸手催促同行者安静，接着仰望头上的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120800a00">
「村正?!
　怎——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120810a01">
《高热源反应!!
　什——这是什么啊！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120820a00">
「村正?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　高热源——武者么——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120830a01">
《出现<RUBY text="·">超</RUBY>高度热源反应！
　来了————有东西要来了!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120840a00">
「从哪里?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120850a01">
《地下！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　————地下?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかーん。
//◆怪物登場演出。まずシルエットか。
	OnSE("se戦闘_破壊_建物01",1000);
	CreatePlainEX("絵振", 5100);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");

	Fade("絵振", 0, 500, null, true);
	Shake("絵振", 1000, 0, 30, 0, 0, 1000, Dxl1, false);
	Fade("絵フラ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　眼前的空地呈四方形开始<RUBY text="··">下陷</RUBY>——看起来就是如此。
　下一瞬间。

　从那口洞穴底部，<RUBY text="·">它</RUBY>浮升显现。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵用強化外装·荒覇吐
	#av_荒覇吐=true;

//◆というかビグザム。遮光器土偶風？
	PrintGO("上背景", 25000);
	CreateSE("SE01","se特殊_その他_渦巻く力");
	CreateColorSP("絵煙幕", 10000, "#FFFFFF");
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵背景200", 5000, Center, Middle, "cg/ef/efRec_雲a03.png");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 3000, 5000, null, true);
	Move("絵背景100", 0, @+100, @0, null, true);
	Move("絵背景200", 0, @+250, @-50, null, true);
	CreateMovie("ムービー１", 10000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-50, null, true);

	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景100", 1500, @0, @+200, null, false);
	Shake("絵背景100", 3000, 1, 2, 0, 0, 1000, Dxl1, false);

	DrawDelete("絵煙幕", 1000, 1000, "effect_01_00_0", true);

	Zoom("絵背景200", 2500, 10000, 80000, null, false);
	Fade("絵背景200", 1000, 0, null, false);
	Move("ムービー１", 5000, @0, @+300, null, false);
	Zoom("ムービー１", 5000, 70000, 8000, null, false);
	Fade("ムービー１", 4000, 0, null, false);

	WaitKey(1000);
	SetVolume("SE01", 4000, 0, null);

//ここまで

	SetFwL("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120860a02">
「…………怪……」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120870a02">
「……怪物……？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　没错。
　那东西除了“怪物”，就没有其他可用的称谓了。

　接近白金的银色肌肤。
　仿佛将人体极度抽象化后出现的造型。

　最重要的是——
　那副巨大身躯。

　简直就是登陆的巨鲸。
　总重量不知高达几吨。我无从计算。

　这种玩意儿……
　<RUBY text="····">浮在空中</RUBY>。

　这是一幅难以体味到现实感的风景。
　无法正常思考，不知道该作何感想，
也不知道该有何举动。

　大概处于这种情况的也不止我一人。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//ここまで
	CreateTextureEX("絵背景1000", 6000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵背景1000", 1000, 1000, null, true);
	Delete("ムービー１");
	Delete("絵背景100");
	Delete("絵背景200");

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120880a02">
「————」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120890a02">
「呃……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　我怒斥无法正常运作的脑袋。
　我应该做些事情——一定有某些事要我去做。

　危险。

　这里不是珍奇小屋。
　我没空去享受这份惊愕感。

　我该做的事。
　我要做我该做的事——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120900a00">
「……村正。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120910a01">
《……主君？》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120920a00">
「那是什么……
　你知道吗？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120930a01">
《…………》

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120940a01">
《……是剑胄。
　虽然有些……与众不同。》

{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120950a00">
「剑胄……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　我也有这种猜想。
　那是剑胄。

　那么。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120960a00">
「有“卵”么？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120970a01">
《…………没有。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120980a01">
《它不是。》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120990a00">
「不是寄生体啊。
　那么当然也就不是银星号了。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121000a01">
《嗯。》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121010a00">
「那么——现在应该撤退吧。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121020a01">
《是啊……
　试着告诉它自己没有战意，如何？》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　魁梧的大剑胄将视线——视线？——投向
我。
　它在看着我。

　不偏不倚地看着我。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121030a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　似乎有些不妙。
　会发生麻烦事。

　接不上茬。
　我无法准确把握。

　迷茫——困惑。
　<RUBY text="··············">虽然我知道现在不是发呆的时候</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぐおーん。
//◆カロリードレイン発動。
	CreateSE("SE01","se特殊_陰義_荒覇吐01");

	CreateTextureEXsub("絵反転100", 16000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateColorEX("絵反転200", 15000, "White");

	CreateTextureEXadd("絵背景200", 12000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	CreateMovie("ムービー１", 12000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("ムービー１", 0, 0, null, true);
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-30, null, true);
	SetAlias("ムービー１","ムービー１");

	MusicStart("SE01",0,1000,0,500,null,false);

	Zoom("ムービー１", 5000, 40000, 5000, Axl1, false);
	Fade("ムービー１", 1000, 1000, null, false);
	Shake("絵背景100", 2000, 2, 1, 0, 0, 1000, null, false);
	Shake("絵反転200", 2000, 2, 1, 0, 0, 1000, null, false);

	Fade("絵背景200", 0, 1000, null, false);
	DrawTransition("絵背景200", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("絵背景200", 300, 0, null, false);
	Fade("絵反転100", 0, 1000, null, false);
	DrawTransition("絵反転100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Fade("絵反転200", 0, 1000, null, false);
	DrawTransition("絵反転200", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);


	Wait(400);

	Fade("ムービー１", 2000, 0, null, false);
	Zoom("ムービー１", 5000, 30000, 5000, Axl1, false);

	FadeDelete("絵反転*", 500, false);
//ここまで

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121040a00">
「……!!」

{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0121050a02">
「好热……
　不对，真冷?!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通
	SetVolume("SE01", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　温暖的风儿吹过。
　身体的中心<RUBY text="····">冻结住了</RUBY>。

　我失去了某些东西。
　我被夺走了某些东西。

　这是————

　这是攻击！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121060a00">
「村正!!」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121070a01">
《————!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆鋼糸攻撃
//◆ざしゅざしゅざしゅ。突き刺さる。
	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	CreateTextureEX("絵EF100", 10000, 0, 0, "cg/ef/ef018_蜘蛛の糸.jpg");

	SetVertex("絵EF100", 1024, 576);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Request("絵EF100", Smoothing);

	SetBlur("絵EF100", true, 3, 500, 100, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵EF100", 200, 1024, 0, Dxl1, false);
	Fade("絵EF100", 100, 1000, null, true);

	Wait(50);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵EF100");
	Delete("ムービー１");
	Delete("絵背景200");

	SetVolume("SE01", 200, 0, null);

	OnSE("se戦闘_銃器_跳弾04",1000);


	Fade("フラッシュ白",300,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　蜘蛛吐出的钢丝如飞矛般划过半空。
　扎进了银色巨型装甲。

　我不知道这一击能带来多大损伤。
　但是，怪风静止下来了。

　肉体又恢复自由了。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	StR(1000, @-30, @0,"cg/st/st景明_通常_私服.png");
	Move("@StR*", 200, @30, @0, DxlAuto, false);
	FadeStR(200,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121080a00">
「撤退！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　我向同行者叫道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121090a00">
「返回海湾——
　不，回到片濑！」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0121100a02">
「凑斗先生——」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121110a00">
「快走!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740a]
　我大叫。
　根本无暇进行问答。

　我推开呆立着的一条，把她逐向过来时的方向。
　视线重叠了——她的视线在诉说着什么。

　
　　　　　我也，
　　　　　　　　　　　　　一起——

{	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);}
　我依旧沉默。
　她悲伤地咬紧嘴唇，转过了身。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740b]
　我无暇凝望奔离而去的背影，只能倾听自己背后
渐渐消失的脚步声。
　然后，对峙。

　——巨大立像。
　沐浴在蜘蛛的反击之下，却毫不畏惧的怪影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121120a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バリーン。パーツ分解
//◆景明の周囲に展開
//◆左手で顔を覆う。片目は覗く
	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStR(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121130a00">
「遇鬼斩鬼，
　逢佛弑佛。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆左手を前へ伸ばす
	CreatePlainSP("絵板写", 2000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121140a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆武者·三世右衛門尉村正
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121150a00">
「……好了。
　要开始了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121160a01">
《嗯……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 4100, -780, -170, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Request("絵ＥＶ100", Smoothing);
	Rotate("絵ＥＶ100", 0, @0, @180, @0, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　我必须战斗。
　至少要等她成功脱逃。

{	DrawTransition("絵ＥＶ100", 0, 0, 260, 600, null, "cg/data/slide_01_03_0.png", true);
	Fade("絵ＥＶ100", 300, 850, null, false);}
　与这个对手——
　与我前所未见，也从未设想过自己会遇见的
这个敌人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_013vs.nss"

}


//――――――――――――――――――――――――――――――
.//●１１Ｃ
scene ma04_012.nss_ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_011.nss"

//◆夜
//◆長磯
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm24",0,1000,true);


	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0121170a04">
「凑斗大人。今夜有何行动方针？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121180a00">
「总之先去昨夜发现了古怪痕迹的地方
吧。
　说不定能找到新的异变。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121190a00">
「之后去研究所。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121200a03">
「这样也好。虽然直接向研究所前进会比较
快捷。
　但就方位来说，这路也绕得并不太远。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121210a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　据说『渔业研究所』镇座于岛中央靠西的
地方。
　至少在幕府发行的地图上是这么显示的。

　如果这处记载有违于事实，我们就只能自己寻找它的所在处
了。
　所以我想优先察看确切留下了某些线索的地方。
虽然不知道能派上多大用场。

　不过时间有限，且远远不足。
　想绕远路就得加快速度。所以我喝斥自己
谨慎到有些怯懦的脚步，在不发出声音的限度内
加快前进。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　不久后，我们终于抵达。
　地面上残留着深深爪印的奇异空地。
枯萎的树木也与昨天别无二致。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121220a03">
「今天要闯进去吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121230a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　昨天也因为时间不足，所以避免了冒险。
但通过侦察能从这块地方上了解到的事情有限。
不深入就无法得到情报。
　当然，必须谨慎小心地依顺序进行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121240a00">
「村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121250a01">
《嗯……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121260a00">
「进行热源探查。
　在周围寻找生命反应。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121270a01">
《了解。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。それっぽいＳＥ
	CreateSE("SE01","se特殊_コックピット_起動音04");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);

	WaitKey(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121280a01">
《……无反应。
　什么都没有……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121290a01">
《真的什么都没有。
　连小猫小狗都不存在……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121300a00">
「这样啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　现在也能感受到凉飕飕的<RUBY text="····">虚无氛围</RUBY>，如今又像是得到了
证实一般。
　果然这附近没有生物。

　考虑到异常的酷热和急剧的温度变化，
生态系统的损伤也是理所当然的。
　但即使如此，<RUBY text="·····">死亡与毁灭</RUBY>也都超过了限度。

　还有其他理由。
　一定还有别的理由……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880a]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121310a03">
「景明大人？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121320a00">
「……四周似乎没有他人。
　开始调查吧。尽可能迅速地——」

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121330a01">
《——主君!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　紧张的剑胄传音打断了我的话。
　明显是进行警告的尖叫。

　我伸手催促同行者安静，接着仰望头上的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121340a00">
「村正?!
　怎——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121350a01">
《高热源反应!!
　到——到底是什么啊！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121360a00">
「村正?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　高热源——武者么——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121370a01">
《出现<RUBY text="·">超</RUBY>高度热源反应！
　来了————有东西要来了!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121380a00">
「从哪里?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121390a01">
《地下！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　————地下?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆どかーん。
//◆怪物登場演出。まずシルエットか。
	OnSE("se戦闘_破壊_建物01",1000);
	CreatePlainEX("絵振", 5100);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");

	Fade("絵振", 0, 500, null, true);
	Shake("絵振", 1000, 0, 30, 0, 0, 1000, Dxl1, false);
	Fade("絵フラ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　　眼前的空地呈四方形开始<RUBY text="··">下陷</RUBY>——看起来就是如此。
　下一瞬间。

　从那洞穴底部，<RUBY text="·">它</RUBY>浮升显现。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵用強化外装·荒覇吐
	#av_荒覇吐=true;

//◆というかビグザム。
	PrintGO("上背景", 25000);
	CreateSE("SE01","se特殊_その他_渦巻く力");
	CreateColorSP("絵煙幕", 10000, "#FFFFFF");
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵背景200", 5000, Center, Middle, "cg/ef/efRec_雲a03.png");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 3000, 5000, null, true);
	Move("絵背景100", 0, @+100, @0, null, true);
	Move("絵背景200", 0, @+250, @-50, null, true);
	CreateMovie("ムービー１", 10000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-50, null, true);

	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景100", 1500, @0, @+200, null, false);
	Shake("絵背景100", 3000, 1, 2, 0, 0, 1000, Dxl1, false);

	DrawDelete("絵煙幕", 1000, 1000, "effect_01_00_0", true);

	Zoom("絵背景200", 2500, 10000, 80000, null, false);
	Fade("絵背景200", 1000, 0, null, false);
	Move("ムービー１", 5000, @0, @+300, null, false);
	Zoom("ムービー１", 5000, 70000, 8000, null, false);
	Fade("ムービー１", 4000, 0, null, false);

	WaitKey(1000);
	SetVolume("SE01", 4000, 0, null);

//ここまで

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121400a00">
「………」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121410a00">
「…………“怪物”…………」

{	FwL("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121420a03">
「……哎呀哎呀。」

{	FwL("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0121430a04">
「……这可真是的。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　没错。
　那东西除了“怪物”，就没有其他可用的称谓了。

　接近白金的银色肌肤。
　仿佛将人体极度抽象化后出现的造型。

　最重要的是——
　那副巨大身躯。

　简直就是登陆的巨鲸。
　总重量不知高达几吨。我无从计算。

　这种玩意儿……
　<RUBY text="····">浮在空中</RUBY>。

　这是一幅难以体味到现实感的风景。
　无法正常思考，不知道该作何感想，
也不知道该有何举动。

　大概处于这种情况的也不止我一人。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//ここまで
	CreateTextureEX("絵背景1000", 6000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵背景1000", 1000, 1000, null, true);
	Delete("ムービー１");
	Delete("絵背景100");
	Delete("絵背景200");

	SetFwL("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121440a03">
「……据说很久很久以前，有个叫西村什么玩意儿的人
制造了类似这个的东西……」

{	FwL("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0121450a04">
「在下倒是听说那人在德国
失踪了……」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121460a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　我怒斥无法正常运作的脑袋。
　我应该做些事情——一定有某些事要我去做。

　危险。

　这里不是珍奇小屋。
　我没空去享受这份惊愕感。

　我该做的事。
　我要做我该做的事——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121470a00">
「……村正。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121480a01">
《……主君？》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121490a00">
「那是什么……
　你知道吗？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121500a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121510a01">
《……是剑胄。
　虽然有些……与众不同。》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121520a00">
「剑胄……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　我也有这种猜想。
　那是剑胄。

　那么。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121530a00">
「有“卵”么？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121540a01">
《…………没有。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121550a01">
《它不是。》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121560a00">
「不是寄生体啊。
　那么当然也就不是银星号了。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121570a01">
《嗯。》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121580a00">
「那么——现在应该撤退吧。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121590a01">
《是啊……
　试着告诉它自己没有战意，如何？》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　魁梧的大剑胄将视线——视线？——投向
我。
　它在看着我。

　不偏不倚地看着我。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121600a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
　似乎有些不妙。
　好像会发生麻烦事。

　接不上茬。
　我无法准确把握。

　迷茫——困惑。
　<RUBY text="··············">虽然我知道现在不是发呆的时候</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぐおーん。
//◆カロリードレイン発動。
	CreateSE("SE01","se特殊_陰義_荒覇吐01");

	CreateTextureEXsub("絵反転100", 16000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateColorEX("絵反転200", 15000, "White");

	CreateTextureEXadd("絵背景200", 12000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	CreateMovie("ムービー１", 12000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("ムービー１", 0, 0, null, true);
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-30, null, true);
	SetAlias("ムービー１","ムービー１");

	MusicStart("SE01",0,1000,0,500,null,false);

	Zoom("ムービー１", 5000, 40000, 5000, Axl1, false);
	Fade("ムービー１", 1000, 1000, null, false);
	Shake("絵背景100", 2000, 2, 1, 0, 0, 1000, null, false);
	Shake("絵反転200", 2000, 2, 1, 0, 0, 1000, null, false);

	Fade("絵背景200", 0, 1000, null, false);
	DrawTransition("絵背景200", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("絵背景200", 300, 0, null, false);
	Fade("絵反転100", 0, 1000, null, false);
	DrawTransition("絵反転100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Fade("絵反転200", 0, 1000, null, false);
	DrawTransition("絵反転200", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);


	Wait(400);

	Fade("ムービー１", 2000, 0, null, false);
	Zoom("ムービー１", 5000, 30000, 5000, Axl1, false);

	FadeDelete("絵反転*", 500, false);


//ここまで

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121610a00">
「……!!」

{	FwL("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121620a03">
「这是……?!」

{	FwL("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0121630a04">
「……被吸收了！
　不好，大小姐！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通
	SetVolume("SE01", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　温暖的风儿吹过。
　身体的中心<RUBY text="····">冻结住了</RUBY>。

　我失去了某些东西。
　我被夺走了某些东西。

　这是————

　这是攻击！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121640a00">
「村正!!」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121650a01">
《————!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆鋼糸攻撃
//◆ざしゅざしゅざしゅ。突き刺さる。
	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	CreateTextureEX("絵EF100", 10000, 0, 0, "cg/ef/ef018_蜘蛛の糸.jpg");

	SetVertex("絵EF100", 1024, 576);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Request("絵EF100", Smoothing);

	SetBlur("絵EF100", true, 3, 500, 100, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵EF100", 200, 1024, 0, Dxl1, false);
	Fade("絵EF100", 100, 1000, null, true);

	Wait(50);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵EF100");
	Delete("ムービー１");
	Delete("絵背景200");

	SetVolume("SE01", 200, 0, null);

	OnSE("se戦闘_銃器_跳弾04",1000);


	Fade("フラッシュ白",300,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
　蜘蛛吐出的钢丝如飞矛般划过半空。
　扎进了银色巨型装甲。

　我不知道这一击能带来多大损伤。
　但是，怪风静止下来了。

　肉体又恢复了自由。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	StR(1000, @-30, @0,"cg/st/st景明_通常_私服.png");
	Move("@StR*", 200, @30, @0, DxlAuto, false);
	FadeStR(200,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121660a00">
「请撤退！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
　我向同行者叫道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121670a00">
「返回海湾——
　不，回到片濑！」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121680a03">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120a]
　大鸟大尉没有回答。
　趁着这段空档，她立刻退离了。

　只是在她离开之前。
　看了我一眼。

{	SetVolume("SE*", 3000, 0, null);}
　我也回望她。
　现在只能做出这种回应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120b]
　我无暇凝望奔离而去的背影，只能倾听自己背后
渐渐消失的脚步声。
　然后，对峙。

　——巨大立像。
　沐浴在蜘蛛的反击之下，却毫不畏惧的怪影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121690a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バリーン。パーツ分解
//◆景明の周囲に展開
//◆左手で顔を覆う。片目は覗く
	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStR(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121700a00">
「遇鬼斩鬼，
　逢佛弑佛。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆左手を前へ伸ばす
	CreatePlainSP("絵板写", 2000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121710a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆武者·三世右衛門尉村正
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121720a00">
「……好了。
　要开始了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121730a01">
《嗯……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 4100, -780, -170, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Request("絵ＥＶ100", Smoothing);
	Rotate("絵ＥＶ100", 0, @0, @180, @0, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
　我必须战斗。
　至少要等她们成功脱逃。

{	DrawTransition("絵ＥＶ100", 0, 0, 260, 600, null, "cg/data/slide_01_03_0.png", true);
	Fade("絵ＥＶ100", 300, 850, null, false);}
　与这个对手——
　与我前所未见，也从未设想过自己会遇见的
这个敌人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_013vs.nss"

}


