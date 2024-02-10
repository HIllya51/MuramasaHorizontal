//<continuation number="1250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName =  ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_013.nss_MAIN
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
	#bg007_若宮大路a_01=true;
	#bg009_鎌倉住宅街a_01=true;
	#bg017_竹林_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_014.nss";

}

scene ma01_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_012.nss"



	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	SoundPlay("@mbgm22",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


//◆大通り


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130010a00">
「……是。我想询问一下那个池谷和男
行踪不明时的情况。」

{	NwC("cg/fw/nw安田さん.png");}
//【ｅｔｃ／安田さん】
<voice name="ｅｔｃ／安田さん" class="その他男声" src="voice/ma01/0130020e020">
「唉。就算你这么说。
　那都是什么时候的事了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130030a00">
「约半年前。
　兴隆四十一年四月十九日星期六。」

{	NwC("cg/fw/nw安田さん.png");}
//【ｅｔｃ／安田さん】
<voice name="ｅｔｃ／安田さん" class="その他男声" src="voice/ma01/0130040e020">
「嗯啊？
　就算你这么说。我也想不起来啊。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130050b56">
「安田叔叔！
　就是春季骑射比武的前一天哦！」

{	NwC("cg/fw/nw安田さん.png");}
//【ｅｔｃ／安田さん】
<voice name="ｅｔｃ／安田さん" class="その他男声" src="voice/ma01/0130060e020">
「……哦！
　对了对了，是骑射比武的前一天啊，
和君就是在那一天不见的。」

//【ｅｔｃ／安田さん】
<voice name="ｅｔｃ／安田さん" class="その他男声" src="voice/ma01/0130070e020">
「什么啊，你早点说就不得了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130080a00">
「……实在抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
　第二天。
　我们很简单地发现了凑斗先生。

　多亏他那特有的引人注目的暗黑气质。
　想方设法追着那种氛围，一小时后就
目击到了当事人。

　好厉害。
　并非指我们。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130090a00">
「…………
　靠近我很危险，我应该简单向你们说明过。
我不觉得自己有说明不到位或会招致误解的
地方。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1020, @-30, @0,"cg/st/st雄飛_通常_制服.png");
	StC(1010, @-150, @0,"cg/st/st忠保_通常_制服.png");
	StCL(1000, @-150, @0,"cg/st/st小夏_通常_制服.png");

	FadeStL(300,false);
	FadeStC(300,false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw雄飛_快活.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130100b56">
「无意中碰到的！」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130110b33">
「我们正好在散步。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130120b43">
「我们在寻找自我的旅途中。」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130130b56">
「呀，说起来在这里遇见还真是偶然啊，
凑斗先生。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130140a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

	DeleteStCL(300,false);
	DeleteStL(300,false);
	DeleteStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
　轻轻按了按额头，凑斗先生再次迈开步子。
　我们则在他身后稍稍隔开距离跟着。

　前进方向凑巧一致也没办法啊。
　凑巧凑巧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);


//◆住宅街

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
　凑斗先生在学校周边逡巡。
　看来不仅是律，他在对附近的失踪人员做全面调查。
是在实施昨天所言的行动吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130150a00">
「打搅一下。」

