//<continuation number="70">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_014.nss_MAIN
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
	#bg041_片瀬海岸_01=true;
	#bg049_景明故郷住宅地a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_015.nss";

}

scene mb03_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_013.nss"

//◆海岸
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　经过平稳的航海之后，我们到达了浦安。
　按照计划坐上巴士驶往浮桥。从那里沿海岸行走。

　从习志野到美滨……
　位于房总半岛根部的小弓正好就在那前方。

　多亏了阳光的照射，寒冷的海风并不是难以抵抗。这
路走得还算顺当。
　虽然时不时与幕军擦肩而过，但也没引起什么麻烦，
以无事告终。

　看来可以顺利到达目的地了。
　
　
　……这样的预期，会不会为时尚早。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 2000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "BLACK");


//◆ＳＥ：無線オン
	CreateSE("SE01","se日常_機械_無線通信03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	CreateSE("SE01","se日常_機械_無線通信02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("上背景");
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/0140010e112">
「习志野分队、鬼蜻前来报告。
　发现目标。」


//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/0140020e112">
「……确认“曾我兄弟”两位。
　没有随行之人。」


//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/0140030e112">
「请求接下来的指示。{Wait(2500);}<BR>　
……明白。按照计划Ｄ迎接袭击。」


//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/0140040e112">
「立即开始作战。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆無線オフ
	CreateSE("SE01","se日常_機械_無線通信05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	Wait(2000);

//◆沿岸道。適当に使い回し。bg049とか
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　以为能顺利到达小弓，果然是如意算盘打过了头。
　至今任由我们侵入的沿岸道路处于美滨中段，被小弓
军的一分队所封锁，不能再往前行了。

　距离小弓公方府还有十几公里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0140050a00">
「……这是怎么回事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一看到封锁就往回的话容易遭人怀疑。我和一条维持
原样装成普通路人不断接近，理所当然遭遇驱逐之后，
现在踏上了相反的方向。
　如果继续这样走下去的话就会返回浦安了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0140060a02">
「稍微往回走一点不是有个咖啡厅吗。要不要
暂且先去那里？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0140070a00">
「就这么办。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　看地理布局，这店瞄准的是前来享受海水浴的客人，
因为季节的关系，虽门可罗雀，但总算还在营业。
　暂且先坐下商讨下对策，这地方正合适。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"mb03_015.nss"