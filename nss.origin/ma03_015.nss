//<continuation number="1600">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_015.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}


//	$Ichizyou_Flag = 0;
//	$Kanae_Flag = 0;
//	$Muramasa_Flag = 0;

	RouteChicker2();

//アナザー
	if($RC_N["アナザー"] < $RC_N["一条"] && $RC_N["アナザー"] < $RC_N["香奈枝"] && $RC_N["アナザー"] < $RC_N["村正"]){

//一条
	}else if($RC_N["一条"] < $RC_N["アナザー"] && $RC_N["一条"] < $RC_N["香奈枝"] && $RC_N["一条"] < $RC_N["村正"]){
		//▼一条ルートのみ
		#bg039_競技場客席a_01=true;
		#ev115_一条の髪に触れる景明_a=true;
		#ev115_一条の髪に触れる景明_b=true;
		//▼後の回想シーンmb04_023で使用します
		$Fla_ev115pass=true;

//香奈枝
	}else if($RC_N["香奈枝"] < $RC_N["アナザー"] && $RC_N["香奈枝"] < $RC_N["一条"] && $RC_N["香奈枝"] < $RC_N["村正"]){
		//▼香奈枝ルートのみ
		#bg039_競技場客席a_01=true;
		#bg035_鎌倉サーキット俯瞰a_01=true;
		#ev116_湯上り香奈枝=true;

//村正
	}else if($RC_N["村正"] < $RC_N["アナザー"] && $RC_N["村正"] < $RC_N["一条"] && $RC_N["村正"] < $RC_N["香奈枝"]){
		#bg039_競技場客席a_01=true;
		#bg035_鎌倉サーキット俯瞰a_01=true;
		#bg002_空a_01=true;
		#bg035_鎌倉サーキット俯瞰b_01=true;
	}else{
//その他

	}

	//▼ルートフラグ、選択肢、次のGameName
	if($Others_Flag  == 0 && $Kanae_Flag == 0 && $Ichizyou_Flag == 0 && $Muramasa_Flag == 0){
//嶋：※こちらこの時点でフラグなしというパターンがないので、間違いなくここには来ません【090923】
//アナザー
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_4";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($RC_N["アナザー"] < $RC_N["一条"] && $RC_N["アナザー"] < $RC_N["香奈枝"] && $RC_N["アナザー"] < $RC_N["村正"]){
//アナザー
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_4";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

//一条
	}else if($RC_N["一条"] < $RC_N["アナザー"] && $RC_N["一条"] < $RC_N["香奈枝"] && $RC_N["一条"] < $RC_N["村正"]){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_1";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

//香奈枝
	}else if($RC_N["香奈枝"] < $RC_N["アナザー"] && $RC_N["香奈枝"] < $RC_N["一条"] && $RC_N["香奈枝"] < $RC_N["村正"]){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_2";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

//村正
	}else if($RC_N["村正"] < $RC_N["アナザー"] && $RC_N["村正"] < $RC_N["一条"] && $RC_N["村正"] < $RC_N["香奈枝"]){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_3";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	if($ma03_015_routeFlag == true){$ma03_015_routeFlag = false;}
	else{$Muramasa_Flag++;SetHex();}
//その他
	}else{
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_4";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	$PreGameName = $GameName;

	$GameName = "ma03_016.nss";

}

scene ma03_015.nss
{

}



scene ma03_015.nss_1
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_014.nss"

	SoundPlay("@mbgm30",0,1000,true);

	PrintBG("上背景", 30000);

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(0,true);

	Delete("上背景");



//――――――――――――――――――――――――――――――
.//●一条
//●一条

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　从一条的点头移开视线，把注意力放回竞速上。
　没发生什么特别的事。与刚开始后一样——白热化
的竞争还在进行。

　我一时间看得入神。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(1000, 2000);

