//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_031.nss_MAIN
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
	#ev200_香奈枝最初の殺戮=true;
	#ev201_香奈枝血の涙=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_032.nss";

}

scene mc04_031.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc04_030.nss"


//◆山荘

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景30", 10, Center, Middle, "cg/bg/bg091_山荘の一室_01.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	OnSE("se人体_動作_布絞る", 1000);
	WaitKey(2000);
	StL(1000,@0,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0310010a04">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　永仓纱代突然停下正在清扫的手。

　地板上，有一块很小的黑斑。
　就像以前的血痕。

　那个事件之后，被弄脏的地板应该已经被全部剥去，
铺上了全新的地板才对。
　
　然而——还是有遗漏吗。

　那个事件应该是将近二十年前的旧事。
　还是把这看作全无关系的普通污渍比较自然。

　不过，老侍从还是不由得产生联想。
　从那个痕迹————想到那一天的情景。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆死屍累々。中央に背を向けた少女。手に長銃

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想01", 5000, Center, Middle, "cg/ev/ev200_香奈枝最初の殺戮.jpg");
	SoundPlay("@mbgm18",0,1000,true);

	EfRecoIn2(300);
	DeleteStA(0,true);

	WaitKey(1000);

	SetNwR("cg/fw/nw香奈枝.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310020a03">
『婆婆……奇怪。
　好奇怪哦。』

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310030a03">
『这些人，没有避开子弹呢。』

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310040a03">
『那种东西，<RUBY text="·····">好好看的话</RUBY>，
明明很容易就可以避开的……』

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310050a03">
『对吧？』

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310060a03">
『那个，婆婆——』

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆振り向いた少女。眼より下のみ。血の涙が幾筋も？
	CreateTextureEX("絵回想02", 6000, Center, Middle, "cg/ev/ev201_香奈枝血の涙.jpg");
	Fade("絵回想02",1000,1000,null,true);
	WaitKey(1000);

	SetNwR("cg/fw/nw香奈枝.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0310070a03">
『为何这些人……
　不能像我一样，让时间静止下来呢？』

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	SetVolume("@mbgm*", 500, 0, null);


	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　汗毛倒竖。
　手指不住颤抖，手中的抹布掉到地上。

　那段记忆。
　这份恐惧，不管何时挖掘出来都是如此鲜明强烈。

　没有任何磨耗。
　恐怕——直到永仓纱代终有一天结束生命的时候，
也不会褪色吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0310080a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　看着迅速被染成灰色的窗外风景。
　在那里拉开帷幕的战斗，绝不会以主人败北这种形
式闭幕。侍从心中对此深深地确信。

　————如果，真会有那种结局的话。
　
　那也只有在纱代的主人凭自己意愿选择败北的时候。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc04_032.nss"