{	NwC("cg/fw/nw駄菓子屋さん.png");}
//【ｅｔｃ／駄菓子屋さん】
<voice name="ｅｔｃ／駄菓子屋さん" class="その他男声" src="voice/ma01/0130160e161">
「呜哦!?　你要干什么啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @20, @0,"cg/st/st小夏_通常_制服.png");
	Move("@StR*", 300, @-20, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130170b33">
「点心店老——板。没事啦——
　我们问点事情。」

{	NwC("cg/fw/nw駄菓子屋さん.png");}
//【ｅｔｃ／駄菓子屋さん】
<voice name="ｅｔｃ／駄菓子屋さん" class="その他男声" src="voice/ma01/0130180e161">
「哦，这不是小夏么。
　怎么，你认识这孩子？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130190a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

//◆駅前

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130200a00">
「冒昧打扰。」

{	NwC("cg/fw/nw大村先生.png");}
//【ｅｔｃ／大村先生】
<voice name="ｅｔｃ／大村先生" class="その他男声" src="voice/ma01/0130210e166">
「唔!?　好可怕的怪男！
　你这家伙，难道是鬼柔道材木座的泰三放出的
刺客吗!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-20, @0,"cg/st/st忠保_通常_制服.png");
	Move("@StL*", 300, @20, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130220b43">
「不是的——大村老师——
　他只是个怪人而已——」

{	NwC("cg/fw/nw大村先生.png");}
//【ｅｔｃ／大村先生】
<voice name="ｅｔｃ／大村先生" class="その他男声" src="voice/ma01/0130230e166">
「什么啊，只是个普通的怪男啊……
　那么，找我有何贵干？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130240a00">
「…………
　是的。有些事情想请教——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

//◆大通り

	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130250a00">
「您好，那边的姑娘。」

{	NwC("cg/fw/nw女の子.png");}
//【ｅｔｃ／女の子】
<voice name="ｅｔｃ／女の子" class="その他女声" src="voice/ma01/0130260e122">
「呜哇！　被可怕的人搭讪了！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @-20, @0,"cg/st/st雄飛_通常_制服.png");
	Move("@StR*", 300, @20, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130270b56">
「啊，不怕，不怕哦。
　来，给你番薯糖。能不能让这个人
提点问题呢？」

{	NwC("cg/fw/nw女の子.png");}
//【ｅｔｃ／女の子】
<voice name="ｅｔｃ／女の子" class="その他女声" src="voice/ma01/0130280e122">
「哇，谢谢你雄飞哥哥。
　那么，有什么事？　大叔。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130290a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

//◆住宅街

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
　应该已经逛过好几家店铺了吧。

　凑斗先生停了下来。
　我们也止住脚步。

　稍微踌躇一阵之后，凑斗先生转过身朝向我们走来。
　在我们面前半步停下。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	StL(1020, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStR(300,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130300a00">
「我有话要说。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130310b56">
「其实我也有。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130320a00">
「那么，请你先说。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130330b56">
「谢谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
　深深行了一礼，吸气。
　然后说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_快活.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130340b56">
「凑斗先生，不太适合做警官呢。」


//◆ガーン
{	OnSE("se擬音_コミカル_ガーン01",1000);
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130350a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
　啊。消沉了。
　似乎他并没有自觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130360a00">
「……对你提出的意见我无言以对。
　只是痛感自己的无能。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130370b43">
「不，好像也不是才能的问题。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0371]
　赞成忠保。

　非本地人的凑斗先生在搜查上也有很多困难，
如果能在这点上帮点忙……虽然我这么想。
　但不是这个问题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_呆れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130380b33">
「虽然这么说有点自恋我也不喜欢，但
要是没有我们的话，你基本上没办法从
任何人那里问到什么吧……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130390a00">
「不。不妨说正如你所言。
　基于此，我想请教各位。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130400b56">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0401]
　稍稍端正了姿势。
　虽然在路中央。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130410a00">
「新田雄飞。
　来栖野小夏。
　稻城忠保。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
　在昨天头被打之后只听过一次的
名字，凑斗先生居然完全记得。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130420a00">
「你们几位，没有中止搜索饰马律同学的
打算吗？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130430b56">
「没有。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
　果断回答。
　在这点上毫无动摇。

　但是，只有如此无法说服别人。
　我在脑中寻找着应该继续下去的理由。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130440b56">
「我明白，凑斗先生说得很对。
　但是，即使如此，我们也……不认为寻找律
这件事有错。
那是我们应该去做的事吧……」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130450b56">
「……抱歉。我不善言辞。
　但是为了找到律，我想做点什么，
也觉得应该去做。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0451]
　啊啊。我真是个不会说话的家伙啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130460b43">
「我也是相同意见。
　虽然他刚才说的话到底能否算得上
得体还有待商榷，
不过这些姑且不提。」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130470b33">
「虽然这个说明让人从根本上怀疑他的
知性和教养的存在，但从情感角度出发
我也同意。」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130480b56">
「你们两个……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0481]
　真是两个过分的家伙。

　凑斗先生安静地听着。
　终于，微微开口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130490a00">
「操纵傀儡易，阻止义士难。
　真是无可奈何。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130500b56">
「啥？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130510a00">
「我理解了。
　若与我同行，今后还请各位待在我
身边。刚才的距离无论出于安全考虑
还是帮忙考虑都称不上合适的距离。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130520b56">
「……？　…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0521]
　凑斗先生的措辞，多少让我有些消化不良。
　总之，不管怎样。

　<RUBY text="ＯＫ">许可</RUBY>了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130530b56">
「太好啦！」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130540b33">
「啊啊，别激动别激动。
　真是难为情。」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130550b43">
「哈哈哈，这不是很好吗小夏。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
　不必她说我也知道，自己兴高采烈到了
有些难为情的程度。
　
　好高兴。

　能和这个看似危险却值得信赖的凑斗景明
一起寻找律，让我好高兴。
　虽然事态还没有任何进展，我却觉得律已
经近在眼前了。

　忠保和小夏也是类似心境吧。
　所以，他们嘴里一边说着话一边笑着。

　就是这么觉得。
　我再一次兴奋起来。二人则露出了一副
拿我没办法的表情。

　……而凑斗先生是绝对不会展露笑颜的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――




	SetVolume("@mbgm*", 2000, 0, null);

	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg017_竹林_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(2000);

	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

//◆竹林

	SoundPlay("@mbgm30",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0555]