//◆ウェイト、戻り
	WaitKey(1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm27",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　眼下的状况发展下去也不会有异常变化。
　隔壁坐着一条。

　没有大鸟主从的身影。
　香奈枝小姐的头发夹了沙子，于是她去冲洗了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150010a00">
「你没关系吗。
　越野赛道上会吹来很多沙尘。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150020a02">
「我没事。
　这种程度，我不是很在意。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　若无其事地说着，一条的脸颊和头发到处沾上灰
白。
　原本是很端整的容貌，因此更加引人注意。

　她是女性。我觉得还是对外表注意些比较好……
　不过各人有各人的想法。将意见强加于人会给人带来
麻烦。

　——但是，还是很在意。
　如果是别人的话我不会管，不过现在这名少女就算是
假扮的，毕竟也是自己的部下。

　她归我保护。
　这样一想，我就无法死心随她去。

　……也算是多管闲事吧。
　我半冲动性地，伸出了手指。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条の身繕いをする景明
	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev115_一条の髪に触れる景明_a.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150030a00">
「……」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150040a02">
「……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150050a00">
「……」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150060a02">
「那、那个……
　凑斗先生？」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150070a00">
「什么。」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150080a02">
「那个，在做什么……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150090a00">
「在拿掉沙子。」

{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150100a02">
「……」

{	FwR("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150110a02">
「非、非、非常抱歉！
　劳烦你了……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一条开始慌了。
　我知道她大概在想什么。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150120a02">
「我现在就弄——」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150130a00">
「不是的。
　我不是在委婉地催促你。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　取出手帕，以没用过的那面擦拭脸上的沙子。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150140a00">
「如果你不在意的话就坐着吧。
　只是我有点在意而已。」

{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150150a02">
「……抱歉。
　我这样很难看吧。」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150160a02">
「那个，我去洗干净。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150170a00">
「我说过我不是在催你吧。」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150180a02">
「可是……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150190a00">
「其实，不难看。
　你有些地方挺不可思议的。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150200a00">
「就算弄脏了也无损你的外貌，这么说应该合
适吧……
　说起来，几次遇到你都处于无法整理外表的
情况。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　跟野狗战斗或者被武者追杀。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150210a00">
「你什么时候看起来都很漂亮。」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150220a02">
「…………」

{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150230a02">
「咦？」

{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150240a02">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ900", 4900, Center, Middle, "cg/ev/ev115_一条の髪に触れる景明_b.jpg");
	FadeDelete("絵ＥＶ100", 500, true);

	SetFwR("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150250a02">
「……!?　啊……唔……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一条又慌了。
　这次是在想些什么呢。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150260a00">
「要说的话，也许是如刀一般的美貌。
　仿佛被涂上血液和泥土般自然又美丽。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150270a00">
「我觉得你保持这样就行了，一条。
　自己不在意的话，就这样吧。」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150280a02">
「…………
　刀……」

{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150290a02">
「我看起来是那样的吗？
　在凑斗先生眼中。」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150300a00">
「是啊。
　所以作为旁人就很想<RUBY text="···">整理你</RUBY>。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　一边想着难不成这话说得很过分，一边手下不停地继续整
理着。
　幸好，感觉不到她生气。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150310a02">
「……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150320a00">
「被这样摆弄，你会有生理上的不快感吗。」

{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150330a02">
「没有……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150340a00">
「这样啊。
　那我就继续了，你介意吗。」

{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150350a02">
「……不介意。
　拜托你了。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　得到允许，手指伸向头发。
　果然沾了好多沙粒。

　一边细心注意别把头发也拔下来，一边一粒粒地将
沙粒取下扔掉。
　一条乖乖地任我打理。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150360a02">
（刀……
　第一次被这么说）

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150370a02">
（……可为什么。
　总觉得……很舒畅，很开心）

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150380a02">
（如果父亲现在还在世的话……
　就会说这样的话吧……）

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150390a02">
（我有这种感觉……）

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150400a00">
「大部分弄掉了。」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150410a02">
「……」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150420a00">
「怎么了？　一条。」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150430a02">
「……啊。
　那个。」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150440a02">
「呃……
　我觉得前面还沾着一些。」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150450a00">
「是吗？
　把头转过来。」

{	FwR("cg/fw/fw一条_笑顔b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150460a02">
「是。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150470a00">
「……」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150480a02">
「……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150490a00">
「我没看到……
　在里面吗？」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150500a02">
「……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150510a00">
「一条？」

{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150520a02">
「……有父亲的……味道……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150530a00">
「？」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150540a03">
「你们俩到底在干什么———!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆どきゃ。

	OnSE("se戦闘_攻撃_殴る02",1000);

	CreateColorSP("絵フラ", 6000, "#FFFFFF");
	Wait(1);

	PrintGO("上背景", 30000);
	CreateColorSP("絵フラ", 6000, "#FFFFFF");
	CreateTextureSP("絵振動", 200, Center, Middle, "cg/bg/bg039_競技場客席a_01.jpg");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵フラ", 200, false);
	FadeFR4("絵振動",0,1000,300,0,0,20,DxlAuto,true);
	Delete("絵振動");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　突然袭来的旋击，
　让我的头整整歪成九十度角，横着倒下去。

　非常痛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm22",0,1000,true);

	StR(1000, @300, @0,"cg/st/st香奈枝_通常_私服a.png");
	Move("@StR*", 300, @-300, @0, Dxl2, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150550a00">
「……大尉阁下。」

{	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);
	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150560a02">
「…………诶!?
　Ｇ、ＧＨＱ！　你从什么时候就在那里的！」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150570a03">
「哦～哦～哦～
　你说出了老掉牙的台词呢！」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150580a03">
「也就是说状况果然如我所见！
　你们在亲热吧！　在幽会吧！　在摸来摸去吧！
就在这大白天的！」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150590a03">
「正好趁我不在是吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　原来如此。
　被当成那样了吗。

　尝试客观把握方才的状况。

　…………难怪她会误解。
</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150600a00">
「大尉阁下。这是误会。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150610a02">
「是、是的。误会！
　只是、只是帮我弄走沙子而已。」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150620a03">
「诶——我听不到我不想听！
　我想知道的事情就只有一件！」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150630a03">
「景明大人！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150640a00">
「是。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150650a03">
「插进去了吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150660a00">
「……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150670a04">
「大小姐。
　您可真差劲。」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150680a03">
「可是可是！
　那就是核心所在啊！　要是他们俩的关系已经
不能改变的话，就没有我插进去的余地了！」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150690a03">
「顺带一说刚刚是在开玩笑哦！」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150700a02">
「你真的很差劲。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　无端变成骚乱。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(2000, 500);

//◆復帰
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　这样那样之后的结果，就是再次四人一起看竞技。
　也就是这时候——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆終了

..//ジャンプ指定
//次ファイル　"ma03_016.nss"

}

//――――――――――――――――――――――――――――――
.//●香奈枝
scene ma03_015.nss_2
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//●香奈枝

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　从一条的点头移开视线，把注意力放回竞速上。
　没发生什么特别的事。与刚开始后一样——白热化
的竞争还在进行。

　我一时间看得入神。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度ブラックアウト
	ClearWaitAll(1000, 2000);

//◆ウェイト、戻り
	WaitKey(1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm27",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　看出状况的胶着，我站起身来。
　要去小便，觉得有些尿意。

{	CreateTextureEX("絵背景110", 110, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_01.jpg");
	Fade("絵背景110", 1000, 1000, null, false);}
　我走向与环形赛道相邻的服务区。
　大鸟大尉与我同行。是想去洗掉头发上的
沙子吧。虽然头发又长又有光泽，不过似
乎因而带来的不便也很多。

　投入了大量金钱的装甲竞技也有作为绅士淑女的社交
场这一侧面，为此才设有如此豪华而又符合需求的设施。
　大尉租下了酒店的一个房间。

　方便完后，我走向那房间。
　……光看门就能推测出一晚房费的房间。

　以警官的收入要在这里住宿的话，一个月内必须得有
二十九天露宿在外才行。这已经是理解极限了。
　只是为了洗个头就租下这种房间的大尉的金钱观，光
想象就觉得很可怕。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕", 200, "Black");
	Fade("黒幕",300,1000,null,true);

//◆ＳＥ：ノック
	CreateSE("SE01","se人体_動作_ドアノック01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$ma03_15soundSE = RemainTime("SE01");
	WaitKey($ma03_15soundSE);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150710a03">
「景明大人？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150720a00">
「是。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150730a03">
「请进。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガチャ。
//◆湯上り香奈枝。後ろにタオルを持って控えるさよ？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Delete("上背景");

	CreateTextureSP("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev116_湯上り香奈枝.jpg");

	OnSE("se日常_建物_扉開く01",1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150740a03">
「请稍等。
　我很快就穿戴完毕。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150750a00">
「……好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　面对她衣衫不整的模样，我稍微屏住了呼吸。
　是洗澡了吧。白瓷的肌肤如今泛着浅粉色，并且身上
只披了一块布。

　那种东西当然无法遮住从玉肌上冒出的热气。
　蛊惑的香味甜甜地刺激着脑髓。

　可是香奈枝小姐那大概是所谓显贵的从容，完
全淡然。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150760a04">
「快穿上衣服，大小姐。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150770a03">
「哎呀，为什么？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150780a00">
「失礼了。
　我似乎太早来迎接了。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150790a04">
「这样好吗大小姐。
　作为一名妙龄女性，在被大人看到肌肤时
必须直接让暴力冲动支配您进行攻击才行。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150800a04">
「这个时刻非常残酷。
　因为必须给对手加以能使人丧失意识的打击。
另外方法上，根据空手与武器来看，比起殴打还
是投掷重物更为合适。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150810a04">
「那座青铜像之类的东西就很不错。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150820a00">
「请至少用与杯子差不多的东西砸吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　为了让自己被夺走的只有意识。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150830a03">
「婆婆真是的。
　别的人我不管，反正我跟景明大人之间不需
要那么客套吧？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150840a04">
「哎呀哎呀这可是亲密的表现方式啊。
　不过，也有像大小姐这样的接近方法。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150850a00">
「……」

{	SetComic(@0,@0,4);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150860a03">
「哎，景明大人？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteComic();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　眯起的双眸中闪着妖异的亮光。
　像猫一样的眼神。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150870a03">
「这条浴巾下的风景，您想看看吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150880a00">
「是。」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150890a03">
「呵呵呵，请别勉强哦。
　如果您诚实地命令我的话，我就——」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150900a04">
「大小姐。
  请按照脑内剧本让对话进行不下去。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150910a03">
「…………」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150920a03">
「哎呀？」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150930a03">
「……呃……
　景明大人？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150940a00">
「我喜欢女性。
　热别是，像大尉这样美丽的人。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150950a00">
「如果您能让我看您的裸体的话，我会欣然
观赏的。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150960a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150970a04">
「凑斗大人……
　我推测过您会比初次见面时更加沉默而好色，
没想到实际上您连沉默也没了只剩好色了。」

{	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150980a04">
「真不能小看您。
　我纱代，心服口服。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150990a00">
「感谢夸奖。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151000a03">
「呃呃……那个……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151010a04">
「景明大人。这是礼仪哦。
　请先把门关上吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151020a00">
「这可真是失礼了。
　我没有注意到。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばたん。
//嶋：開けっ放しだったドアを閉めた
	OnSE("se日常_建物_扉閉める01",1000);
//	CreateColorSP("絵暗転", 15000, "#000000");
//	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151030a03">
「…………」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151040a04">
「来，请吧。
　大小姐。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151050a03">
「请、请什么……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151060a04">
「嗬嗬嗬。怎么样大小姐。
　趁刚刚的势头，上吧。」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151070a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151080a04">
「哎呀哎呀……
　这是怎么了呢。」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151090a04">
「我纱代的主人本不应是光说不练的女子才对
啊。
　……凑斗大人，您明白原因吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151100a00">
「是。
　……大概明白。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151110a04">
「真不愧是大人。
　嗯……按大小姐的步调让对话进行的话，就会
笑着让您看到她的肌肤了吧。」

{	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151120a04">
「可这是怎么回事，竟会发展至此暴露出弱点。
　大小姐一旦转攻为守就会非常弱。」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151130a03">
「婆婆！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151140a04">
「嗬嗬嗬。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151150a00">
「……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151160a03">
「那、那个，景明大人？
　该怎么说呢，是这里有点缺少气氛呢，还是
支配少女心跳加速的第五元素『萌』的含量在
恰当值之下呢。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151170a03">
「因此那个……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151180a04">
「您在逃避。
　您正在全力逃避哦，大小姐。」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151190a03">
「才才才没逃避！
　我、我知道了。请稍等。」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151200a03">
「没、没关系……
　又没什么特别的。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151210a03">
「吸—呼—吸—呼—……
　那、那就……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151220a00">
「恕我无礼。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151230a03">
「——什么？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151240a00">
「玩笑开过头了。
　我在外面等您。请继续穿衣打扮。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151250a04">
「是。
　我们很快就好。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151260a00">
「您慢慢来。
　失礼了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateColorSP("絵暗転", 15000, "Black");

//◆ばたん。
	OnSE("se日常_建物_扉開く01",1000);
	Fade("絵暗転", 0, 1000, null, false);
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnSE("se日常_建物_扉閉める01",1000);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151270a03">
「……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151280a04">
「来，大小姐，换衣服吧。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151290a03">
「…………这是什么。
　我感觉到如此无可奈何又乱七八糟的失败感。」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151300a04">
「是您输了。
　大小姐您还太嫩了呢。」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//◆悔しそうに
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151310a03">
「……哼。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(2000, 500);

//◆観客席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　方便完，回到观众席。
　……正在这时候——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆終了

..//ジャンプ指定
//次ファイル　"ma03_016.nss"


}

//――――――――――――――――――――――――――――――
.//●村正
scene ma03_015.nss_3
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//●村正

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　从一条的点头移开视线，把注意力放回竞速上。
　没发生什么特别的事。与刚开始后一样——白热化
的竞争还在进行。

　我一时间看得入神。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度ブラックアウト
	ClearWaitAll(1000, 2000);

//◆ウェイト、戻り
	WaitKey(1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　看出状况的胶着，我站起身来。
　谢绝了他人同行，向着控制塔的方向走去。

　我要去看看村正的情况。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆競技場俯瞰

	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151320a00">
「……村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151330a01">
《主君。
　怎么了。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　不用说，它早就发觉我的接近了吧。
　全然不见惊讶，深红色的蜘蛛用<RUBY text="Metal Echo">剑胄传音</RUBY>问道。

　操控者与剑胄是二者为一体的武者。
　一旦通过佩刀礼将两人联系起来，无论多远的距离多
大的障碍都无法将二者的联系割裂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151340a00">
「没什么大事。
　我来稍微看看情况。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151350a01">
《是吗。
　没有异常哦。没看到寄生体。当然也没看
到银星号。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　村正淡淡地回答道，并将头转向环道的方向。
　不过它现在，并未看着那边。

　我这么觉得。
　也不是对蜘蛛的复眼已了若指掌，我只是有这种感觉。
也许是与村正之间无形的联系向我传达了某些感觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151360a00">
「你在看什么？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151370a01">
《……你知道？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151380a00">
「我并不是在责备你。
　总觉得我能察觉到你在走神。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151390a01">
《非常抱歉。
　新骑体出现的话我会好好注意的，请别担心。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151400a00">
「我本来就没在担心。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151410a01">
《是吗……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151420a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151430a01">
《……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151440a01">
《……我在看街道。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151450a00">
「镰仓吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151460a01">
《嗯。
　觉得变化真大啊。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151470a00">
「以前，你也见过吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151480a01">
《……嗯。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg002_空a_01.jpg");
	FadeBG(1000,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　当时是怎样的呢。
　我正想这么问，但还是没问出口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151490a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151500a01">
《你没问。》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151510a00">
「也没什么好问的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151520a01">
《……呵呵。
　今天好像心情容易感染呢。》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151530a00">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　到此不再开口。
　两人只听着风声。

　——村正作为人类所生存的时代，战火纷飞。
　当时镰仓的情况，一定……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151540a00">
「……我差不多该回去了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151550a01">
《嗯。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151560a00">
「话说回来。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151570a01">
《什么事？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151580a00">
「我到底该怎么回去啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆サーキット場遠景
//◆コントロールタワー上に矢印をぴっと

	SetVolume("@mbgm*", 100, 0, null);

	CreateTextureSP("絵Ｅ背景", 3000, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰b_01.jpg");
	Wait(600);
	Fade("絵Ｅ背景", 0, 0, null, true);

	Wait(600);

	Fade("絵Ｅ背景", 0, 1000, null, true);
	Wait(600);
	Fade("絵Ｅ背景", 0, 0, null, true);

	Wait(600);

	Fade("絵Ｅ背景", 0, 1000, null, true);

	Wait(600);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151590a00">
「从这里。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151600a01">
《……你原来是怎么爬上来的？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(2000, 500);

//◆村正好感度＋
	$ma03_015_routeFlag = true;
	$Muramasa_Flag++;

	judgment_of_count();

//◆観客席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　结果我由村正帮忙下到地面，回到了观众席。
　……正在这时侯。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆終了


..//ジャンプ指定
//次ファイル　"ma03_016.nss"


}



//――――――――――――――――――――――――――――――
.//●イベント無し
//※嶋：こちらこの時点でフラグなしというパターンがないので、間違いなくここには来ません【090923】
scene ma03_015.nss_4
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//●イベント無し

	SetVolume("@mbgm*", 2000, 0, null);
	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]  
　从一条的点头移开视线，把注意力放回竞速上。
　……正在这时候——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆終了

..//ジャンプ指定
//次ファイル　"ma03_016.nss"

}



