//<continuation number="560">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_041.nss_MAIN
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
	#bg002_空a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_042.nss";

}

scene md04_041.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_040.nss"


//◆空
//◆銘伏

/*
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm37", 0, 1000, true);

	Delete("上背景");
//	FadeDelete("黒幕１",1500,true);
	DrawDelete("黒幕１", 300, 100, "slide_02_01_0", true);


//■他キャラは表示しないで無線で会話？　inc櫻井
	OnSE("se戦闘_動作_空突進03", 1000);

	StL(1500, @-700, @500, "cg/st/3d銘伏_騎航_抜刀.png");
	FadeStL(300, false);
	Shake("@StL*", 1000000, 1, 1, 0, 0, 1000, null, false);

	CreateTextureEX("やられ役02", 900, @-850, @-300, "cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
	CreateTextureEX("やられ役03", 800, @-850, @-600, "cg/st/3d九四式竜騎兵_騎航_戦闘a.png");

	Fade("やられ役02", 0, 1000, null, false);
	Fade("やられ役03", 0, 1000, null, false);

	Zoom("やられ役02", 0, 500, 500, null, false);
	Zoom("やられ役03", 0, 250, 250, null, false);

	Shake("やられ役*", 10000000, 1, 1, 0, 0, 1000, AxlDxl, false);

	Move("やられ役02", 300, @1000, @0, null, true);
	Move("やられ役02", 300, @-50, @0, null, false);

	Move("やられ役03", 300, @1000, @0, null, true);
	Move("やられ役03", 300, @-50, @0, null, false);


	CreateSE("飛行", "se戦闘_動作_空走行01_L");
	MusicStart("飛行", 0, 1000, 0, 1000, null,true);

	Move("@StL*", 300, @850, @-100, null, true);
	Move("@StL*", 500, @-150, @100, DxlAuto, true);

*/

	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 30000, "#000000");
	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm37", 0, 1000, true);

	Delete("上背景");

//	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵色100");
	Delete("絵演*");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("カメラ１/やられ役*");


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



