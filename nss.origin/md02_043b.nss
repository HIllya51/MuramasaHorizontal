//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_043b.nss_MAIN
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
	#ev128_病床の光_h=true;
	#ev128_病床の光_i=true;
	#bg097_堀越御所内景明の部屋_01=true;
	#bg047_景明故郷町a_01=true;
	#bg047_景明故郷町a_03=true;
	#bg051_湊斗家居間_03a=true;
	#bg052_湊斗家道場_01=true;
	#bg023_弥源太の家_03b=true;
	#ev106_雄飛と見下ろす村正_a=true;
	#ev106_雄飛と見下ろす村正_d=true;
	#ev128_病床の光_g02=true;
	#bg053_堀越御所の庭_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_044.nss";

}

scene md02_043b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_043.nss"


//●……なれない
	PrintBG("上背景", 30000);
	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　杀掉光。
　不得不杀掉。

　若凑斗景明的心成为障碍的话，即便扼杀掉……

　若让其继续活下去的话，光还会成为银星号……
　夺取无数人的性命。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0010a00">
（不得不杀掉）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　但，

　为何，

　光一定要死!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ
//◆回想
	EfRecoIn1(18000,300);
	SoundPlay("@mbgm31", 0, 1000, true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg047_景明故郷町a_03.jpg");

	EfRecoIn2(800);


	SetFwC("cg/fw/fw景明_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0020a00">
「喂、喂。
　不要吊在我脖子上！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/043b0030a14">
「我拒绝！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0040a00">
「这样就不能走路了！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/043b0050a14">
「走走看啦！
　只有这种程度怎么能赢得了光呢！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想

	EfRecoIn1(18000,300);

	Delete("絵回想*");


	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg051_湊斗家居間_03a.jpg");

	EfRecoIn2(800);

	SetFwC("cg/fw/fw光三年前_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/md02/043b0060a14">
「景明。
　虽说是只有两个人的饭桌，但也
不用过分拘束。快点吃吧。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0070a00">
「两个人？」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/md02/043b0080b46">
「咦……我被当作空气了吗……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/043b0090a14">
「就是两个人。
　如果你无论如何都很在意那个<RUBY text="·····">根本不存在</RUBY>的
第三者的话就告诉我。就算无视物质守恒定律，
我也会将她从这个宇宙完全抹消的。」

{	FwC("cg/fw/fw統_泣き.png");}
//【統】
<voice name="統" class="統" src="voice/md02/043b0100b46">
「对不起。我会静下来吃饭的。
　我是不存在的……妈妈并不在
这里……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0110a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoIn1(18000,300);

//◆回想
	Delete("絵回想*");


	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg052_湊斗家道場_01.jpg");

	EfRecoIn2(600);



	SetFwC("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md02/043b0120a14">
「……景明。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0130a00">
「嗯？」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/043b0140a14">
「光……见得到父亲吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0150a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵回想*");
	Delete("Memory_cover");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	EfRecoOut2(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　光做了什么？
　<RUBY text="···">这个光</RUBY>究竟做了什么？

　光的世界从三年前就停止了。
　从少女独自一人在乡间居住的时候，便再没前进一步。

　这之后的事不存在光的个人想法。

　杀戮者银星号仅是一个梦。
　即便破坏现实世界，在本人看来不过是在梦中的事而已。

　为什么要对其问罪？
　怎样的法律能裁定梦中行为的罪？ 

　无罪。

　凑斗光没有一点罪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0160a00">
（即便如此）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　一定要杀了她。
　并非我的心，而是我的过去告诉我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("黒幕１", 50, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	FadeDelete("@OnBG*",1500,true);

//◆新田雄飛
//◆ふき
//◆ふな
	CreateTextureEX("絵演01", 3100, @600, @220, "cg/st/stふき_通常_私服.png");
	Fade("絵演01", 300, 500, null, false);
	CreateTextureEX("絵演02", 3101, @800, @290, "cg/st/stふな_通常_私服.png");
	Fade("絵演02", 300, 500, null, false);
	CreateTextureEX("絵演03", 3102, @150, @190, "cg/st/st雄飛_通常_制服.png");
	Fade("絵演03", 300, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　与光一样，毫无罪孽的人。
　那些人的生命，曾被我夺去。

　在更多的人失去生命前，杀掉。

　状况，条件都与现在完全相同。
　若不杀掉光，会有更多的人丧失性命。

　所以，必须这样做。

　为了不败坏新田雄飞的名声。
　为了不败坏蕗和鲋两姐妹的名声。

　杀掉。

　用这双手了结凑斗光的生命。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "#990000");
	Fade("フラッシュ白",200,1000,null,true);

//■消してからフラッシュのほうが良いかしら inc櫻井
	Delete("絵演*");

//◆ＣＧ差分：光の首に両手

	CreateTextureEX("病床2", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateSE("SE01","se人体_動作_締める01");

	Fade("病床2", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 2000, 0, 0, Dxl3, false);
	Fade("フラッシュ白",1000,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　无我。

　摒弃凑斗景明。

　贯彻英雄。

　杀。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateSE("SE01","se人体_動作_締める02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 2000, 0, 0, Dxl3, false);

	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　杀。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 2000, 0, 0, Dxl3, false);

	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　杀。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ

	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 2000, 0, 0, Dxl3, false);

	Fade("フラッシュ白",300,0,null,true);

	SetFwR("cg/fw/fw景明_狂怒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0170a00">
「啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆ホワイトアウト
	Fade("フラッシュ白",0,1000,null,true);

//◆べき、ぼき。骨が幾本も砕ける音

	OnSE("se人体_体_骨複数砕ける01", 1000);

	Wait(2000);

//◆ＣＧ差分：両手、光の首から離れて布団に押し付け
//◆られている。折れて変な方向に
//◆ホワイトイン

	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_i.jpg");
	Fade("病床3", 0, 1000, null, true);
	Delete("病床2");
	Fade("フラッシュ白",2000,0,null,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　办不到。

　办不到!!

　怎么可能办得到!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);
	FadeDelete("病床*",1000,true); 

//	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");
//	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
//	FadeStL(300, false);
//	FadeStR(300, false);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/043b0180a01">
「……主君。」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/043b0190a07">
「哥哥……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　断罪的声音响起。

　狂暴的响声，揭露着我的矛盾与利己之心。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正→ふき、ふな
//◆幻覚っぽく

	SoundPlay("@mbgm04", 0, 1000, true);

//■ここ以降の回想演出はEfRecoIn系のコマンドを使用すると鳴る音が微妙に雰囲気と合っていないので使用していません。 inc櫻井


	FadeDelete(@StR*,1000,false);
	CreateTextureEX("絵演01", 1100, @600, @220, "cg/st/stふき_通常_私服.png");
	Fade("絵演01", 2000, 800, null, false);
	CreateTextureEX("絵演02", 1101, @800, @290, "cg/st/stふな_通常_私服.png");
	Fade("絵演02", 1000, 800, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　
　　　　　　　　　　“懦弱的家伙。”

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　原谅我。

　
　　　　　　　“若是其他人就能下手。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("フラッシュ白", 15000, "#990000");
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg023_弥源太の家_03b.jpg");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");
	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);

//◆戻り



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　请原谅我。

　
　　　　　“不能杀自己的家人啊。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("フラッシュ白",0,1000,null,true);
	Delete("Memory_cover");
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");

	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　不行。
　不管怎样，还是不行。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	Fade("フラッシュ白",0,1000,null,true);

	Delete("Memory_cover");
	Delete("絵回想*");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

//◆茶々丸→雄飛

	FadeDelete(@StL*,1000,false);
	CreateTextureEX("絵演03", 1102, @150, @190, "cg/st/st雄飛_通常_制服.png");
	Fade("絵演03", 1000, 800, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　
　　　　　　　　　“不行……？”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "#990000");
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_a.jpg");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");
	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　不行。

　
　　　　“明明只是折断那脖子而已哦？”

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　办不到。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_攻撃_刀振る02", 1000);
//	SL_right(@0,@0,2500);
//	SL_rightfade2(10);
	CreateTextureSPadd("絵EF100", 6500, Center, 100, "cg/ef/ef014_汎用横軌道.jpg");
//	OnSE("se戦闘_攻撃_刀振る01",1000);
	Fade("絵EF100", 0, 1000, null, true);
	DrawDelete("絵EF100", 50, 100, "slide_01_00_0", true);

	CreateTextureEX("絵回想900", 2001, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");
	Fade("絵回想900", 300, 1000, null, true);

	WaitKey(1000);
	OnSE("se人体_衝撃_転倒02", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　
　　　　　　“明明都砍了我的脖子哦？”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵演0*");

	Delete("Memory_cover");
	Delete("絵回想*");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕１", 500, "BLACK");
	Fade("黒幕１", 1500, 1000, null, false);

	FadeDelete("@OnBG*",1500,true);

//◆雄飛、ふき、ふな

	CreateTextureEX("絵演飛", 1000, 85, -230, "cg/st/resize/st雄飛_通常_制服l.png");
	Move("絵演飛", 6000, 0, @0, DxlAuto, false);
	Fade("絵演飛", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270a]
　
　　　　　　　　　　“杀。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演ふき", 1010, 350, -260, "cg/st/resize/stふき_通常_私服lm.png");
	Move("絵演ふき", 6000, 430, @0, DxlAuto, false);
	Fade("絵演ふき", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270b]
　
　　　　　　　　　　“杀掉。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演ふな", 1020, 130, -240, "cg/st/resize/stふな_通常_私服lm.png");
	Move("絵演ふな", 6000, 50, @0, DxlAuto, false);
	Fade("絵演ふな", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270c]
　
　　　　　　　　　“杀掉吧。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Delete("絵演飛");
	Delete("絵演ふ*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270d]
　
　　　　　　　　　“就像。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演型元", 1000, Center, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateStencil("絵演型",1010,center,InBottom,128,"cg/st/st雄飛_通常_制服.png",false);
	SetAlias("絵演型","絵演型");
	CreateTextureSPover("絵演型/絵演血", 1100, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("絵演型/色", 1050, "#990000");

	Fade("絵演型/絵演血", 0, 750, null, true);
	Fade("絵演型/色", 0, 950, null, true);
	DrawTransition("絵演型/色", 0, 0, 450, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演型*", 0, @-256, @0, null, true);

	CreateTextureSP("絵演鬼型元", 1000, Center, InBottom, "cg/st/stふき_通常_私服.png");
	CreateStencil("絵演鬼型",1010,center,InBottom,128,"cg/st/stふき_通常_私服.png",false);
	SetAlias("絵演鬼型","絵演鬼型");
	CreateTextureSPover("絵演鬼型/絵演鬼血", 1100, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("絵演鬼型/色", 1050, "#990000");

	Fade("絵演鬼型/絵演鬼血", 0, 750, null, true);
	Fade("絵演鬼型/色", 0, 950, null, true);
	DrawTransition("絵演鬼型/色", 0, 0, 450, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演鬼型*", 0, @186, @0, null, true);

	CreateTextureSP("絵演菜型元", 1200, Center, InBottom, "cg/st/stふな_通常_私服.png");
	CreateStencil("絵演菜型",1210,center,InBottom,128,"cg/st/stふな_通常_私服.png",false);
	SetAlias("絵演菜型","絵演菜型");
	CreateTextureSPover("絵演菜型/絵演菜血", 1300, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("絵演菜型/色", 1350, "#990000");

	Fade("絵演菜型/絵演菜血", 0, 750, null, true);
	Fade("絵演菜型/色", 0, 950, null, true);
	DrawTransition("絵演菜型/色", 0, 0, 450, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演菜型*", 1, @316, @0, null, true);

	CreateSE("SE01","se特殊_ヒロイン_惨殺02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("絵色黒");

	CreatePlainEX("絵板写", 5000);
	Zoom("絵板写", 6000, 1100, 1100, null, false);

	MoveFFP1("@絵板写",10000);

	Fade("絵板写", 3000, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270e]
　
　　　　“杀我们的时候那样。”

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　原谅我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　
　　　　　　　　　“无法原谅。”

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　拜托，请原谅我。

　
　　　　　　　　“怎么可能原谅。”

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　原——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　
　　　　　　　　　　“杀。”

　
　　　　　　　　　　“杀掉。”

　
　　　　　　　　　　“来。”

　
　　　　　　　　　　“快点!!”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//銀星号事件は使ってはいけない。

	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演汚染", 4100, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	Delete("絵演汚染上");

//◆ＣＧ：病床光

	CreateColorEX("フラッシュ白", 15000, "#990000");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵演*");
	Delete("絵板*");
	MoveFFP1stop();
	CreateTextureEX("病床2", 1000, @0, @0, "cg/ev/ev128_病床の光_g02.jpg");
	Fade("病床2", 0, 1000, null, true);

	Fade("フラッシュ白",300,0,null,true);

	Wait(500);

	SetFwC("cg/fw/fw景明_狂相.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0200a00">
「唔——」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0210a00">
「咯啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がばっ。だっ。
//◆光を抱えて走り出した。
//◆庭

	OnSE("se人体_動作_抱きつき01", 1000);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 10, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	Wait(100);

	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	CreateColorSP("黒幕２", 25000, "#000000");
	DrawTransition("黒幕２", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("恨み");
	Delete("病床2");
	Delete("黒幕１");
	OnBG(100, "bg053_堀越御所の庭_02.jpg");
	FadeBG(0, true);
	
	DrawTransition("黒幕２", 150, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("黒幕２");

	SetVolume("SE*", 3000, 0, null);

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/043b0220a01">
「主君!?」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/043b0230a01">
「等下……不要走!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//銀星号事件使いたいが、無理そうなので別の画像。
	CreateTextureEXsub("絵演１", 450, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	Zoom("絵演１", 0, 1500, 1500, null, false);

	CreateColorEX("絵色399", 399, "#CC0000");
	Fade("絵色399", 5000, 750, null, false);
	Fade("絵演１", 5000, 1000, null, false);



	CreateStencil("マスク１",100,600,220,128,"cg/st/stふき_通常_私服.png",false);
	SetAlias("マスク１","マスク１");
	CreateColorSP("マスク１/logoM001", 400, "BLACK");
	Fade("マスク１/logoM001", 400, 0, null, false);

	CreateStencil("マスク２",100,800,290,128,"cg/st/stふな_通常_私服.png",false);
	SetAlias("マスク２","マスク２");
	CreateColorSP("マスク２/logoM002", 400, "BLACK");
	Fade("マスク２/logoM002", 400, 0, null, false);

//310を0いじれば首ありに

	CreateStencil("マスク３",100,150,190,128,"cg/st/st雄飛_通常_制服.png",false);
	SetAlias("マスク３","マスク３");
	CreateColor("マスク３/logoM00", 150, 0, 310, 1024, 576, "Black");
	SetAlias("マスク３/logoM00","マスク３/logoM00");

	Fade("マスク３/logoM003", 400, 0, null, false);


	Fade("マスク１/logoM001", 0, 0, Dxl1, false);
	Fade("マスク１/logoM001", 0, 500, Dxl1, false);

	Fade("マスク２/logoM002", 0, 0, Dxl1, false);
	Fade("マスク２/logoM002", 0, 500, Dxl1, false);

	Fade("マスク３/logoM003", 0, 0, Dxl1, false);
	Fade("マスク３/logoM003", 0, 500, Dxl1, false);

	DrawEffect("絵演１", 3600000, "HighWave", 30, 30, null);

	OnSE("se人体_足音_走る07", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　声音追了上来。

　不逃的话。

　被抓住的话，就完了。
　会被杀掉。

　光会被杀掉。

　不行不行不行。
　怎能让她被杀掉。

　光由我来保护。

　像这样——
　只要在我怀里，谁也不能杀掉她。

　谁也不能杀掉。

　保护光。
　因为我必须保护她。

　声音一直追过来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
“杀。”<k>　　　　　　　　　“杀。”<k>
　　　　　　“杀。”<k>
　　　　　　　　　　　“杀。”<k>
　　“杀。”

</PRE>
	SetTextEXCColor("#990000");
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　声音一直追过来。
　充满可怕的愤怒与诅咒，在我背后威吓着。

　要逃。

　逃到那声音追不到的地方。

　——如果没有那样的地方。

　便永远持续着逃亡……
　抱着光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆はしるーはしるー。

	SetVolume("@mbgm*", 3000, 0, null);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md02_044.nss"