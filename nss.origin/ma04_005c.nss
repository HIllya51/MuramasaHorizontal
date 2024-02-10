//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005c.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
//嶋：フラグ挿入
	$Sayo_Flag++;

	$PreGameName = $GameName;

	$GameName = "ma04_005z.nss";

}

scene ma04_005c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_005.nss"


//●ばあや
	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	CreateTextureSP("絵ＥＶ200", 5100, Center, middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_l.jpg");

	Zoom("絵ＥＶ200", 0, 500, 500, null, true);

	Wait(16);

	FadeDelete("上背景", 500, false);
	Zoom("絵ＥＶ200", 1000, 1000, 1000, Dxl1, false);
	Move("絵ＥＶ200", 1000, -200, 0, Dxl1, true);


	SetFwR("cg/fw/fw香奈枝_ショック.png");
	SetComic(@+250,@0,8);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005c0010a03">
「我说你怎么看那边啊！」

{	DeleteComic();
	FwR("cg/fw/fwさよ_照れ.png");
	SetComic(@+250,@0,13);}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0020a04">
「被男士目不转睛盯视的快感……
　作为女人，无论到了什么年纪都会感到高兴。」

{	DeleteComic();
	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005c0030a02">
「等等，婆婆你刚才是不是用了奇怪的词？
　该说是奇怪还是不相称，
你好歹也有点自知之明吧！」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0040a00">
「那是……夏威夷衫呢。
　跟您爽朗的性格很是相称。」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0050a04">
「呵呵呵，凑斗大人真是机敏。」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0060a00">
「我只是实话实说……」

{	FwR("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0070a04">
「……我可是会当真的哦？」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0080a00">
「请随意。」

{	FwR("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0090a04">
「不能淘气哦。
　年轻人……」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0100a00">
「淘气……」

{	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005c0110a03">
「喂——！
　那边的两个人，等一下——！」

{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005c0120a02">
「凑斗先生，快恢复正常！
　是中暑吗！　头脑很混乱吗？
有没有觉得脑浆好像整个熬成了一锅浆糊？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0130a00">
「我倒觉得没有。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　如果真是如此，你难道有什么办法吗。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);
	Fade("絵ＥＶ100", 500, 1000, null, true);
	Delete("絵ＥＶ200");

	SetFwR("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0140a00">
「我只是在夸赞侍从阁下的服装而已。」

{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005c0150a03">
「我倒是完全没听出来……」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005c0160a02">
「虽然从字面上来说的确如此……字里行间所
隐藏的真意却无比丰富……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0170a00">
「你说得真复杂。」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0180a04">
「凑斗大人……这件事之后再聊。
　等我们两人单独相处的时候。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0190a00">
「是。」

{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005c0200a02">
「不对，所以说就是这里！
　就是这里啊凑斗先生！
　就是这字里行间的深意！」

{	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005c0210a03">
「如果就此埋下了什么伏笔，发展到后来出
现了什么奇怪的场景，您要怎么负责？
　景明大人好轻率！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　就算她这么说。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


//◆ばあやフラグＯＮ
//$Sayo_Flag = $Sayo_Flag++;

..//ジャンプ指定
//次ファイル　"ma04_005z.nss"

}