//	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d銘伏_騎航_抜刀.png");
	CreateTextureEX("やられ役01a", 2000, -114, -385, "cg/st/3d銘伏_騎航_抜刀.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
	CreateTextureEX("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	CreateTextureEX("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
//	CreateTextureEX("カメラ１/やられ役01b", 500,  @200, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役02b", 350,  @400, @-0, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役03b", 200,  @400, @-300, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役04b", 100,  @500, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");

//	Fade("カメラ１/やられ役01a", 0, 1000, null, false);
	Fade("やられ役01a", 0, 1000, null, false);
	Fade("カメラ１/やられ役02a", 0, 1000, null, false);
	Fade("カメラ１/やられ役03a", 0, 1000, null, false);
	Fade("カメラ１/やられ役04a", 0, 1000, null, false);

	SetVertex("やられ役01a", @-2000, @1550);

	Zoom("やられ役01a", 0, 800, 800, null, true);
	Zoom("カメラ１/やられ役02*", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03*", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04*", 0, 250, 250, null, false);

//	Move("カメラ１/やられ役01*", 0, -41, -218, null, true);
	Move("カメラ１/やられ役02*", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03*", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04*", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進06", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 0, 700, 0, 1000, null,true);


$ループムーブナット名 = "@やられ役01*";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02*";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@カメラ１/やられ役03*";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@カメラ１/やられ役04*";
$ループムーブタイム４ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	CreateProcess("プロセス３", 150, 0, 0, "FlyMoving3");
	CreateProcess("プロセス４", 150, 0, 0, "FlyMoving4");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);

	MoveCamera("@カメラ１", 0, 500, 50, @0, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	Zoom("やられ役01a", 1500, 1000, 1000, Dxl1, false);
	MoveCamera("@カメラ１", 1500, 100, 200, @300, Dxl1, true);
	Delete("黒幕１");
	SetBlur("カメラ１/やられ役0*", true, 1, 500, 100, false);
	SetBlur("やられ役01a", true, 1, 500, 100, false);

	Wait(500);

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410010a06">
「…………」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410020a06">
（是吗……）

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410030a06">
（这是……你做的吗，茶茶丸）

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410040e195">
《大、大人……
　零零式——全部！变成银色了！》

//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410050e195">
《已经失去控制！》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410060e196">
《这样下去……阵势就……
　大人，现在该怎么办?!》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410070a06">
「……」

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410080e195">
《怎么回事……
　为什么会这样……》

//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410090e195">
《因为是新型吗？ 
　ＣＰＵ是不是有什么致命缺陷——》

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410100a06">
《不。
　我们只是被背叛了而已。》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410110e195">
《啥？》

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410120a06">
（只是背叛而已。
　……就像我曾经所做的）

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410130a06">
（这次<RUBY text="···">轮到我</RUBY>了。
　仅此而已）

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410140a06">
（我一直重复着背叛和谋杀的勾当，最终
则被人背叛，然后走向灭亡。
　算了……我就知道会是这样）

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410150a06">
（即使我的信念毫无阴霾）

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410160a06">
（既然我坚持自己的正义，干掉了挡路的人。
　那么，我挡了别人的正义，别人当然会把我
当成碍事的家伙干掉）

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410170a06">
（结果还是由力量强弱决定）

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410180a06">
（我一路得胜走到这一步，并不是因为正义在
我手中，只不过是因为我比对方强而已……）

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410190a06">
（一旦对方比自己强……
　我就会被背叛，被干掉，失败告终）

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410200a06">
（哼。对方竟然是茶茶丸。
　那就使坏来输给她吧）

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410210a06">
（连凑斗都说不过她）

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410220a06">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410230a06">
（气数已尽吗）

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410240e196">
《大人！》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410250a06">
「……」

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410260e196">
《已经撑不住了！ 
　请大人下令撤退吧！》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410270a06">
《撤退？》

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410280a06">
《退到哪里？》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410290e196">
《这片空域很危险！ 
　请先下令离开……》

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410300a06">
《地上有我们的主君四郎邦氏殿下在。
　我们的人民，镰仓市民也在。》

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410310a06">
《难道要舍弃他们？》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410320e196">
《……但、但是……》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410330e195">
《大人，若是不退的话就要被全歼——》

{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410340a06">
《不要惊慌失措!!
　你们是懦夫吗!!》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410350a06">
《难道只能打必胜之战吗?! 
　仅仅是战局变得绝望而已，怎么能因为
这点小事吓得屁滚尿流!!》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410360a06">
《空负会津武士之名，不感到羞耻吗!!》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410370e195">
《————》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410380a06">
《你们应该都清楚。
　这一战是决定大和存亡的关键之战。》

{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410390a06">
《与六年前不同——我们没有下一次机会！ 
　必须撑过这一关，我们非胜不可！》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410400a06">
《无论发生任何事！》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410410e196">
《大人……》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410420a06">
《回想一下。
　冈部弹正，那可恨的逆贼……》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410430a06">
《他在被我们包围，进退维谷之时，他可曾
投降请求饶命？可曾丢下家臣逃生？
　那愚蠢老将有过这种可爱之处？》

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410440a06">
《若是我们在这里失了颜面，未来在地狱相会
之时，肯定会受他嘲笑吧。
　……以你们的骄傲，能忍受那种屈辱吗？》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410450e195">
《……》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410460e196">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410470a06">
《重新列阵。》

{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410480a06">
《先干掉失去控制的零零式！
　然后是进驻军！》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410490a06">
《给我上！》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410500e195">
《——是！》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410510e196">
《明白!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆配下、動く

	OnSE("se戦闘_動作_空突進02", 1000);
	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進04", 1000);

	SetBlur("カメラ１/やられ役0*", false, 1, 500, 100, false);
	MoveCamera("@カメラ１", 300, -1000, -300, @500, Axl1, false);

	Wait(100);

	Move("やられ役01*", 2400, -380, @0, DxlAuto, false);

	Wait(2400);

/*
	Move("やられ役02", 300, @-50, @-100, null, true);
	Move("やられ役02", 300, @500, @10000, null, false);

	Move("やられ役03", 300, @-50, @-100, null, true);
	Move("やられ役03", 300, @500, @10000, null, false);

	Delete("やられ役*");

	Move("@StL*", 800, @250, @0, null, true);

*/

	SetFwR("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410520a06">
「……哼……」

{	FwR("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410530a06">
「气数将尽吗。
　便是这样又如何。」

{	FwR("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410540a06">
「我要战到最后……」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410550a06">
「绝不放弃，绝不后悔。
　那种懦弱之事等死后再做也来得及。」

{	FwR("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410560a06">
「活着的时候，只要战斗战斗战斗胜利——
　这样就够了!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銘伏、進撃
	CreateColorEXadd("絵色100", 1900, "WHITE");

	OnSE("se戦闘_動作_鎧_合当理吹かし01", 1000);
	Shake("やられ役01a", 1000, 2, 3, 0, 0, 1000, Axl2, false);

	Fade("絵色100", 1000, 1000, null, false);
	DrawTransition("絵色100", 1000, 0, 1000, 300, Axl1, "cg/data/circle_05_00_0.png", false);

	Wait(500);

	OnSE("se戦闘_動作_空突進02", 1000);

/*
	Move("@StL*", 300, @-50, @-100, null, true);
	Move("@StL*", 300, @500, @10000, null, false);
*/

	CreateColorSP("黒幕１", 30000, "#000000");
	DrawTransition("黒幕１", 150, 0, 1000, 200, null, "cg/data/slide_03_01_1.png", true);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);

	Wait(2000);

	ClearFadeAll(0,true);

}

..//ジャンプ指定
//次ファイル　"md04_042.nss"
