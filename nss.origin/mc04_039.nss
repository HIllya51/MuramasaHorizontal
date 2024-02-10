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

scene mc04_039.nss_MAIN
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
	#ev204_微笑する幼い香奈枝_h=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_040vs.nss";

}

scene mc04_039.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_038.nss"


//◆戻り
	PrintBG("上背景", 30000);
/*
	CreateColorSPadd("絵色100", 18000, "WHITE");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Move("絵背景50", 0, @0, @2000, null, true);
	SetBlur("絵背景50", true, 3, 800, 200, false);
	Request("絵背景50", Smoothing);

	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	Move("絵狸", 0, @0, @-100, null, true);
	SetBlur("絵狸", true, 3, 200, 100, false);
	Fade("絵狸", 0, 1000, null, true);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);
*/

	CreateTextureEX("絵背景02", 19000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_g.jpg");
	Fade("絵背景02", 500, 1000, null, true);
	CreateColorSP("くろい", 500, "#000000");
//	CP_AllDelete();
//	Delete("絵狸");

	FadeDelete("上背景", 500, true);
	SoundPlay("@mbgm14",0,1000,true);
	FadeDelete("絵色100", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　凑斗景明破坏了那个少年的未来。
　可憎。可憎。不管有没有道理，不管他有没有感到
痛苦，这一罪行就是令人憎恨。

　不得不去清算罪行。

　…………清算。

　清算？

　只要完成复仇——
　难道，那个少年就会回来？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ev204g。ガラガラドシャン。崩壊
//◆黒
	CreateColorSP("フラッシュ白", 15000, "WHITE");

	OnSE("se特殊_鎧_ひび割れ01",1000);
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("絵背景03", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_h.jpg");
	Delete("絵背景02");
	Wait(50);
	Fade("フラッシュ白",0,0,null,true);
	Delete("フラッシュ白");
	Wait(2000);
	OnSE("se特殊_雰囲気_崩壊音",1000);
	DrawEffect("絵背景03", 1500, "Split", 0, 1000, null);
	FadeDelete("絵背景03", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……大鸟香奈枝有生以来第一次，陷入名为自我否定
的地狱。
　崩坏一旦开始，就没有止境。

　为何要复仇？
　为何非得复仇？

　自己真的想复仇吗？
　真是如此吗？

　
　　『是你的憎恨太强吗。
　　　还是，你的爱太深呢。』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　昔日遥远的言语复苏。
　将女儿送往海外的最后，父亲轻声说出的一句。

　现在想来，那是永诀之言。

　……香奈枝一直认为，父亲没有理解自己。
　但是，结果真是如此吗。

　在某个方面，难道不是比香奈枝自己还要更迫近
香奈枝的本质吗。
　
　怎会。怎会。怎会怎会怎会。

　不————
　
　
　或者说。

　自己，
　并不是灵魂有问题，
　只是，
　无以复加地，

　<RUBY text="··">迟钝</RUBY>而已。
　
　复仇是空虚的，不会产生任何东西 ，只不过是毫
无意义毫无益处的行为。意识到如此单纯的事实——

　奥瑞斯泰亚。
　
　奥列斯特斯为了向父亲复仇而杀死了母亲，因极度
痛苦而精神崩溃。

　基督山伯爵。
　
　得以成就复仇之人，因在复仇之名下积累的重重罪
恶而懊恼不已。

　哈姆雷特。
　
　王子的复仇不仅杀死了自己的仇敌，也牺牲了所有
相关之人，什么也没有留下。

　……过去，一个又一个通晓人心的作者，用故事诉说着
复仇的虚无性。
　他们是既睿智且正确的——<k>是那样的吗。

　才不是那样。
　复仇是……<k>
　　　　　　　　　　　　　就是那样的。
　　　　　　　　　　　　　复仇是……

　复仇是。
　复仇是。
　复仇是。

　
　　　　　　　……复仇是，什么？

　相互争执的肯定与否定，导致了同一个疑问。
　此刻被质问价值的复仇，其真相为何。

　若不知晓定义，意义就无从谈起。

　复仇是什么。
　
　
　————必须知道。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明
	StR(1000, @0, @0, "cg/st/st景明_通常_私服.png");
	FadeStR(500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　应该杀凑斗景明吗。<k>
　
　　　　　　　　　　　　　　　（不想杀）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(500, false);

	Wait(200);
//◆雄飛

	StL(1000, @0, @0, "cg/st/st雄飛_通常_制服.png");
	FadeStL(500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　应该为新田雄飞之死报复吗。<k>
　
　　　　　　　　　　　　　　　　（想报复）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(500, false);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　怎么做才是正确的……
　怎么做才是<RUBY text="········">大鸟香奈枝的正确</RUBY>。

　为了得到这一答案。
　——必须理解复仇的定义。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大鳥家襲撃。獅子吼
	CreateColorSP("くろいです", 15000, "#000000");
	CreateTextureSP("絵背景05", 600, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");

	CreateTextureSP("絵背立絵", 1000, Center, InBottom, "cg/st/st獅子吼_通常_制服.png");
	Move("絵背立絵", 0, @-256, @0, null, true);

	FadeDelete("くろいです", 1500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　香奈枝还有一件属于自己的复仇。
　对杀害父亲的大鸟狮子吼的复仇。

　做出袭击大鸟本宅，讨伐狮子吼的决断，也是因为
判断出他的存在对大和有害。
　这并非谎言……只是，如果要说先后顺序的话，
这一判断是<RUBY text="··">后者</RUBY>。

　香奈枝首先是为了自己的原因对狮子吼复仇的。
　但他是与国家命运紧密相关之人，生死直接影响一
国浮沉。


　香奈枝从父亲那里继承的帝王学，决不认可仅为个
人欲求而动摇国家的行为。
　为此香奈枝开始寻找杀死狮子吼的<RUBY text="····">大义名分</RUBY>，
因正值情势紧迫之际，并不费力就到手了。

　个人欲求——
　想知道复仇真义的欲望，得到了许可。


　只要报了杀父之仇，应该就会知道复仇的真义。
　香奈枝这样想着，实行了对狮子吼的复仇。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆獅子吼殺害。

//inc久保田　該当場所がVSファイルで未演出なので仮です。
	OnSE("se戦闘_攻撃_刀刺さる05",1000);

	CreateColorSP("絵色血", 19000, "#990000");

	CreateStencil("絵演型",1000,center,InBottom,128,"cg/st/st獅子吼_通常_制服.png",false);
	SetAlias("絵演型","絵演型");

	CreateTextureSPover("絵演型/絵演血", 1100, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("絵演型/色", 1050, "#990000");

	Fade("絵演型/絵演血", 0, 750, null, true);
	Fade("絵演型/色", 0, 950, null, true);
	DrawTransition("絵演型/色", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演型", 0, @-256, @0, null, true);

	Wait(100);
	FadeDelete("絵色血", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　于是————————
　
　她知道了。

　得到了想要的东西。
　完全地、正确地，理解了。

　复仇是什么。
　
　
　…………知道了，真相。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝と獅子吼の過去ＣＧ
//◆ホワイトアウト

//おがみ：EVが見つからなかったので回避
//	CreateTextureEX("絵回想01", 5000, 0, Middle, "cg/ev/???.jpg");
//	Fade("絵回想01",1000,1000,null,true);

	WaitKey(1500);

	CreateColorEXadd("しろ", 25000, "WHITE");
	Fade("しろ",2500,1000,null,true);

//	ClearFadeAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc04_040vs.nss"