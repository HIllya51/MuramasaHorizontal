//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
//	$GameDebugSelect = 1;

		Reset();
	}

}

scene mc04_037.nss_MAIN
{

//コックピット用Ｓｅｔ
	//CP_AllSet("バロウズ");

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
	#ev204_微笑する幼い香奈枝_f=true;
	#ev204_微笑する幼い香奈枝_g=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc04_038.nss";

}

scene mc04_037.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_036.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆戻り
	PrintBG("上背景", 30000);

	CreateSE("SEトンデマスL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEトンデマスL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEトンデマスL01a",2000,750,0,1000,null,true);
	MusicStart("SEトンデマスL01b",2000,750,0,1500,null,true);

	CreateColorSPadd("絵色100", 18000, "WHITE");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Move("絵背景50", 0, @0, @2000, null, true);

	SetBlur("絵背景50", true, 3, 800, 200, false);
	Request("絵背景50", Smoothing);

	CreateTextureSP("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵狸", 0, 7, 7, null, true);
	SetBlur("絵狸", true, 3, 200, 100, false);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	MyLife_Count(1,470);
	MyTr_Count(0,325);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	CP_AziChange(0,31,AxlDxl,false);

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,10,420,300);

	Delete("上背景");
	FadeDelete("絵色100", 2000, true);

	CreateSE("SE01","se特殊_ノイズ01");
	CreateTextureEXsub("絵背景30覆", 19010, -1000, -125, "cg/ev/resize/ev133_兜割に挑む光_cl.jpg");
	CreateTextureEX("絵背景30", 19000, -1000, -125, "cg/ev/resize/ev133_兜割に挑む光_cl.jpg");
	SetTone("絵背景30", Monochrome);
	SetVertex("絵背景30覆", 1637, 296);
	Zoom("絵背景30覆", 0, 1150, 1150, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　那个时候才明白。
　自己错了。

　并不是对死的渴望和恐惧并存。
　而是其中一方<RUBY text="·······">不在考虑范围内</RUBY>。

　凑斗景明不承认自己的人权。

　舍弃了自己的生存权。
　舍弃了声张自己正当性的权利。

　因此，也不再顾虑对死的恐惧。
　对渴望求生的本能置之不理，却遵从法度，欢迎死刑。

　也就是说。
　他憎恶自己到了如此地步。

//◆「ところに――」と「自己の」の間で兜割ＣＧ一瞬
　并不知晓他变成这样的原因。
　是作为村正犯下的重重惨痛罪行让他变成这样的吗？
或者不仅如此，还在更深层的地方——<?>
{	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR3("絵背景30覆",0,500,400,@0,@0,30,null, false);
	Fade("絵背景30",0,1000,null,true);
	WaitKey(100);
	Fade("絵背景30*",100,0,null,false);}
有让他
否定自己一切的东西吗？

　不管怎样，他找不到保护自己的价值。
　当香奈枝挥出复仇一刀时，他也会毫无抵抗，甘
之若饴地承受吧。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆inc久保田：プレ分けしました

	SetVolume("SEトンデマス*", 1000, 0, null);
	CreateColorEX("くろくなる", 30000, "#000000");
	Fade("くろくなる",1500,1000,null,true);

	SoundPlay("@mbgm18",0,1000,true);

	//CP_AllDelete();
	Cockpit_AllFade0();

	PrintBG("上背景", 30000);
	CreateColorSP("くらくなる", 10000, "#000000");
	CreateColorSP("絵色黒地", 10, "#000000");
	Delete("上背景");
	Delete("くろくなる");

//◆inc久保田：プレ分けしました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
　
　　　　　　　　……无法理解。

　她最终产生了这样的想法。

　大鸟香奈枝知道，自己的行为称不上什么善行。
　她的复仇总是有理由的——但同时，她要杀的罪人
这边同样也有一两个理由。

　虽然他们犯下了足以复仇的罪行，但仅仅出于欲
望和冲动犯下罪行的人却只是少数。
　他们基本也是因为他们的正义和必然才去那样做。

　所以香奈枝执行复仇的时候，从不会趁人熟睡时袭
击或是在背后突发冷箭。
　允许罪人抵抗，允许他们为自己的正义而战。在此
基础上从正面将其粉碎。

　定罪与辩白，各占五分相互争斗的法庭。
　只有这样，复仇才是正确的。

　凑斗景明也有他的理由。
　他在自己力所能为的范围内已经竭尽全力，这一理
由是确实存在的。

　虽然只是很短的时间，但香奈枝从旁看到了这样的
他。
　他确实已经努力，竭尽了自己的全力。

　这份苦斗，
　
　——对谁，也没有好处。

　他自身并不坚持自己的道理，
　如果香奈枝只能用相反的道理否定他的话，

　
　就再也没有承认他已经尽力的人。

　凑斗景明的苦斗也不会有任何人理解，
　而会作为无价值的东西被舍弃。

　
　　　　　　　　　无法理解。

　那是与愤怒相近的心情。

　
　　　　　　　不想就这样杀掉他。

　又像是焦虑。

　
　　　　　　　　不想杀他。

　还有懊悔。

　
　　　　　　　　　不想杀。

　悲哀——

　
　　　　　　　那么，
　　　　　　　……不杀不就好了吗。

　——自我否定。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev204
//◆→ev204e。パキーン。なんか割れて壊れる描写
	CreateTextureSP("絵背景01", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_e.jpg");
	Fade("くらくなる",1000,0,null,true);

	WaitKey(1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se特殊_鎧_アベンジ_ひび割れ",1000);
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵背景02", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_f.jpg");
	Wait(50);
	Fade("フラッシュ白",0,0,null,true);

	WaitKey(1500);

//	OnSE("se特殊_雰囲気_崩壊音",1000);
//	Zoom("絵背景03", 500, 2000, 2000, null, false);
//	DrawEffect("絵背景03", 500, "Split", 0, 500, null);
//	FadeDelete("絵背景03", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　为什么要杀。

　若是不想杀为何还要杀。

　为了复仇？

　那有多大的价值。

　复仇并非唯一的正义，
　不过是世界上为数众多的正义之一。
明明很久以前就知道这点。

　为什么要执着于此？

　为什么执着到如今？

　……因为那很愉快。
　……因为<RUBY text="····">想那样做</RUBY>。

　可是香奈枝现在，
　不是产生了<RUBY text="·····">不想那样做</RUBY>的想法吗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev204f。ガラガラ。崩れる
//	CreateTextureSP("絵背景02", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_g.jpg");
//	OnSE("se特殊_雰囲気_崩壊音",1000);
//	DrawEffect("絵背景03", 1500, "Split", 0, 1000, null);
//	FadeDelete("絵背景03", 1500, true);

	OnSE("se特殊_鎧_ひび割れ01",1000);
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("絵背景03", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_g.jpg");
	Delete("絵背景01");
	Delete("絵背景02");
	Wait(50);
	Fade("フラッシュ白",0,0,null,true);
	WaitKey(1500);

	CreateTextureEX("絵演立絵左", 6100, Center, InBottom, "cg/st/st景明_通常_私服.png");
	Move("絵演立絵左", 0, @-256, @0, null, true);

	CreateTextureEX("絵演立絵右", 6100, Center, InBottom, "cg/st/st雄飛_通常_制服.png");
	Move("絵演立絵右", 0, @256, @0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　不对。不对。
　不是这样。

{	Fade("絵演立絵左", 300, 700, null, false);}
　对凑斗景明的复仇和一直以来的不同。
　是大鸟香奈枝自己的复仇。

{	Fade("絵演立絵右", 300, 700, null, false);}
　新田雄飞——
　想要保护的孩子。想让他幸福的孩子。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラッシュ白2", 15000, "WHITE");
	Fade("フラッシュ白2",600,1000,null,true);


}

..//ジャンプ指定
//次ファイル　"mc04_038.nss"