　接下来首先要去的，就是竹林。

　虽然附近的住民人人皆知，但这个什么都没有的
单纯的竹林子，从外面来的人并非就很容易找到。
　我们抢先一步。

　抵达之后，田中爷爷以只能用雷达探测到的速度登场。
不过似乎连他也会姑且选择一下吵架对象。凑斗先生一
亮明身份，他就算不乐意也只能同意我们进入了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0,@0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130560a00">
「真是位精神矍铄的老人。我很佩服。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130570b56">
「别看他那样，他最近也多少变温顺了。
　不过雷鸣的威力还是一如既往呐……耳朵
还在嗡嗡作响。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130580b33">
「呜哇……我也好久没领略他的风采了，
连腰都在抖。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130590a00">
「非常了不起的肺活量。
　那位老人想必能够永葆长寿。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130600b43">
「一想到他周围的人可能因此减寿
我就实在祝福不起来啊。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130610a00">
「涌起了些许乡愁。
　我的母亲也是一位感情激烈时会发出那种
怒吼的人。酒喝光时大吵大闹，肚子饿时就
哭泣。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130620a00">
「每当听到这些，我总能平静下来，
常常就那样进入梦乡。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130630b33">
「……真是相当有个性的团圆景象……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130640a00">
「曾有一次，我身负了濒死的重伤，
还是靠那声音所救。
　那是，遭遇侵入家里的武装盗贼，
幼年的我陷入绝境的时候。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130650b43">
「原来如此。那时凭借着母亲的一声怒吼
驱赶了强盗才得救的吧。」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130660b56">
「那可真厉害——」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130670a00">
「是。那时的我，不知何时鼓膜被破坏，三半规管
损伤，被碎玻璃刺中背部造成大量出血，似乎已经
意识模糊。但只伤到这种程度就能获救全凭母亲的
功劳。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130680b43">
「真是一段佳话。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130690a00">
「谢谢。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130700b33">
「那个……」

{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130710b56">
「那个……也就是说……身负濒死的重伤
就是因为母亲……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg017_竹林_01.jpg");

	Wait(1);

	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0711]
　倾听着风吹动河川的潺潺水声，我们步行着。
　竹林中的视野，实在难说很好。

　爷爷是不是总在抵御外敌而从不修剪
竹林啊。肆意伸展的竹子太过妨碍视野。
　似乎快变成用脚调查了。

　正这么想着，突然。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130720b43">
「？　咦。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130730b56">
「怎么了？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130740b43">
「那个，竹林深处那边。
　是不是有点凌乱？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130750a00">
「……确实。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0751]
　看着忠保所指的方向，凑斗也表示同意。
　我这一般人的视力水平倒不太清楚……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 15000, "#000000");
	DrawTransition("暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(600);

	DrawDelete("暗転", 1000, 1000, "blind_01_00_1", true);


//◆転換

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0752]
　走近一看，忠保的指出果然正确。
　有一堆竹子被集中砍掉了。

　相扑场地大小的空地被腾了出来。
　周围散乱了一地被砍掉的竹子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130760b56">
「之前爷爷说过的就是这个吧？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130770b33">
「嗯。竹林被破坏了的事？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130780b43">
「这么一说的确听说过这回事呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0781]
　不过，要说这是我们干的也太武断太牵强了吧。
　就算外行也看得出，竹子的切断面非常完美，
不可能是业余木工程度的工具能完成的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130790b56">
「是柴刀吧？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130800b43">
「也可能是斧子。
　哪里的小混混在消遣心情吧？」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130810b33">
「会有吗？　那种闲人。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130820b43">
「有哦。　可不能小看闲暇呢，小夏。
　古人说，同贫困和愤怒一样，闲暇和无聊
也充分有着成为犯罪温床的资格。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130830a00">
「不对。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130840b43">
「诶？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
　蹲在一根竹子旁定神看着的凑斗先生，
突然呢喃道。
　说话时，他的眼神也未离开竹子断面。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130850a00">
「……刀刃的切入处<RUBY text="····">过于锐利</RUBY>。切口又
<RUBY text="····">过于平坦</RUBY>。
　武器无疑是刀……或者利刃一类。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130860a00">
「……砍入地面的痕迹吗。
　也就是，此人在<RUBY text="······">用尽全力切开</RUBY>。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130870a00">
「但又为什么，要切出如此漂亮的断面……？」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130880a00">
「单靠刀刃的锋利并不够……
　此人应是<RUBY text="······">超凡脱俗之人</RUBY>。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130890a00">
「是武者。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0891]
　<RUBY text="··">武者</RUBY>。
　凑斗先生就这样，简短而肯定地说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130900b56">
「那……那么！」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130910b33">
「就像大叔说的那样……
　那天夜里，这里有六波罗的武者。」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130920b43">
「……就是，这么回事吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0921]
　律在这竹林里消失的那天晚上。
　武者曾在这里。

