//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_033b.nss_MAIN
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
	#ev139_統を殺害_a=true;
	#ev106_雄飛と見下ろす村正_d=true;
	#bg023_弥源太の家_03a=true;
	#bg037_競技場ガレージa_01=true;
	#bg043_江ノ島山林_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_034.nss";

}

scene md06_033b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_033.nss"

//●……殺せない
	PrintBG("上背景", 30000);

	CreateColorSP("黒１", 1000, "BLACK");

	SetVolume("@m*", 100, 0, null);
	Delete("上背景");

//BGMなしはわざとです。 inc櫻井

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　憎恨。

　因恨而杀。

　这是复仇。

　村正被这个男人所杀。

　被杀害，要以命抵命。

　这是理所当然。

　因此，杀了他。

　因此，<k>
　因此，<k>
　
　只是，

　我，
  允许过谁，去履行这种理所当然的复仇吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：各種殺害記憶
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/ev/ev139_統を殺害_a.jpg");


	EfRecoIn2(300);
	
	WaitKey(1000);
	
	EfRecoIn1(18000,600);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");


	EfRecoIn2(300);

	WaitKey(1000);
	
	EfRecoIn1(18000,600);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/bg/bg023_弥源太の家_03a.jpg");
	StL(16000, @0, @0, "cg/st/stふき_通常_私服.png");
	StR(16100, @0, @0, "cg/st/stふな_通常_私服.png");
	FadeStA(0, true);


	EfRecoIn2(300);

	WaitKey(1000);
	
	EfRecoIn1(18000,600);

	Delete("絵回想*");
	DeleteStA(0,true);
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/bg/bg037_競技場ガレージa_01.jpg");
	StL(16000, @0, @0, "cg/st/st皇路_通常_私服.png");
	StR(16100, @0, @0, "cg/st/st操_通常_私服.png");
	FadeStA(0, true);


	EfRecoIn2(300);

	WaitKey(1000);


	EfRecoIn1(18000,600);

	Delete("絵回想*");
	DeleteStA(0,true);
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/bg/bg043_江ノ島山林_03.jpg");
	StR(16000, @0, @0, "cg/st/stガーゲット_通常_制服a.png");
	FadeStR(0, true);


	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoOut1(300);

	DeleteStA(0,true);
	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　无论是谁，一律杀害。
　为那些死者而悲痛的人，应该是死者人数的几倍吧。

　会有多少人，希望向凶手报复。

　但却无一人，达成这个夙愿。
　我就是这样生存的。

　无法允许别人向我寻仇，自己却又为复仇　
而杀人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_狂相.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0010a00">
（想杀死他）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　苦思冥想。
　夺走村正的这个男人，着实可恨。

　然而——杀了村正的，<RUBY text="····">唯有此人</RUBY>吗？

　从某种意义上来说，雪车町所做的事只是复仇。
　憎恨杀人的我，而想要向我报复。

　我才是诱因。

　是我导致这个男人，杀害了村正。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_狂相.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0020a00">
（杀了他）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　继续思索。
　想杀了这个男人。

　是因为村正死于这个男人之手！

　杀。
　杀了他。

　不辨是非。
　我本来就是个浸血的杀人魔。

　连妇女老少都杀。
　事到如今，就更没有理由不杀这种
放在世间都占地方的流氓。

　杀了他。
　毫不疑惑地杀了他。

　一如既往。

　杀了他。<k>
　但是。<k>
　
　过去，我之所以杀人——

　是为了封闭灾祸。

　因为坚信杀害眼前一人，就可以防范更多的　
人死于未然。

　——所以才开了杀戒。

　新田雄飞、<k>蕗和鲋、<k>
　皇路卓、<k>卡杰特少佐，皆因如此。<k>
　
{
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/ev/ev256_銀星号の最期_b.jpg");
	EfRecoIn2(300);
}
　光亦然。

　所以才去残杀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0030a00">
（是啊）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0040a00">
（是这样啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　忆起那个原点——
　我自己选择的道路。

　<RUBY text="·········">借由杀人来寻求和平</RUBY>。
　我曾立身此道。

　而现在，又如何？

　杀死这个男人，又有谁能获救？

　谁都没被拯救。

　只满足了我的复仇心。

　……即便如此还要残杀吗？

　我，<k>
　我只为消除心中之憎恶，<k>
　为救赎自身，<k>
　而夺取人命。

　而去夺取吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0050a00">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0060a00">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆石を振り下ろす
//◆ごす。土を打つ音

	OnSE("se戦闘_攻撃_野太刀振る01", 1000);

	WaitKey(1000);

	OnSE("se人体_衝撃_転倒05", 1000);

	WaitKey(1000);

	ClearWaitAll(1500, 1000);

}

..//ジャンプ指定
//次ファイル　"md06_034.nss"