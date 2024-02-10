//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_029vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md01_029vs.nss","VernierAction",true);
	Conquest("nss/md01_029vs.nss","VernierSet",true);
	Conquest("nss/md01_029vs.nss","VernierAction2",true);
	Conquest("nss/md01_029vs.nss","VernierSet2",true);
	

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
	#bg096_八幡宮地下岩窟_01a=true;
	#ev215_髭切に翻弄される村正=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_030.nss";

}

scene md01_029vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_028.nss"

//◆村正ＶＳ鬚切
//◆互いに一太刀。がきーん。
//◆飛び離れる
	PrintBG("上背景", 30000);

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");
	CreateSE("SE01b","se戦闘_衝撃_衝突01");

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(400);
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm08",0,1000,true);

	CreateColorSP("絵色黒下", 10, "#000000");
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");

	CreateTextureSP("絵演剣壱", 1000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵演剣弐", 1010, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Fade("絵演剣弐", 0, 500, null, true);

	CreateTextureSPover("絵効果波動", 4000, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSPadd("絵効果", 4000, Center, Middle, "cg/ef/ef044_火花c.png");

	Delete("上背景");

	Fade("絵色白", 300, 1000, Axl2, false);
	Zoom("絵効果波動", 200, 3000, 3000, null, false);
	Zoom("絵効果", 200, 1500, 1500, Dxl3, false);
	Rotate("絵効果", 200, @0, @0, @3600, null,false);

	Wait(170);

	Fade("絵効果", 300, 0, null, false);
	Fade("絵効果波動", 300, 0, null, false);

	WaitAction("絵色白", null);

	Delete("絵効果*");
	Delete("絵演剣*");

	CreateCamera("Ｃ", 0, 0, 750);
	SetAlias("Ｃ","Ｃ");

	MoveCamera("Ｃ", 0, @500, @0, @0, AxlDxl, false);

	CreateTextureSP("Ｃ/絵演背景", 0, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	SetShade("Ｃ/絵演背景", MEDIUM);
	Zoom("Ｃ/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureSP("Ｃ/絵演立絵髭", 250, Center, InBottom, "cg/st/3d髭切_立ち_抜刀.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	CreateSE("SE02","se人体_動作_跳躍02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MoveCamera("Ｃ", 600, @-750, @0, @150, AxlDxl, false);

	FadeDelete("絵色白", 400, true);
	WaitAction("Ｃ", null);

	SetFwC("cg/fw/fw髭切_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0010a05">
「唔——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	MoveCamera("Ｃ", 0, @-500, @0, @0, AxlDxl, false);

	CreateTextureSP("Ｃ/絵演背景", 0, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	SetShade("Ｃ/絵演背景", MEDIUM);
	Zoom("Ｃ/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureSP("Ｃ/絵演立絵髭", 250, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	CreateSE("SE03","se人体_動作_跳躍01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MoveCamera("Ｃ", 600, @750, @0, @-250, AxlDxl, false);

	FadeDelete("絵板写", 400, true);
	WaitAction("Ｃ", null);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0000]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0020a00">
「……唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　两人初次挥刀的激烈交锋。
　刀身交合，在空中迸出火花，
碰撞的冲击向二人的臂腕袭来。

　激烈。
　……但基本势均力敌。

　这边在喉咙深处低吟的同时，大将领也漏出可憎的鼻息。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateMask("Ｍ", 6000, 1024, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("Ｍ","Ｍ");

	CreateTextureSP("Ｍ/絵演背景", 6100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	Zoom("Ｍ/絵演背景", 0, 2000, 2000, null, true);
	SetShade("Ｍ/絵演背景", MEDIUM);

	CreateTextureSP("Ｍ/絵演立絵髭", 6100, -695, -923, "cg/st/resize/3d髭切_立ち_抜刀_ll.png");
	Request("Ｍ/絵演立絵髭", Smoothing);
	Rotate("Ｍ/絵演立絵髭", 0, @0, @180, @0, null,true);

	Move("Ｍ", 300, 0, @0, Dxl2, false);

	SetFwC("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0030a05">
「看上去还挺耐打的嘛……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0040a00">
「能得到殿下的褒奖，光荣至极。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0050a05">
「黄毛小子。
虽不知汝出生何处，不过见汝身手不凡，
相应地也应该培养一下眼力吧。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0060a05">
「如此一来，就不会像舞殿宫那样的家犬，
葬送一生了。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0070a00">
「可惜，如果真培养出眼力的话，我想
就不应留在你身边选择侍君之路了。」

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0080a05">
「废话少说！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);

	Delete("Ｃ*");
	Delete("Ｍ*");

	CreateCamera("Ｃ", 0, 200, 2000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵効果背景", 0, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Rotate("Ｃ/絵効果背景", 0, @0, @0, @-25, null,true);
	Zoom("Ｃ/絵効果背景", 0, 3000, 3000, null, true);
	SetBlur("Ｃ/絵効果背景", true, 3, 500, 60, false);

	CreateTextureSP("Ｃ/絵演立絵髭", 500, Center, InBottom, "cg/st/3d髭切_立ち_戦闘2.png");
	Request("Ｃ/絵演立絵髭", Smoothing);
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 500, 500, null, true);
	Move("Ｃ/絵演立絵髭", 0, @200, @0, null, true);

	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("Ｃ/絵演立絵髭", 600, @-200, @0, Axl2, false);
	MoveCamera("Ｃ", 600, @-130, @-100, @-1000, AxlDxl, false);

	DrawDelete("上背景", 150, 1000, "slide_08_00_0", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　敌骑怒声嘶吼，厮杀而来。
　那招式——抄刀乃属六波罗新阴流，
然而代入自我风格的招数
却随处可见<RUBY text="··">破绽</RUBY>。

　这将帅之名即是他久经沙场的证明吧。
　年纪应当逼近花甲，动作却不见一丝迟钝。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 7000, Center, InBottom, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");
	Move("絵背景", 2000, @0, 0, DxlAuto, false);
	Fade("絵背景", 2000, 900, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　要迎战敌骑的尖锐攻击，能仰仗的唯有刀法而已。
　近乎半球状的地下空间，虽有能容纳一所学校的
宽度和高度，但对武者来说，
作为施展飞行术的竞技场地，完全不够。

　若不期望发生撞击墙面的丑态，
唯有站稳地面一战。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景", 600, false);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0090a05">
「呼……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鬚切上段
//◆変化
	CreateSE("SE01a","se人体_動作_跳躍02");
	CreateSE("SE01b","se戦闘_動作_刀構え02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("Ｃ/絵演立絵髭", 300, 0, null, false);
	Move("Ｃ/絵演立絵髭", 300, @60, @0, Axl2, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0100a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆刺突
//◆村正、避け
	SL_centerin2(19010,@0, @0,1500);
	CreateColorSP("絵色黒", 19000, "#000000");
	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_centerinfade2(10);

	Delete("Ｃ/");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	CreateTextureSP("絵演立絵村正", 1100, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Request("絵演立絵村正", Smoothing);
	SetVertex("絵演立絵村正", center, bottom);
	Zoom("絵演立絵村正", 0, 900, 900, null, true);

	CreateSE("SE02a","se人体_動作_跳躍01");
	MusicStart("SE02a",0,1000,0,1500,null,false);
	Zoom("絵演立絵村正", 300, 1000, 1000, Dxl3, false);
	Move("絵演立絵村正", 300, @250, @0, Dxl3, false);
	Delete("絵色黒");

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0110a05">
「哧——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　居然用曲技！
　假装从上方往下砍，
却一下将收回身边的太刀笔直刺出。

　如果自己反应稍微迟一点，
便被割破喉咙了吧。
　对手果然驾轻就熟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0120a00">
（……不过）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//あきゅん「演出：なんか前のスクリプトから回想っぽく挟む」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　用良好的体捌之术（一种身体
移动术）及时回避与牵制。
刹那间，如同在赞叹他人之事般感到佩服。
　若是从前的自己，大概无法回避。

　今天的动作异常灵活。

　装甲与肌肤相合。
　此刻甚至没有些微的违和感，
真正和肉体同调的感觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateMask("Ｍ", 200, 0, 0, "cg/data/slide_07_00_0.png", false);
	CreateTextureEX("Ｍ/絵演", 4000, Center, Middle, "cg/ev/ev213_景明と村正の結縁_b.jpg");
	Zoom("Ｍ/絵演", 0, 1200, 1200, null, true);
	Request("Ｍ/絵演", Smoothing);

	Move("Ｍ/絵演", 0, @0, @-40, null, false);
	Move("Ｍ/絵演", 3000, @0, @80, DxlAuto, false);
	Fade("Ｍ/絵演", 1000, 850, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
　这就是正式佩刀后的结果吗？

　这才是真正意义上成为武者吗！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("Ｍ/絵演", 1000, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0130a01">
《如预想般，敌方的剑胄的确是很了不起。
　但，没有超乎想象。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0140a01">
《若是<RUBY text="我们">村正</RUBY>的话，能赢！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0150a00">
「肯定！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("Ｍ");

//◆ざっ。
//◆村正と鬚切
//◆互いに一閃
	CreatePlainSP("絵板写", 10000);
	CreateColorSP("絵色黒", 5000, "#000000");

	Delete("絵演立絵*");
	Delete("Ｃ");

	CreateTextureSP("絵背景", 100, InLeft, -480, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");
	CreateTextureEX("絵演立絵", 1010, Center, InBottom, "cg/st/3d髭切_立ち_戦闘.png");
	Move("絵演立絵", 0, @-310, @0, null, true);

	CreateSE("SE01","se人体_動作_後ずさり01");

	DrawDelete("絵板写", 150, 100, "slide_01_03_1", true);
	MusicStart("SE01",0,1000,0,750,null,false);
	Fade("絵演立絵", 200, 1000, null, false);
	Move("絵演立絵", 250, @60, @0, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	WaitAction("@絵演立絵", null);

	SetFwC("cg/fw/fw護氏_大笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120a]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0160a05">
「区区小将!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);

	CreateMask("絵覆", 6000, 0, 0, "cg/mask/ciスラッシュ_02_00.png", false);
	SetAlias("絵覆","絵覆");
	CreateTextureSP("絵覆/絵演背景", 6000, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	CreateTextureSP("絵覆/絵演立絵", 6100, 150, -80, "cg/st/3d村正標準_立ち_戦闘.png");
	Request("絵覆/絵演立絵", Smoothing);
	Zoom("絵覆/絵演立絵", 0, 1500, 1500, null, true);
	SetShade("絵覆/絵演背景", MEDIUM);

	DrawDelete("絵板写", 150, 100, "zoom_01_00_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120b]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0170a00">
「失敬了!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆打ち合う。がきーん
	PrintGO("上背景", 30000);

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");
	CreateSE("SE01b","se戦闘_衝撃_衝突01");

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(400);
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒下", 10, "#000000");
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");

	CreateTextureSP("絵演剣壱", 1000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵演剣弐", 1010, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Fade("絵演剣弐", 0, 500, null, true);

	CreateTextureSPover("絵効果波動", 4000, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSPadd("絵効果", 4000, Center, Middle, "cg/ef/ef044_火花c.png");

	Delete("上背景");

	Fade("絵色白", 300, 1000, Axl2, false);
	Zoom("絵効果波動", 200, 3000, 3000, null, false);
	Zoom("絵効果", 200, 1500, 1500, Dxl3, false);
	Rotate("絵効果", 200, @0, @0, @3600, null,false);

	Wait(170);

	Fade("絵効果", 300, 0, null, false);
	Fade("絵効果波動", 300, 0, null, false);

	WaitAction("絵色白", null);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

	FadeDelete("絵色白", 400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　两剑的轨道交错，剑锋与剑锋互相碰撞。
　
　但——这都在我预料之中！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	Delete("絵効果*");
	Delete("絵演剣*");
	FadeDelete("絵板写", 600, false);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0180a05">
「唔!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateTextureSP("絵演", 4000, 0, InBottom, "cg/ev/resize/ev905_村正電磁撃刀_al.jpg");
	Move("絵演", 300, @0, -100, null, false);
	Fade("絵演", 300, 1000, null, false);

	Wait(100);

	Move("絵演", 10000, @0, -100, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　被弹开的太刀就这样，在头顶上绕圈回旋。
　……以对称的弧线再度袭来！

　吉野御流合战礼法，木灵打。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆で一閃
//◆がちーん
//◆食らった鬚切
	CreateSE("SE05a","se戦闘_攻撃_鎧_剣戟01");
	MusicStart("SE05a",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演上", 13100, -130, -170, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 13000, -130, -170, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(200);

	CreateSE("SE05b","se戦闘_破壊_爆発04");
	CreateSE("SE05c","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE05b",0,1000,0,1000,null,false);
	MusicStart("SE05c",0,1000,0,800,null,false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");

	Delete("絵演*");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

//あきゅん「要望：3d髭切_立ち_陰義b：ポーズ同じで陰義闘気なし」
	CreateTextureSP("絵演立絵髭", 1010, Center, InBottom, "cg/st/3d髭切_立ち_陰義.png");
	Request("絵演立絵髭", Smoothing);
	SetVertex("絵演立絵髭", center, bottom);
	Zoom("絵演立絵髭", 0, 1000, 1000, null, true);

	Move("絵演立絵髭", 0, @-100, @0, null, true);

	Zoom("絵演立絵髭", 700, 900, 900, Dxl3, false);
	Shake("絵演立絵髭", 1000, 4, 0, 0, 0, 1000, Dxl3, false);
	Move("絵演立絵髭", 700, @-150, @0, Dxl3, false);


	FadeDelete("絵色白", 400, true);

	SetFwC("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0190a05">
「汝……混蛋!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　肩膀被刻上深深的刀痕，
六波罗元帅一声短暂的怒吼。

　我本是瞄准颈部去攻击……
　迅速转身，用盔甲最厚部分来受我一刀的他。
确实了不起。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0200a01">
《那肩膀，再加一刀便能击破。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0210a00">
「……他不会让我们得逞的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演立絵村正", 750, Center, InBottom, "cg/st/3d村正標準_立ち_戦闘.png");
	SetVertex("Ｃ/絵演立絵村正", center, bottom);
	Zoom("Ｃ/絵演立絵村正", 0, 500, 500, null, true);
	Move("Ｃ/絵演立絵村正", 0, @300, @0, null, true);

	CreateTextureSP("Ｃ/絵背景", 500, Center, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");

	Request("Ｃ/*", Smoothing);

	MoveCamera("Ｃ", 2000, @200, @100, 650, AxlDxl, false);

	FadeDelete("絵板写", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　重新调整握刀姿势，低吟着。
　有警惕自己不能疏忽之意。

　敌骑双眼满是愤怒，却保持着稍远的距离。
　战斗方法从猛烈进攻转换成谨慎稳健的样子。

　已来不及借势突击。
　自己如果不重新调整对应方法，
就可能招致意想不到的失败。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆対峙
	CreatePlainSP("絵板写", 5000);

	CreateCamera("Ｃ", 0, 0, 850);
	SetAlias("Ｃ","Ｃ");

	//MoveCamera("Ｃ", 4000, @-50, @10, @300, AxlDxl, false);

	CreateTextureSP("Ｃ/絵演背景", 150, Center, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");
	Move("Ｃ/絵演背景", 0, @200, @-100, null, true);


	CreateTextureSP("Ｃ/絵演立絵髭", 250, Center, InBottom, "cg/st/3d髭切_立ち_戦闘3.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	Delete("絵演*");
	FadeDelete("絵板写", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　该如何出击。

　看来，对方是在等待己方先攻的架势
——但思及他的性情，
大概也不会单单这样等下去。
　等待的一方，无疑在寻找攻击方法。

　而我，则变成不能光凭踏实稳妥战术的情况。
　持久战非常危险。

　将领一直未回，地面上待机的幕府士兵
也会觉察到异常事态的发生。
　会送入一队武者吧。

　如此一来，我的命数也尽了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0220a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　胸口的震颤透过呼吸传出。
　焦躁到极致……

　对手是干练的武者。
　一次过失足以致命。

　暂且先试一下诱导之术吧。
　若能上钩倒好，倘若无法迷惑对方——

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆合当理がおーん。
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("Ｃ/絵色合", 249, "#FFFFFF");

	Fade("Ｃ/絵色合", 0, 400, null, true);
	DrawTransition("Ｃ/絵色合", 100, 0, 200, 100, null, "cg/data/circle_13_00_0.png", true);

	VernierAction();
	Shake("Ｃ/絵演立絵髭", 2160000, 0, 2, 0, 0, 1000, null, false);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1500,null,true);
	MusicStart("SEL01b",2000,750,0,1800,null,true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0230a01">
《诶!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　心脏漏了一拍。
　毫无预警的轰鸣。

　飞行推进器。
　敌骑——启动了飞行推进器。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0240a00">
（竟然）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……打算飞行吗!?
　在如此局限的空间里！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0250a05">
「余记起来了……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0260a00">
「……？」

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0270a05">
「战场的样子。
　让人喘不过气的尸臭。」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0280a05">
「让人恶心的————那股味道。」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆飛翔
	SetVolume("SE*", 150, 0, null);
	CreateSE("SE00","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	MusicStart("SE01",0,1000,0,500,null,false);
	SetFrequency("SE01", 3000, 1500, Axl2);

	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	Wait(12);

	Delete("Ｃ/絵演立絵髭*");
	Delete("Ｃ/絵色*");
	Delete("プロセス*");

	MoveCamera("Ｃ", 400, @0, @-200, 600, AxlDxl, false);

	Fade("絵色白", 400, 0, null, false);
	DrawTransition("絵色白", 200, 1000, 0, 100, null, "cg/data/slide_06_00_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　——他飞了起来。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0290a00">
（真是胡来）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　是败给了焦躁么。
　这怎么想都是自杀行为……

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆一閃
//◆がきーん
	CreateColorSP("絵色黒", 19000, "#000000");

	Wait(10);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_rightdown2(19000,@30, @0,1500);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdownfade2(10);

	CreateSE("SE02a","se戦闘_衝撃_衝突01");
	CreateSE("SE02b","se戦闘_攻撃_剣戟弾く02");

	CreateColorSP("絵色白", 19100, "#FFFFFF");

	Delete("絵色黒");
	Delete("Ｃ");

	CreateCamera("Ｃ", -700, 0, 1150);
	SetAlias("Ｃ","Ｃ");

	MoveCamera("Ｃ", 300, @0, @0, 1200, AxlDxl, false);

	CreateTextureSP("Ｃ/絵背景", 0, Center, -450, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");
	Move("Ｃ/絵背景", 0, @-200, @0, null, true);

	CreateSE("SE03","se戦闘_動作_空突進02");
	CreateTextureSP("Ｃ/絵演立絵髭", 510, Center, InBottom, "cg/st/3d髭切_騎航_戦闘.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 500, 500, null, true);
	SetBlur("Ｃ/絵演立絵髭", true, 2, 500, 60, true);
	Move("Ｃ/絵演立絵髭", 0, @-450, @60, null, false);

	CreateTextureSP("Ｃ/絵演立絵", 500, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("Ｃ/絵演立絵", 0, @-650, @-130, null, true);
	SetVertex("Ｃ/絵演立絵", center, bottom);
	Zoom("Ｃ/絵演立絵", 0, 500, 500, null, true);

	Request("Ｃ/*", Smoothing);

	CreateTextureSPadd("Ｃ/絵効果", 505, Center, Middle, "cg/ef/ef044_火花c.png");
	Move("Ｃ/絵効果", 0, @-660, @0, null, true);
	Zoom("Ｃ/絵効果", 0, 300, 300, null, true);

	Shake("Ｃ/絵演立絵", 1000, 2, 0, 0, 0, 1000, null, false);

	$髭切移動距離=ImageHorizon("Ｃ/絵演立絵髭")+512;
	Move("Ｃ/絵演立絵髭", 80000, @$髭切移動距離, @0, null, false);
	MoveCamera("Ｃ", 160000, 150, -120, 550, Dxl2, false);
	Move("Ｃ/絵背景", 160000, -100, @0, null, false);

	Rotate("Ｃ/絵効果", 300, @0, @0, @3600, Dxl3,false);
	Zoom("Ｃ/絵効果", 300, 600, 600, Dxl3, false);
	Fade("Ｃ/絵効果", 300, 0, null, false);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);

	FadeDelete("絵色白", 150, true);

	Wait(1000);

	MusicStart("SE03",0,1000,0,1300,null,false);
	Move("Ｃ/絵背景", 200, -340, @0, Dxl2, false);
	Move("Ｃ/絵演立絵髭", 200, @$髭切移動距離, @20, null, false);
	Move("Ｃ/絵効果", 200, @460, @0, Dxl2, false);
	Move("Ｃ/絵演立絵", 200, @460, @0, Dxl2, false);
	MoveCamera("Ｃ", 200, 100, -120, 550, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310a]
　敌骑的身影刚消失，
几乎同一瞬间袭来一刀，勉强挡住。
　准确瞄准脖子的刀法，让人毛骨悚然。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("板写", 10000);

	Delete("絵*");
	Delete("Ｃ");
	Delete("Ｃ*");

	CreateColorSPadd("絵色バーニア１", 2010, "#FFFFFF");
	CreateColorSPadd("絵色バーニア２", 2000, "#3366CC");

	CreateColorSP("絵色黒", 100, "#000000");

	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘2.png");
	Zoom("絵演立絵髭", 0, 3000, 3000, null, true);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	SetBlur("絵演背景", true, 3, 500, 60, false);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果線上", 2010, Center, InTop, 512, 288, "Rain");
	SetAlias("絵効果線上","絵効果線上");
	SetVertex("絵効果線上", center, top);
	Rotate("絵効果線上", 0, @80, @0, @0, null,true);
	Zoom("絵効果線上", 0, 4000, 4000, null, true);
	DrawTransition("絵効果線上", 0, 0, 400, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateEffect("絵効果線下", 2000, Center, InBottom, 512, 288, "Rain");
	SetAlias("絵効果線下","絵効果線下");
	SetVertex("絵効果線下", center, bottom);
	Rotate("絵効果線下", 0, @-80, @0, @0, null,true);
	Zoom("絵効果線下", 0, 4000, 4000, null, true);
	DrawTransition("絵効果線下", 0, 0, 400, 100, null, "cg/data/slide_02_01_1.png", true);

	Shake("絵演立絵髭", 2160000, 1, 2, 0, 0, 1000, null, false);

	SetVolume("@mbgm*", 2000, 0, null);

	CreateSE("SE04","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("絵演背景", 400, @0, 576, AxlDxl, false);
	Zoom("絵演立絵髭", 400, 0, 0, Dxl1, false);
	DrawDelete("絵色バーニア１", 200, 1000, "circle_01_00_0", false);
	DrawDelete("絵色バーニア２", 250, 1000, "circle_03_00_0", false);

	Fade("絵効果線*", 1600, 0, null, false);

	FadeDelete("板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310b]
　但这样一来——
　敌骑便会撞入墙壁，简直是自掘坟墓。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitFade("絵効果線*", null);

//◆ＢＧＭ
//◆鬚切、体転
//◆壁を蹴って再び襲来
//◆※騎航（側面図）を半回転スクロールし、騎突（正
//◆面図）へ繋ぐ？　他に良案あればそちらで。
	CreateWindow("絵窓", 19000, 0, 72, 1024, 432, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#993300");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateSE("SE06","se戦闘_動作_空突進02");

	CreateTextureSP("絵窓/絵演立絵髭", 19100, OutLeft, Middle, "cg/st/3d髭切_騎航_戦闘.png");
	Request("絵窓/絵演立絵髭", Smoothing);
	Zoom("絵窓/絵演立絵髭", 0, 750, 750, null, true);
	SetBlur("絵窓/絵演立絵髭", true, 3, 500, 50, true);
	Move("絵窓/絵演立絵髭", 0, @0, @100, null, true);

//あきゅん「演出：髭切本番素材来たら胸で回転させるために中心をずらす」
	SetVertex("絵窓/絵演立絵髭", 600, 650);

	Move("絵窓/絵演立絵髭", 400, 2000, -400, null, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, false);

	MusicStart("SE06",0,1000,0,1500,null,false);
	Rotate("絵窓/絵演立絵髭", 300, @0, @0, @120, Dxl2,false);

	WaitZoom("絵窓", null);

	Wait(500);

	CreateSE("SE06a","se戦闘_破壊_建物02");
	MusicStart("SE06a",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 10000);
	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘.png");
	Request("絵演立絵髭", Smoothing);
	Rotate("絵演立絵髭", 0, @0, @0, @180, null,true);
	Zoom("絵演立絵髭", 0, 0, 0, null, true);

	Delete("絵窓");

	Fade("絵効果線*", 0, 1000, null, false);
	Zoom("絵演立絵髭", 6000, 100, 100, DxlAuto, false);

	CreateSE("SE07","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE07",0,500,0,1000,null,false);

	FadeDelete("絵板写", 2000, false);

	SoundPlay("@mbgm10",0,1000,true);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0300a00">
「什么!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	Zoom("絵演立絵髭", 30000, 150, 150, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　难以置信的场景呈现眼前。

　高速撞向墙壁的敌骑，刹那间折回。
　还利用地面效果，将力量绝妙地抑制……

　然后双脚蹬踏墙壁。
　再次朝我这边袭击而来!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0310a01">
《开玩笑的吧!?》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_leftup2(10010,@0, @0,1500);

	CreateColorEXadd("絵色バーニア１", 910, "#FFFFFF");
	CreateColorEXadd("絵色バーニア２", 900, "#3366CC");

//◆一閃
	CreateSE("SE01a","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Fade("絵色バーニア*", 0, 1000, null, false);
	DrawTransition("絵色バーニア１", 0, 0, 30, 200, null, "cg/data/circle_01_00_0.png", true);
	DrawTransition("絵色バーニア２", 0, 0, 60, 100, null, "cg/data/circle_03_00_0.png", true);

	Wait(16);

	Fade("絵色バーニア*", 300, 0, null, false);
	DrawTransition("絵色バーニア１", 300, 30, 0, 400, null, "cg/data/circle_01_00_0.png", false);
	DrawTransition("絵色バーニア２", 300, 60, 0, 400, null, "cg/data/circle_03_00_0.png", false);

	Zoom("絵演立絵髭", 300, 2000, 2000, Axl2, false);

	Wait(270);

	Fade("絵色黒", 100, 1000, null, true);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftupfade2(10);

	Wait(12);

//◆軽く食らった
	PrintGO("上背景", 10000);

	Wait(12);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE03b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　完全出乎意料，要避开是不可能的。
　刀尖掠过胸甲。

　迫在眉睫之时后仰上半身，
充其量仅是留下浅伤。
　完全没有反击的余暇。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆敵騎また
//◆軽くずがーん
	PrintGO("上背景", 10000);

	Wait(12);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE03b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　……虽希望这个只是梦，但事实并不是。
　敌方正在实现极度异常
而不合常理的骑体运动！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：髭切サーカス
	CreateTextureEX("絵演ＥＶ", 5100, -545, -524, "cg/ev/resize/ev215_髭切に翻弄される村正l3.jpg");
	Zoom("絵演ＥＶ", 0, 1300, 1300, null, true);
	CreateSE("SE01","se戦闘_動作_空突進02");

	CreateTextureEX("絵演ＥＶ２", 5200, Center, -832, "cg/ev/resize/ev215_髭切に翻弄される村正l2.jpg");
	Zoom("絵演ＥＶ２", 0, 1300, 1300, null, true);
	CreateSE("SE01a","se戦闘_動作_空突進02");

	CreateTextureEX("絵演ＥＶ３", 5300, -678, -202, "cg/ev/resize/ev215_髭切に翻弄される村正l.jpg");
	Zoom("絵演ＥＶ３", 0, 1300, 1300, null, true);
	CreateSE("SE01b","se戦闘_動作_鎧_合当理吹かし01");

	SetBlur("絵演ＥＶ*", true, 4, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演ＥＶ", 300, -1022, @0, null, false);
	Zoom("絵演ＥＶ", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01a",0,1000,0,1200,null,false);
	Move("絵演ＥＶ２", 300, @0, -450, null, false);
	Zoom("絵演ＥＶ２", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ２", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Zoom("絵演ＥＶ３", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ３", 300, 1000, null, true);

	Delete("絵演ＥＶ１");
	Delete("絵演ＥＶ２");

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0320a00">
「竟有能做到纵态回旋的骑体!?」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0330a05">
「在汝还乳臭味干的时候，
余就在大陆战争中
……藏身在石窟寺院里迎击敌军。」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0340a05">
「这就是那时练就出的本领啊。
　黄毛小子，再怎么逞强也是徒劳的！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆突進。一閃
//◆防ぐ
	PrintGO("上背景", 10000);

	Wait(12);

	CreateColorSPadd("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中02");
	CreateSE("SE03b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	CreateSE("SE03c","se戦闘_動作_空突進01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	MusicStart("SE03c",0,1000,0,1000,null,false);
	FadeDelete("絵白転", 150, false);
	DrawTransition("絵白転", 150, 1000, 0, 100, Dxl2, "cg/data/slide_07_00_1.png", true);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0350a00">
「那、那个大将军……
　其实是赤色恶魔兵团出身的吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0360a01">
《是该从容说话的时候吗？》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	CreateTextureEX("絵演ＥＶ", 5100, -545, -524, "cg/ev/resize/ev215_髭切に翻弄される村正l3.jpg");
	Zoom("絵演ＥＶ", 0, 1300, 1300, null, true);
	CreateSE("SE01","se戦闘_動作_空突進02");

	CreateTextureEX("絵演ＥＶ２", 5200, Center, -832, "cg/ev/resize/ev215_髭切に翻弄される村正l2.jpg");
	Zoom("絵演ＥＶ２", 0, 1300, 1300, null, true);
	CreateSE("SE01a","se戦闘_動作_空突進02");

	CreateTextureEX("絵演ＥＶ３", 5300, -678, -202, "cg/ev/resize/ev215_髭切に翻弄される村正l.jpg");
	Zoom("絵演ＥＶ３", 0, 1300, 1300, null, true);
	CreateSE("SE01b","se戦闘_動作_鎧_合当理吹かし01");

	SetBlur("絵演ＥＶ*", true, 4, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演ＥＶ", 300, -1022, @0, null, false);
	Zoom("絵演ＥＶ", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01a",0,1000,0,1200,null,false);
	Move("絵演ＥＶ２", 300, @0, -450, null, false);
	Zoom("絵演ＥＶ２", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ２", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Zoom("絵演ＥＶ３", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ３", 300, 1000, null, true);

	Delete("絵演ＥＶ１");
	Delete("絵演ＥＶ２");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　实力相差甚远。

　不管骑体飞行还是机体行走，速度差距太大了。
　作为后者唯一的优点，本可在这空间大有作为的
敏捷转弯，因为敌方超越常理的技能而变得无效。

　如此下去会无所作为只能被砍。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆曲芸技
//◆反転襲来。防ぐ
	CreatePlainSP("絵板写", 10000);

	Delete("絵演*");
	Delete("絵ＥＶ*");

	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘.png");
	Request("絵演立絵髭", Smoothing);
	Rotate("絵演立絵髭", 0, @0, @0, @180, null,true);
	Zoom("絵演立絵髭", 0, 200, 200, null, true);

	Fade("絵効果線*", 0, 1000, null, false);
	Zoom("絵演立絵髭", 10000, 800, 800, DxlAuto, false);

	CreateSE("SE07","se戦闘_動作_空上昇01");
	MusicStart("SE07",0,500,0,1000,null,false);

	FadeDelete("絵板写", 200, false);

	CreateColorEX("絵色黒二", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_leftup2(10010,@0, @0,1500);

	CreateColorEXadd("絵色バーニア１", 910, "#FFFFFF");
	CreateColorEXadd("絵色バーニア２", 900, "#3366CC");

	Wait(300);

//◆一閃
	CreateSE("SE01a","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Fade("絵色バーニア*", 0, 1000, null, false);
	DrawTransition("絵色バーニア１", 0, 0, 30, 200, null, "cg/data/circle_01_00_0.png", true);
	DrawTransition("絵色バーニア２", 0, 0, 60, 100, null, "cg/data/circle_03_00_0.png", true);

	Wait(16);

	Fade("絵色バーニア*", 300, 0, null, false);
	DrawTransition("絵色バーニア１", 300, 30, 0, 400, null, "cg/data/circle_01_00_0.png", false);
	DrawTransition("絵色バーニア２", 300, 60, 0, 400, null, "cg/data/circle_03_00_0.png", false);

	Zoom("絵演立絵髭", 300, 2000, 2000, Axl2, false);

	Wait(270);

	Fade("絵色黒二", 100, 1000, null, true);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftupfade2(10);

	Wait(12);

	PrintGO("上背景", 10000);

	Wait(12);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE03b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　这是第三次了。
　……勉强躲过了致命攻击，不论是运气
还是能耐都不能一直持续。

　敌骑的动作过于迅速，出乎想象，
应对的行动完全无法跟上。
　反击、迎击都无法实行。

　这样单方面被猛烈攻击，
败北也只是时间的问题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0370a00">
（怎么……办？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　要强行出击吗？
　但是，若露出致命破绽，胜负就到此为止。

　假如我也骑体飞行的话——那才是最糟的下策。
　我无法达到如此技术。今日充其量
就只能像初次飞行的骑士般采取蝶泳式飞行。

　悬浮空中，会比现在更糟。
　敌骑为避免坠落，攻击之时
必定采取水平飞行而来。尽管如此，
若我离开地面，这个制约也会由此消失。

　无论哪个选择都很不利。
　可是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0380a01">
《……主君！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0390a00">
「村正？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*
//あきゅん「演出：意図がわからんので退避」
//◆フェードアウト
//◆フェードイン
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 600, 1000, null, true);

	WaitKey(1000);

*/

//◆鬚切強襲
//◆村正、軽く食らう
	CreateColorSP("絵白転", 11000, "#FFFFFF");
	CreateSE("SE04","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE04b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04b",0,1000,0,1000,null,false);

	Delete("絵色黒");

	WaitKey(10);

	CreatePlainSP("絵板写", 4999);

	FadeDelete("絵白転", 300, false);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);

	Delete("絵板写");

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0400a05">
「真是不肯死心的家伙。
　痛快点交出脑袋，让汝死得干脆点！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0410a00">
「……」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0420a05">
「汝若喜好被人一刀一刀削成片的话，
余便成汝。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆曲芸
//あきゅん「要望：3d髭切_騎航2_戦闘：背面飛びアングルとか、村正したから見ている風※ファイル名は適当」
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateTextureSPadd("絵演上", 3100, -600, -300, "cg/ev/resize/ev215_髭切に翻弄される村正l.jpg");
	CreateTextureSP("絵演", 3000, -600, -300, "cg/ev/resize/ev215_髭切に翻弄される村正l.jpg");
	Zoom("絵演上", 0, 1000, 1000, null, false);
	Zoom("絵演", 0, 750, 750, Dxl2, true);

	Zoom("絵演上", 200, 750, 750, Dxl2, false);
	Request("絵演*", Smoothing);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, false);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0430a05">
「————」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0440a05">
（什么？）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 15000, "#000000");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

	StC(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStC(0,true);

	CreateSE("SE010","se人体_動作_跳躍03");
	MusicStart("SE010",0,1000,0,1200,null,false);

	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	Wait(500);

	CreateSE("SE01","se特殊_鎧_装着04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");

	StC(1000, @0, @0,"cg/st/st景明_戦闘_私服.png");
	FadeStC(0,true);

	Wait(200);

	FadeDelete("絵色白", 1000, true);

	SetFwR("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0450a05">
（肉身——
　舍弃剑胄吗？）

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0460a05">
（蠢货。
　在图谋些什么？）

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0470a05">
（要怎么办）

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0480a05">
（要暂且停止飞行吗？）

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0490a05">
（——不）

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0500a05">
（那应该是目的吧！）

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0510a05">
（欲施巧计将余引回地面，借此重整局势）

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0520a05">
（怎会上汝的当!!）

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆鬚切突進
	PrintGO("上背景", 25000);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateColorSP("絵色土偽装", 90, "#660000");

	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘.png");
	Zoom("絵演立絵髭", 0, 600, 600, null, true);

	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演立絵髭", 350, 1000, 1000, Dxl2, false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);

	SetFwR("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470a]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0530a05">
「如此肤浅——」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓", 19000, 0, 168, 1024, 240, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef034_精神汚染.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 19100, -382, -300, "cg/st/resize/st景明_戦闘_私服l.png");
	Request("絵窓/絵演立絵装甲", Smoothing);
	Zoom("絵窓/絵演立絵装甲", 0, 1500, 1500, null, true);
	Move("絵窓/絵演立絵装甲", 0, @120, @0, null, true);
	SetBlur("絵窓/絵演立絵装甲", true, 3, 500, 60, true);

	Move("絵窓/絵演立絵装甲", 300, @-120, @0, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470b]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0540a00">
「上当了。大将领！」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0550a05">
「!?」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

//◆蜘蛛の網
	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 10000, "#FFFFFF");
	CreateTextureSPadd("絵演糸上", 6020, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");
	CreateTextureSP("絵演糸", 6010, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");
	CreateTextureSPadd("絵演糸下", 6000, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");

	SetVertex("絵演糸*", 800, 175);
	Request("絵演糸*", Smoothing);

	Delete("絵窓");
	Wait(12);
	Delete("絵色白");

	Zoom("絵演糸*", 200, 1500, 1500, Dxl2, false);
	Shake("絵演糸上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演糸上", 200, true);
	FadeDelete("絵演糸", 1000, false);

	SetFwR("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0560a05">
「什————」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0570a01">
《欢迎光临<RUBY text="·····">蜘蛛的巢穴</RUBY>。
　……若没有那一丝犹豫，
取胜的一方会是你啊！》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆鬚切、網に引っ掛かって座礁
	CreatePlainEX("絵板写", 5000);
	SetBlur("絵板写", true, 3, 500, 200, false);

	CreateSE("SE02","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("絵板写", 200, 1250, 1250, null, false);
	FadeFR2("絵板写",0,1000,400,0,0,60,Dxl2, true);

	CreatePlainSP("絵板写弐", 10000);
	Delete("絵板写");
	Delete("絵色*");
	Delete("絵演*");

	CreateTextureEX("絵演震用", 110, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

	Fade("絵演震用", 0, 500, null, true);
	Shake("絵演震用", 400, 0, 40, 0, 0, 1000, null, false);
	Delete("絵板写弐");

	CreateSE("SE03a","se戦闘_衝撃_鎧転倒02");
	CreateSE("SE03b","se戦闘_破壊_建物01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　<RUBY text="蜘蛛">村正</RUBY>的线，
并没有割裂装甲的强度。
　但可以对缠绕着的敌骑翼型装甲造成损伤，
足够将其拖回地面。

　虽然不是以最高速率疾驰。
损害程度也不是无法复原，
但其性能大幅度丧失的状态却是事实。
　村正提出的方案成功了。

　抓住了这个机会。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演震用");

	CreateSE("SE01","se人体_動作_後ずさり01");
	StR(1000, @120, @0,"cg/st/st景明_戦闘_私服.png");

	MusicStart("SE01",0,1000,0,1250,null,false);
	Move("@StR*", 300, @-120, @0, Dxl1, false);
	FadeStR(300,true);

	Wait(200);

//◆装甲·村正
	CreateSE("SE01","se特殊_鎧_装着06");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");

	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(0,true);

	Wait(200);

	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　再度装甲。
　朝向敌人跳跃。
他在那令人震惊的坚强意志下
已快速站起身来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("@StR*", 200, @-200, @0, Axl2, false);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,850,null,false);

	CreateColorSP("絵黒幕", 19000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 40, 0, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 250, -615, @0, Dxl2, false);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0580a00">
「抱歉了！」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0590a05">
「喏!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――

//◆斬り下ろし
//◆ざく。地面に
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Zoom("絵演上", 0, 10000, 10000, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	FadeStA(0,true);
	Delete("絵演*");

	CreateSE("SE01","se戦闘_攻撃_刀刺さる01");
	MusicStart("SE01",0,1000,0,700,null,false);

	CreatePlainEX("絵板写", 2000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　打中的是——地面！
　向着地面冲击，对方却躲过了刀尖。

　面对他那与率领百万军队大将不符的狼狈姿态，
比起嘲笑，更多的仅仅是对他的执念感到战栗。
　本应一击必杀——但足利护氏对生存和
胜利的渴望已经超越了杀意。 只能这么想了。

　多么恐怖的男人啊！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆追撃
	CreateSE("SE01","se戦闘_動作_鎧_踏み込み01");
	StR(1000, @180, @0,"cg/st/3d村正標準_立ち_戦闘.png");

	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("@StR*", 300, @-120, @0, Dxl2, false);
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　甚至体会到近乎梦魇的感觉，脚步没有停止。
　追赶逃跑绊倒的敌骑，
在他重新站起的瞬间加上一刀。

　又再度，假以纵向——<k>实质却是横向砍去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0600a05">
「喏!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆横薙ぎ
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵演上", 0, 10000, 10000, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	FadeStA(0,true);

//◆ずがーん
	CreateSE("SE05b","se戦闘_破壊_爆発04");
	CreateSE("SE05c","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE05b",0,1000,0,1000,null,false);
	MusicStart("SE05c",0,1000,0,800,null,false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");

	Delete("絵演*");

//あきゅん「要望：3d髭切_立ち_陰義b：ポーズ同じで陰義闘気なし」
	CreateTextureSP("絵演立絵髭", 1010, Center, InBottom, "cg/st/3d髭切_立ち_陰義.png");
	Request("絵演立絵髭", Smoothing);
	SetVertex("絵演立絵髭", center, bottom);
	Zoom("絵演立絵髭", 0, 1100, 1100, null, true);

	Move("絵演立絵髭", 0, @-100, @0, null, true);

	Zoom("絵演立絵髭", 700, 1000, 1000, Dxl3, false);
	Shake("絵演立絵髭", 1000, 4, 0, 0, 0, 1000, Dxl3, false);
	Move("絵演立絵髭", 700, @-150, @0, Dxl3, false);

	FadeDelete("絵色白", 400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　割裂胸甲的刀尖。
　无数细微的金属粒隐约点缀着上空。 

　可是……切口尚浅！

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ざー。飛びすさった鬚切
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 10010, "#FFFFFF");
	CreateColorEXadd("絵色青", 10010, "#3333FF");
	Fade("絵色青", 0, 800, null, true);

	Wait(200);
	Delete("絵演立絵髭*");

	FadeDelete("絵色*", 400, false);
	DrawTransition("絵色青", 200, 1000, 0, 100, Dxl1, "cg/data/slide_08_00_1.png", false);
	DrawTransition("絵色白", 200, 1000, 0, 100, Dxl2, "cg/data/slide_08_00_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　敌骑瞬间向下飞。
　意识到无法完全避开的瞬间，
用较灵活的脚蹬地而去。

　……哪里都一样！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆対峙
	CreatePlainSP("絵板写", 10000);

	Delete("絵背景*");

	CreateCamera("Ｃ", 512, 144, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演背景", 0, Center, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");

	CreateTextureSP("Ｃ/絵演立絵髭", 250, Center, Middle, "cg/st/3d髭切_立ち_戦闘.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 600, 600, null, true);
	Move("Ｃ/絵演立絵髭", 0, @-700, @20, null, true);

	Request("Ｃ/*", Smoothing);

	MoveCamera("Ｃ", 4000, -512, @0, @0, Dxl1, false);

	FadeDelete("絵板写", 500, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　距离拉开。
{	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　敌骑调整了握刀姿势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0610a00">
（给他逃掉了吗？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　错过了捉住他的机会。
　再深入进攻已危险——而且还会被报以反击。

　本想就此了结，也没办法了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("Ｃ", null);

	CreateTextureSP("Ｃ/絵演立絵村正", 250, Center, Middle, "cg/st/3d村正標準_立ち_戦闘.png");
	SetVertex("Ｃ/絵演立絵村正", center, bottom);
	Zoom("Ｃ/絵演立絵村正", 0, 700, 700, null, true);
	Move("Ｃ/絵演立絵村正", 0, @760, @-30, null, true);

	MoveCamera("Ｃ", 4000, 512, @0, @0, Dxl1, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0620a01">
《没关系。风向正在改变。
　还是朝着我们方向的顺风。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0630a00">
「只要注意不要向前摔倒就好了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　虽然己方也受了伤，
但目前敌方的损伤更加严重。
　只要不疏忽大意，即可竭力而为。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("Ｃ", null);

//◆じりじり。鬩ぎ合い
//◆押す村正と引く鬚切
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("Ｃ/絵演立絵村正", 600, @-60, @0, DxlAuto, true);

	Wait(400);

	MoveCamera("Ｃ", 4000, -512, @0, @0, Dxl1, true);

	Wait(400);

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("Ｃ/絵演立絵髭", 600, @-60, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　前后左右不断移动，盘算进攻的时机。
　但对方也非同小可，均一一巧妙化解。

　或许是战斗经验方面对方比较
有利的关系，始终没什么进展。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0640a05">
「…………」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0650a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　到这地步，我可不希望看到时间用完，
敌军来援的结果。
　应该做好受敌一击的觉悟，一口气攻击吗？
数秒间，脑中如此盘算。

　……按计算，我的胜算并不小。
　只是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0660a00">
（村正。
　那剑胄的<RUBY text="··">极限</RUBY>估计能到什么程度？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0670a01">
《和我不相伯仲的装甲。超常规的机动性。
　……如果你认为就这么两点的话，
那就想得太美了。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0680a00">
（还有什么？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0690a01">
《尽管须切达不到神治时代，也算是上古之作……
不知是谁用何种技术锻造的无人知晓的古代遗产。
　会出现什么呢。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0700a01">
《最低限度也该考虑阴义。
你想知道的就是这个吧？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0710a00">
（是啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　阴义。
　武者间战斗所能估计之外的要素
……彻底推翻预测的力量。

　若是被逼入绝境的敌骑，首先就是依靠这个。
　恐怕现在正窥探时机。

　一旦踏入决定胜负之时，敌方很可能
会等待对方攻击而迎击。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0720a01">
《不如我们先发制人？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　村正所言，是用相同手段先下手。
　——我们先用阴义发动攻击。

　但如果对方早有预算，恐怕这才是下下之策。
　虽不像水火般不相容，但如果遇上相克的阴义，
就是末路了。

　能够读懂对手就好了……
　
　须切吗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鬚切·馬
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	CreateColorSP("絵色黒下", 15000, "#000000");
	CreateTextureSP("絵演立絵馬", 15100, Center, InTop, "cg/ev/resize/ev214_足利護氏の行列l.jpg");
	SetTone("絵演立絵馬", Monochrome);

	Move("絵演立絵馬", 6000, @0, -576, DxlAuto, false);
	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　不知从何时起，证明源氏源远流长历史，
备受珍视的名剑胄。
　有着惩办盗贼扑灭恶鬼，如同野兽般的
咆哮之类，各种各样的轶闻。

　若对那些轶闻慎重考察，
要猜中阴义的正体也不是不可能。
　只是，以我脑内有限的知识和紧迫的
时间来探究，也不能想到什么。

　虽然其刀性的锋利确实被夸大了真实……
　但不管是哪个剑胄的传说都一样吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Delete("絵演立絵馬*");
	Delete("絵色黒下");
	Delete("Ｃ");

//◆じりじり。鬩ぎ合い
	PrintGO("上背景", 19000);
	CreateColorSP("絵色黒", 10000, "#000000");

	CreateTextureSP("絵下背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

	CreateWindow("絵窓左", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓左","絵窓左");
	Zoom("絵窓左", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓左/絵背景効果", 5010, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSPmul("絵窓左/絵演背景", 5020, InLeft, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");

	CreateTextureSP("絵窓左/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d髭切_立ち_戦闘.png");
	Move("絵窓左/絵演立絵装甲", 0, @-280, @4, null, true);//ダミー注意：仮位置
	Zoom("絵窓左", 0, 1000, 1000, Dxl2, true);


	CreateWindow("絵窓右", 5000, 636, 0, 340, 576, false);
	SetAlias("絵窓右","絵窓右");
	Zoom("絵窓右", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓右/絵背景効果", 5010, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSPmul("絵窓右/絵演背景", 5020, InRight, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");

	CreateTextureSP("絵窓右/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d村正標準_立ち_戦闘.png");
	Move("絵窓右/絵演立絵装甲", 0, @340, @0, null, true);//ダミー注意：仮位置
	Zoom("絵窓右", 0, 1000, 1000, Dxl2, true);

	Delete("上背景*");
	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　双方皆双脚擦地移动。
　但距离完全没有缩短。

　虽说切忌急躁……
　也不能这么一直拖延下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0730a00">
（就这样）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　决定了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正納刀。レールガン前
	CreateTextureEX("絵窓右/絵演", 6100, -690, -360, "cg/ev/resize/ev902_村正電磁抜刀レールガン_al.jpg");
	Zoom("絵窓右/絵演", 0, 750, 750, null, true);
	Request("絵窓右/絵演", Smoothing);

	Move("絵窓右/絵演", 0, @0, @150, null, true);

	CreateSE("SE01","se戦闘_動作_刀構え03");
	CreateSE("SE01a","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,800,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵窓右/絵演", 6000, -20, -220, DxlAuto, false);
	Fade("絵窓右/絵演", 1000, 1000, null, true);

	SoundPlay("@mbgm12",0,1000,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0740a05">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　注意到这边拔刀移动的动作，
敌人提升了注意力。
　无疑是察觉到了危险。

　——出击。
　但要摒弃犹豫。

　在无法解读对手的前提下，
观望形势再出下步棋是
常用之道……更别说如今判断出局势危险。
　竭尽全力挥刀之时来临。

　村正，终焉之太刀——电磁拔刀。

　粉碎那肤浅的策略。
　胜负就在这一刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0750a00">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0760a05">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　调整呼吸，估算时机。
　盲目进攻只会成为敌方反击的牺牲品。
出击的时机是在对方出手的刹那，
又或者，反之坚持到濒死的瞬间？

　某个机会一定会来临。

　在哪里————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆合当理ぶおーん
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");

	CreateColorEXadd("絵窓左/絵色合当理白", 5090, "#FFFFFF");
	CreateColorEXadd("絵窓左/絵色合当理青", 5080, "#0033FF");

	DrawTransition("絵窓左/絵色合当理白", 0, 0, 120, 300, null, "cg/data/circle_11_01_0.png", true);
	DrawTransition("絵窓左/絵色合当理青", 0, 0, 140, 300, null, "cg/data/circle_11_01_0.png", true);

	MusicStart("SE01",0,1000,0,600,null,false);
	SetFrequency("SE01", 2000, 1000, null);
	VernierAction2();
	Shake("絵窓左/絵演立絵装甲", 2160000, 0, 2, 0, 0, 1000, null, false);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0770a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　飞行推进器!?
　——又是它？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0780a01">
《想要再次做那样的攻击吗!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0790a00">
（不可能！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　敌骑的翼甲带着伤，几乎接近毁坏。
　即便飞行推进器还在也无法飞。

　究竟在打什么主意!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0800a05">
「唰!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆鬚切、跳躍
	CreateColorSPadd("絵窓左/絵色白", 6100, "#FFFFFF");
	CreateColorSPadd("絵窓左/絵色青", 6090, "#0033FF");

	Delete("プロセスガッタリ２");
	Delete("絵窓左/絵演立絵装甲");
	Delete("絵窓左/絵色合当理*");

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(200);

	DrawTransition("絵窓左/絵色白", 200, 1000, 0, 300, Dxl2, "cg/data/slide_07_00_1.png", false);
	DrawTransition("絵窓左/絵色青", 200, 1000, 0, 300, null, "cg/data/slide_07_00_1.png", true);

//◆逃げ
	PrintGO("上背景", 10000);
	CreateColorEXadd("絵色合当理白", 9100, "#FFFFFF");
	CreateColorEXadd("絵色合当理青", 9100, "#0033FF");

	CreateColorSP("絵色黒", 100, "#000000");
	CreateSE("SE01c","se戦闘_動作_空突進02");

	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘2.png");
	Zoom("絵演立絵髭", 0, 2000, 2000, null, true);

	MusicStart("SE01c",0,1000,0,1000,null,false);

	Delete("上背景");

	Zoom("絵演立絵髭", 60000, 0, 0, null, false);

	Wait(200);

	CreateSE("SE02","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE02",0,1000,0,1500,null,false);

	Fade("絵色合当理*", 0, 800, null, true);

	Wait(12);

	DrawDelete("絵色合当理白", 200, 1000, "circle_01_00_0", false);
	DrawDelete("絵色合当理青", 250, 1000, "circle_03_00_0", false);

	Zoom("絵演立絵髭", 600, 0, 0, Dxl1, false);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0810a00">
「……什。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	Delete("絵色*");
	Delete("絵演*");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　转过身去——<k>
　
{	FadeDelete("絵板写", 1000, false);}
　　　　　　　　　　要逃跑？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0820a00">
「咕。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0830a01">
《啊————!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0840a00">
「糊涂啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　对着<RUBY text="··">自己</RUBY>大喊，我跳了起来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正追う
	StR(1000, @120, @0,"cg/st/3d村正標準_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-120, @0, Dxl1, false);
	FadeStR(300,true);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色バーニア１", 4010, "#FFFFFF");
	CreateColorSPadd("絵色バーニア２", 4000, "#3366CC");

	Wait(12);

	DeleteStA(0,true);

	DrawTransition("絵色バーニア１", 300, 30, 0, 400, null, "cg/data/slide_08_00_1.png", false);
	DrawTransition("絵色バーニア２", 300, 60, 0, 400, null, "cg/data/slide_08_00_1.png", false);

	Wait(360);

	CreatePlainSP("絵板写", 10000);
	Delete("絵色*");

//◆鬚切逃げ
	CreateColorSP("絵色中心黒", 1100, "#000000");
	DrawTransition("絵色中心黒", 0, 0, 100, 1000, null, "cg/data/slide_05_00_1.png", true);

	CreateTextureSP("絵背景１", 1000, 0, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	CreateTextureSP("絵背景２", 1000, 0, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");

	CreateSCR1("@絵背景１","@絵背景２",600,-4000,@0);

	FadeDelete("絵板写", 400, true);

	CreateTextureSP("絵演立絵髭", 2000, OutLeft, Middle, "cg/st/3d髭切_騎航_戦闘.png");
	Move("絵演立絵髭", 0, @0, @-120, null, true);
	Request("絵演立絵髭", Smoothing);
	Zoom("絵演立絵髭", 0, 800, 800, null, true);
	Shake("絵演立絵髭", 2160000, 0, 2, 0, 0, 1000, null, false);

	CreateSE("SE02","se戦闘_動作_空突進01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵演立絵髭", 1000, @2200, @0, null, false);

	Wait(600);

	Move("絵演立絵髭", 10000, @100, @0, null, false);

	SetFwC("cg/fw/fw護氏_大笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0850a05">
「太嫩了，小子！
　困于战场就无法看清战局了吗!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("絵演立絵髭", 600, @2200, @0, Dxl2, true);

	Wait(1000);

	CreateTextureSP("絵演立絵村", 2000, OutLeft, Middle, "cg/st/3d村正標準_騎航_通常2.png");
	Move("絵演立絵村", 0, @0, @60, null, true);
	Request("絵演立絵村", Smoothing);
	Zoom("絵演立絵村", 0, 1100, 1100, null, true);
	Shake("絵演立絵村", 2160000, 0, 2, 0, 0, 1000, null, false);

	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵演立絵村", 1000, @1200, @0, null, false);

	Wait(600);

	Move("絵演立絵村", 10000, @100, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　嘲笑在耳边响起。
　对此我并无一丝回应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0860a00">
（什么时候——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　什么时候。
　什么时候。

　<RUBY text="·········">敌骑已经到出口了吗</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);



}

..//ジャンプ指定
//次ファイル　"md01_030.nss"



.//プロセス用======================================================

..//ガッタリアイドリング
function VernierAction()
{
	CreateProcess("プロセスガッタリ", 1000, 0, 0, "VernierSet");
	Request("プロセスガッタリ", Start);

}

..VernierSet
function VernierSet()
{
	begin:
	while(1)
	{
	Fade("@Ｃ/絵色合", 1, 600, null, true);
	//DrawTransition("@Ｃ/絵色合", 20, 100, 200, 100, null, "cg/data/circle_13_00_0.png", true);

	Fade("@Ｃ/絵色合", 0, 100, null, true);
	//DrawTransition("@Ｃ/絵色合", 20, 200, 100, 100, null, "cg/data/circle_13_00_1.png", true);
	}
}


..//ガッタリアイドリング２
function VernierAction2()
{
	CreateProcess("プロセスガッタリ２", 1000, 0, 0, "VernierSet2");
	Request("プロセスガッタリ２", Start);

}

..VernierSet2
function VernierSet2()
{
	begin:
	while(1)
	{
	Fade("@絵窓左/絵色合当理白", 1, 800, null, false);
	Fade("@絵窓左/絵色合当理青", 1, 600, null, true);
	//DrawTransition("@Ｃ/絵色合", 20, 100, 200, 100, null, "cg/data/circle_13_00_0.png", true);

	Fade("@絵窓左/絵色合当理*", 0, 100, null, true);
	//DrawTransition("@Ｃ/絵色合", 20, 200, 100, 100, null, "cg/data/circle_13_00_1.png", true);
	}
}