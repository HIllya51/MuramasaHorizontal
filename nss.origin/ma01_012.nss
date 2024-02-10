//<continuation number="0">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_012.nss_MAIN
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
	#bg002_空a_03=true;
	#bg013_鎌倉俯瞰a_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_013.nss";

}

scene ma01_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_011.nss"

//◆奈：ここは蜘蛛村正も真改も出さない

//◆転換

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 10020, Center, Middle, "cg/bg/bg002_空a_03.jpg");


	CreateSE("SE01","se自然_風_野原01_L");
	MusicStart("SE01",3000,1000,0,1000,null,true);

	FadeDelete("上背景", 2000, true);

	SoundPlay("@mbgm09",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……那二人。
　被空洞的眼窝凝视着。

　蜘蛛。

　头脚相逆贴附于民宅墙壁上，不含温度的
视线目送着二人的背影。
　蜘蛛。然而，却非普通的蜘蛛。

　身长约有六、七尺。
　足以环抱人类长度的节足。
　单是胴体就有酒桶大小。

　令人毛骨悚然的巨大身躯。
　
　体色赤红。

　几乎要喷溅而出的鲜血颜色。
　在夜色的荫庇下，化为腐坏血液的暗红。

　肌肤宛若覆盖了钢铁的冰冷，闪烁着硬质光辉。
　
　——否。
　本身，便是钢铁吧。

　红色钢铁大蜘蛛。
　本应只存在于插画小说中的异形。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");
	FadeDelete("絵背景20", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　在妖异眨动的复眼下，两名学生渐行渐远。

　蜘蛛弯曲了身体。

　是想要追上二人吗。
　还是想要做些其他的什么呢。
　
　不是为了捕食蝇虫吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——然而。
　却有什么先发制人。

　并无声响。
　唯有斩断风的气息。

　蜘蛛的动作停止。
　虚空飘渺的视线移动了方向。

　对面一侧的民宅屋顶之上。
　那里，矗立着一个影子。

　人的样貌。
　却绝非人的形态。
　
　钢铁的香气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　那是铠甲。
　黄铜色的铠甲。

　可若是普通铠甲，不可能在化为一阵风的瞬间
出现。
　完全超乎常理的跳跃，继而完成着地。如此，
已然不仅仅是铠甲。

　是剑胄。
　是武者。

　黄铜的武者。

　黯淡摇动的目光首先注视着二人的背影，随后，
看向蜘蛛。
　眼中没有表示出一丝善意。

　回视的蜘蛛亦是同样。
　或许它连表示好意的方法都不甚明了。

　对峙的时间大约数秒。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 0, 0, null);
	SetVolume("OnSE*", 0, 0, null);
	OnSE("se人体_動作_跳躍01",1000);

	CreateTextureSP("絵ＥＦ100", 10000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	DrawTransition("絵ＥＦ100", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵背景*");
	CreateTextureSP("絵背景20", 20, Center, Middle, "cg/bg/bg002_空a_03.jpg");

	DrawDelete("絵ＥＦ*", 200, 1000, "slide_01_03_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　武者冲出屋顶。

　如果说，穿越虚空的速度如同疾风，那同时
拔出的利刃则等同于闪电。
　令人无法逃脱的雷火。

　可是，蜘蛛的动作比起雷火也毫不逊色。

　赤红的巨大身躯咻地一声，携起轻盈的风共舞。
　闪电之刃所劈开的，也只是那阵风而已吧。

　蜘蛛毫发无伤，栖身于树木之上。
　仿佛把绿叶当作了坐垫，端坐的姿态甚是滑稽。

　然而，正是那份滑稽感令人仿佛置身魔界。
　迎接着钢铁生物的树木，却连一根小树枝折断的声音
都未响起。

　武者也异乎常人。
　毫不在意一闪的失误，轻而易举地着陆于<RUBY text="··">垂直</RUBY>
墙面，再次跳起狙击蜘蛛。

　蜘蛛逃跑。
　而这次，又不只是逃跑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、糸攻撃
	PrintGO("上背景", 15000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	CreateTextureSP("絵ＥＦ100", 100, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	SetBlur("絵ＥＦ100", true, 3, 500, 100, false);
	Zoom("絵ＥＦ100", 0, 1800, 1800, null, true);

	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeDelete("上背景", 200, true);

	FadeDelete("絵フラ", 200, false);
	Zoom("絵ＥＦ100", 400, 1000, 1000, DxlAuto, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　乘着夜风，吐出的是丝线。

　钢铁的投网。
　瞬时间放出膨胀的线束，瞄准目标。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_衝撃_鎧転倒01",1000);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	WaitKey(400);

	Delete("絵ＥＦ*");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");

	FadeDelete("絵フラ", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
　武者已飞入其中。
　或许连反应的空隙都没有吧。钢线之束
捕捉住武者，卷起漩涡。

　过于异样的光景在此显现。

　民宅与民宅之间，张开丝线的钢铁之蛹。
　若是有人目击，一定会因最终究竟会
孵出什么的恐惧而战栗发抖吧。

　但从这里，什么也不会孵出。
　看上去仿佛茧蛹，却是监牢。
　并非为了孵化而是为了封禁的创造物。

　缠绕了重重钢铁丝线而成的厚重牢狱。
　在此囚禁的罪人，究竟还要经历多少岁月才能
得到宽恕，重返外界呢。

　十年。百年。还是千年——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
	CreateColorSPadd("絵フラ", 15000, "#FFFFFF");
	CreateColorSP("絵暗転", 1000, "#000000");

	Fade("絵フラ", 200, 0, null, true);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1700,null,false);

	SL_down(@0,@0,2000);
	SL_downfade2(10);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　连一丝喘息的空隙都不需要。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃二回
	CreateSE("SE02","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	SL_rightup(@0,@0,2000);
	SL_rightupfade2(10);

	CreateSE("SE03","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE03",0,1000,0,2000,null,false);
	SL_left(@0,@0,2000);
	SL_leftfade2(10);

	OnSE("se特殊_鎧_装着03",1000);
	Fade("絵フラ", 200, 1000, null, true);
	Wait(300);
	Delete("絵暗転*");

	FadeDelete("絵フラ", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　白光疾走。
　刀刃生辉。

　从茧内侧溢出的闪光，在眨眼的瞬间切开名副其实
的钢线，将其变为碎屑。
　坚固牢狱脆弱的终结。

{	CreateSE("SE11","se自然_風_野原01_L");
	MusicStart("SE11",2000,1000,0,700,null,true);}
　那是在诉说着简单的真理吗。
　
　——没有能囚禁更强者的牢狱。

　武者的剑明显在蜘蛛力量之上。
　浑身的丝线，对他来说也不过是小小戏法。

　……自然至极。

　武者才是战场之王。
　无论何人，在他面前唯有卑躬屈膝。

　能打倒武者的唯有，
　比他更强的武者。

　……此理，明辨无疑。

　获得自由的武者端倪四周。
　可视线却未捕捉到任何东西。

　吐出丝线，蜘蛛逃之夭夭。
　不留痕迹，异形巨虫不知消失在何方。

　视线流转。
　蜘蛛和武者共同盯上的二人身影，早无影踪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
<voice name="鈴川" class="鈴川" src="voice/ma01/0210580b57">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　在思考着什么吧。
　或者，什么也没有思考。

　极短的时间里，他露出了沉思的神情。

　武者再次转身，溶入夜色之中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000,3000);

}

..//ジャンプ指定
//次ファイル　"ma01_013.nss"