　<RUBY text="····">也就是说</RUBY>，<RUBY text="············">这里就是律被袭击的现场吗</RUBY>!?

　我慌忙环视周围。
　
　有——有什么吗！
　可以成为线索的什么东西！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0130930b56">
「足迹之类的……！」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130940b43">
「……不行吧。
　应该已经被前天早晨的降雨洗掉了。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0130950b33">
「还有其他东西吧!?　随身携带的物品之类。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0130960b43">
「没发现呢……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130970a00">
「如果是六波罗的武者，很难理解这技术的
不纯熟。只是在玩耍吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0971]
　大概从最初开始就放弃了那样的努力，凑斗先生
依旧一动不动。
　漠视着慌张的我们而继续自问自答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130980a00">
「但即使如此……又是从哪里出现的？
　若用骑航，无论袭击还是逃脱都可在瞬间完成。
  但是很醒目。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0130990a00">
「这附近有没有爆破音或者轰鸣声的情报？」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131000b56">
「……咦？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1001]
　迟了几秒才反应过来。
　刚才的提问是对我们说的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131010b56">
「很大的声音吗？　不，那样的情况。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131020b43">
「没听说过呢。
　如果有那种事，我想田中爷爷
一定会大吵大闹吧。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0131030b33">
「那个雷帝，他对别人制造的噪音
可是很厌恶呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1031]
　因为这个原因，有传言说附近的住民迫于情况
不能随意生孩子。
　还有婴儿出声后吵闹的那段时间里就寄送到亲戚家
喂养之类的。不知是真是假。

　凑斗先生没有做出反应。
　但似乎在听着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131040a00">
「没有喷射飞行推进器。
　果然并没有飞吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1041]
　飞行推进器？

　我不明白意思正想要追问，就被忠保阻止了。
　是让我不要打扰他吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131050a00">
「那么该武者是如何出现又如何离去的？」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131060a00">
「出现时……
　不可能一开始就装甲而来。
　背着铠柜侵入也太过醒目。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131070a00">
「让善于隐形的剑胄单独潜入，自己则
另行侵入。在内部汇合进行装甲。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131080a00">
「以及犯罪。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131090a00">
「……接下来又怎么做。
　剑胄让它和来时一样单独脱逃便可。
然而现场莫说尸体连血迹都没有。从
这点来看，被害者遭到了绑架无疑。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131100a00">
「带着被害者的武者，又是如何脱离现场的？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1111]
　沉默大概持续了两、三分钟。
　缓缓地，凑斗先生站了起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131120a00">
「……似乎情报仍然不足。
　我想去附近收集情报。特别是目击到
武者的人，我想和那位见面好好谈谈。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0131130b33">
「诶？　啊……好的。
　那就必须去小酒馆街。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0131140a00">
「有劳带路。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1141]
　被如此催促，小夏在前面迈开脚步。
　在她身后是凑斗先生，
然后我和忠保跟了上去。

　……实际上，我对事情的进展并不太清楚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131150b43">
（雄飞）

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131160b56">
（嗯？）

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131170b43">
（哎呀。那个凑斗先生，可能比我们想象的还要
厉害呢）

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131180b56">
（是吗？）

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131190b43">
（他对武者和剑胄的相关知识了解得真深啊。
　不过我能理解的，也只有武者如果从空中
飞来，爆破音不可能不引起周围住民注意的
这种程度而已）

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131200b56">
（啊，这样）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1201]
　想起来了。
　所谓加速推进器，好像是装在剑胄背部为了
飞行所用的道具。

　工作时会有轰鸣声并且会喷出烟雾。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131210b56">
（那，武者要怎么做？）

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131220b43">
（关于这点他已经有了某种程度的推测，
但仍然有疑问……似乎是这样。
　他是想就疑问再展开调查吧）

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131230b56">
（直接问他疑问是什么会不会不太好啊）

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0131240b43">
（别问了。他现在看起来也正在思考，会
打扰他的。
　只是可以断定的是，这个人看来真的有
挖出真相的能力……！）

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0131250b56">
（这样啊！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1251]
　自己本身见多识广，对他人评价也就相应
非常严苛的忠保认可了他。
　份量不同一般。

　看来盯住这个人并强行和他同行果然
是正确的。
　如果只有我们自己在搜查，如今这时候
肯定也只能空虚地焦躁着。

　……如果是武者绑架了律，和六波罗的
对决便无可避免。
　但即使如此，如果是这个人的话。
他一定会想尽一切办法救出律吧？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	CreateColorSP("暗転", 1500, "#000000");
	DrawTransition("暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(2000);

	ClearFadeAll(0, true);


}

..//ジャンプ指定
//次ファイル　"ma01_014.nss"

