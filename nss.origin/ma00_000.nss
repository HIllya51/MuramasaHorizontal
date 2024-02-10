//<continuation number="1710">



chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma00_000.nss_MAIN
{
	$TITLE_NOW=" ————　序章　———— ";

	//★個別マクロ超速対応
	Conquest("nss/ma00_000.nss","ma00_fire",true);
	Conquest("nss/ma00_000.nss","ma00_fireDelete",true);
	Conquest("nss/ma00_000.nss","ma00_fireProcess",true);
	Conquest("nss/ma00_000.nss","ma00_FireMoveAuto",true);
	Conquest("nss/ma00_000.nss","ma00_FireMoveAutoProcess",true);
	Conquest("nss/ma00_000.nss","ma00_FireMoveAutoDelete",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg001_空a_02=true;
	#bg001_空a_03=true;
	#bg002_空a_03=true;
	#bg003_荒れ野_02=true;
	#bg004_鄙びた村a_02=true;
	#bg002_空a_02=true;
	#bg002_空b_03=true;
	#bg004_鄙びた村b_03=true;

	#ev001_銀星号事件イメージ１=true;
	#ev002_銀星号事件イメージ２=true;
	#ev101_プロローグ_a=true;
	#ev101_プロローグ_b=true;
	#ev101_プロローグ_c=true;
	#ev301_銀星号クラッシュ=true;
	#ev302_94式射撃=true;
	#ev505_六波羅進軍=true;
	#ev952_銀星号登場=true;
//嶋：extra：下記ムービー挿入につき、使用していません【09/08/18】
	#ev901_銀星号天座失墜小彗星_a=true;
	#ev901_銀星号天座失墜小彗星_b=true;
	#ev901_銀星号天座失墜小彗星_c=true;
	#ev901_銀星号天座失墜小彗星_d=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_銀星号=true;
	#voice_on_その他男声=true;
	#voice_on_その他女声=true;

	#av_九〇式指揮官騎=true;
	#av_九四式竜騎兵=true;
	#av_九四式指揮官騎=true;
	#av_銀星号=true;

//嶋：体験版では下記削除
	if(#復讐編終了 == true && #英雄編終了 == true){
		#魔王編解放 = true;
		$魔王編解放 = true;
	}

	if(#復讐編終了 == true){$復讐編終了 = true;}

	$PreGameName = $GameName;

	$GameName = "ma01_001.nss";

}

scene ma00_000.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	#voice_on_その他男声=true;
	#voice_on_その他女声=true;

	CreateColor("黒幕１", 15000, 0, 0, 1024, 576, "Black");

	Fade("@冒頭ホワイト", 1000, 0, null, true);
	Request("@冒頭ホワイト", UnLock);
	Delete("@冒頭ホワイト");

	CreateTextureEX("絵背景10", 5000, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	Fade("絵背景10", 0, 1000, null, true);


	Fade("黒幕１", 1000, 0, null, true);



//◆夕空

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　这一日的舞台，共计四幕。

　第一幕，决斗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(500);

//◆荒れ野·夕
	CreateTextureSP("背景20", 3000, -1024, Middle, "cg/bg/resize/bg003_荒れ野_02.jpg");
	Request("背景20", Smoothing);

	CreateTextureSP("背景30", 2500, 0, 0, "cg/bg/bg003_荒れ野_02.jpg");

	CreateSE("SE01","se自然_風_野原01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	Move("背景20", 60000, 0, -200, null, false);
	FadeDelete("絵背景10", 3000, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一座小村落前的荒原。

　数十名身着整齐军服，装备了枪支和军刀的士兵
排成队列。
  那战气高涨却保持着令人恐惧的静寂情形，
在火红夕阳的色泽下，更添一分杀气。

　看向前线，一派肃穆威严，身披沉重铠甲的武士们
屹立着。厚重的铁甲，硕长的太刀——哪怕单凭一骑，
便足以胜过身后的全部兵力。
  他们所酝酿出的压迫感，无比雄壮地诉说着这一事实。

　此刻，声音朝向村落响起。发出这响声的，
在铠甲武士中似也是顶尖之人。
　从他言语的傲慢
便能察觉出此人正是统率军队的首领。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Fade("背景20", 1000, 0, null, true);
	Delete("背景20");

	SetNwC("cg/fw/nw部隊長.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000010e237">
《我知道，这村子里藏着参与仓挂叛乱的奸贼。
　老实把犯人交出来便好——》

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000020e237">
《否则，就踏平整村！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 5000, "Black");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　那命令的听众，是在村落入口堵成围墙的人群。
　是住民。

　人人都理解公告的意义，也无人认为那仅仅是威胁。
　然而，恐慌者甚少。

　在人墙中不断膨胀的，是愤怒。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE10","se背景_ガヤ_ざわめく01_L");
	MusicStart("SE10",2000,700,0,1000,null,true);

	Fade("絵色100", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　
　——豺狼野狗。
　——贪寻腐肉。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵色100", 100, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　虽无勇气大声叫嚷出口，
　却满含憎恶地交互低语。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵色100", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
　
　——六波罗。
　——六波罗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 100, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
　几乎要将那名字咬碎般，低吟。

　六波罗。
　被如此称呼的军队集团首领，不断重复着相同的公告。

　村人们无一应答，窃窃私语中满是憎恨与敌意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　公告。再一次。<k>
{	SetVolume("SE01", 200, 0, null);
	SetVolume("SE10", 200, 0, null);
	StL(2600,@0,@0,"cg/st/st六波羅兵士_通常_制服.png");
	FadeStL(300,false);
	OnSE("se戦闘_銃器_構える01",1000);}
　与此同时，士兵们的枪口指向了村落。

　低语停止，恐怖的波浪蔓延。
　即使如此，村人的敌意仍未消散。

　无声的杀意。
　无声的敌意。

{	DeleteStL(300,false);}
　微妙的平衡，忽然崩塌了。
　崩塌的原因，却非军队首领的发炮指令。
在那之前，发生了别的变化。

　村人的壁垒中一阵人声鼎沸，随即分为两半。
　从后方，有一人意欲走上前。

　——不行。
　——快回来，武士大人。
　——不要啊，会被杀的。
　——武士大人！

　制止之声，不绝于耳。
　于此，那位人物只回了一句。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw落人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000030e286">
「承蒙大家照顾。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


	CreateSE("SE10","se人体_足音_鎧歩く02_L");
	MusicStart("SE10",500,800,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　他走上前去，现身于军队之前。

　这是一名铠甲武士。
　和威胁村落的士兵，相同。

　若说有何不同之处，则是铠甲的状态。
是施予细心维护，其完备的机能可引以为傲。
还是放置不顾，任其遍体鳞伤，性能恶化。

　只有如此差别。
　隶属军队的正规兵与逃亡者的差别。

{	SetVolume("SE10", 200, 0, null);}
　逃亡者，打算再上前一步。
　他的手，却被另一只小手紧紧抓住了。

　一个女孩。
　一言不发，只是抓着那只手，不松开。

　他也沉默了，看着女孩。
　伸出另一只手，轻轻抚过她的头。

　然后，放开了那只阻拦他的手。

　女孩的双瞳湿润。
　断然决绝般，逃亡者向前走去。

　军队中的数人，以围捕之势，备好武器蓄势待发。
　却被一记挥手阻断，部队首领单枪匹马走上前去，
迎接逃亡者。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 500, InRight, -330, "cg/bg/resize/bg003_荒れ野_02.jpg");

//◆九四式指揮官騎と九〇式指揮官騎

	CreateSE("SE01","se自然_風_野原01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	CreateTextureSP("絵STC600", 600, 182, InBottom, "cg/st/3d九四式指揮官_立ち_通常.png");

	Move("絵背景100", 5000, @+150, @0, DxlAuto, false);
	Move("絵STC600", 5000, @-100, @0, DxlAuto, false);

	Fade("背景30", 500, 0, null, true);

	Wait(1500);

	PrintGO("上背景", 15000);
	CreateTextureSP("絵背景200", 300, InLeft, -405, "cg/bg/resize/bg003_荒れ野_02.jpg");

	CreateTextureSP("絵STC400", 400, 242, InBottom, "cg/st/3d九〇式指揮官_立ち_通常.png");

	Move("絵STC400", 5000, @+100, @0, DxlAuto, false);
	Move("絵背景200", 5000, @-150, @0, DxlAuto, false);

	FadeDelete("上背景", 500, true);

	Wait(1500);

	PrintGO("上背景", 15000);
	CreateTextureSP("背景30", 100, Center, 0, "cg/bg/bg003_荒れ野_02.jpg");

	StL(500,@0,@0,"cg/st/3d九四式指揮官_立ち_通常.png");
	StR(600,@0,@0,"cg/st/3d九〇式指揮官_立ち_通常.png");
	FadeStA(0,false);


	FadeDelete("上背景", 500, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　村人与军队之间，二人对峙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw落人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000040e286">
「……你打算怎样？　鹭沼。」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000050e237">
「只是对昔日上司表示敬意而已。
　垣见少佐——<RUBY text="·">原</RUBY>少佐。」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000060e286">
「…………
　你说要放过村子，此言不假吧。」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000070e237">
「只要交出您本人，就不对村子问罪。
　正如所言。」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000080e286">
「如此便好。
　然后……？　你莫非，想和我认真比试？」

//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000090e286">
「交给你后面的同伴不是更好吗。」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000100e237">
「为何，难道有那种必要？」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000110e286">
「……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000120e237">
「您过去可是以单人对决从未吃过败仗之事
为傲呢。
　真不巧，我可不会让您背着那样的名誉
前往地狱。」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000130e237">
「就请把它留在现世吧。
　背叛六波罗之人，
其末日之刻不配拥有丝毫名誉！」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000140e286">
「……哦……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000150e237">
「看来，您的翼型装甲已经伤到连双轮悬
都无法实现的程度了。
就在地面上太刀较量吧。」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000160e286">
「真是令人钦佩的豪言壮语啊，鹭沼。
　某个黄毛小子，可是越来越能吹了。」

//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000170e286">
「那我就恭敬不如从命。作为冥府路上的礼物，
你的首级，我收下了。」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000180e237">
「……收下礼物的可是我啊，垣见。
　用您那满是皱纹的脑袋作下酒菜，畅饮美酒
的今晚，我可是从现在开始就期待得不行了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm09",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　被称为鹭沼的部队首领，和被唤作垣见的逃亡武士。
　拥有旧缘的二人就此切断对话，同时拔出太刀。

　村人与士兵，纷纷屏住呼吸。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);
	CreateTextureSP("絵背景100", 100, InLeft, -405, "cg/bg/resize/bg003_荒れ野_02.jpg");

	StC(500,@-150,@0,"cg/st/3d九四式指揮官_立ち_通常.png");
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

//◆九四式、中段
	StC(1000,@-150,@ 0,"cg/st/3d九四式指揮官_立ち_戦闘b.png");

	Wait(200);

	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　身着骑铠的武士——鹭沼，刀尖指向前方，
做出迎战准备。
　那是一击必杀，刺杀敌人的正眼剑形。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵鷺沼側", 1200);

	Delete("絵背景*");

	CreateTextureSP("絵背景100", 100, InRight, -330, "cg/bg/resize/bg003_荒れ野_02.jpg");
	StC(500,@+150,@0,"cg/st/3d九〇式指揮官_立ち_通常.png");
	FadeStC(0,true);

	Fade("絵鷺沼側", 300, 0, null, true);

//◆九〇式、上段
	StC(1000,@150,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");

	Wait(200);

	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　身着骑铠的武士——垣见，将剑挑过肩头，
摆出备战姿势。
　那是一刀两断，砍倒敌人的雷刀剑形。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵垣見側", 1200);
	Delete("絵背景*");

/*
	CreateTextureSP("背景30", 10, Center, 0, "cg/bg/bg003_荒れ野_02.jpg");
	StL(50,@-50,@0,"cg/st/3d九四式指揮官_立ち_戦闘b.png");
	StR(60,@+50,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	FadeStA(0,true);
*/

	CreateWindow("windowup", 1500, 0, 0, 1024, 288, false);
	SetAlias("windowup","windowup");
	CreateTextureSP("windowup/絵BG100", 1500, 0, Middle, "cg/bg/resize/bg003_荒れ野_02.jpg");
	SetShade("windowup/絵BG100", MEDIUM);
	CreateTextureEX("windowup/絵st100", 1500, 0, 0, "cg/st/3d九四式指揮官_立ち_戦闘b.png");
	Request("windowup/絵st100", Smoothing);
	Zoom("windowup/絵st100", 0, 1200, 1200, null, true);



	CreateWindow("windowdown", 1500, 0, 288, 1024, 288, false);
	SetAlias("windowdown","windowdown");
	CreateTextureSP("windowdown/絵BG200", 1500, -1024, 188, "cg/bg/resize/bg003_荒れ野_02.jpg");
	SetShade("windowdown/絵BG200", MEDIUM);
	CreateTextureEX("windowdown/絵st200", 1500, 441, 242, "cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	Request("windowdown/絵st200", Smoothing);
	Zoom("windowdown/絵st200", 0, 1200, 1200, null, true);

	Move("windowup/絵st100", 0, @-100, @0, null, true);
	Move("windowdown/絵st200", 0, @+100, @0, null, true);

	Move("windowup/絵st100", 500, @+100, @0, Dxl1, false);
	Move("windowdown/絵st200", 500, @-100, @0, Dxl1, false);
	Fade("windowup/絵st100",300,1000,null,false);
	Fade("windowdown/絵st200",300,1000,null,false);

	Fade("絵垣見側", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　如此对立。
　二人凝固了。

　时间徒然缓缓流过。

　村人们的手心尽是汗水。
　军队中的大半人马也仅是哑然注视着毫无前兆的决斗。

　但很快，一小部分人准确洞察到了静止的意义。
思考着胜负的结局，他们屏息凝望。

 两者中无论是谁，意图都显而易见。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateEffect("絵相対", 5000, 0, 0, 1024, 576, "Plain");
	SetAlias("絵相対","絵相対");
	Request("絵相対",Passive);

	Delete("絵背景*");
	Delete("windowup/*");
	Delete("windowdown/*");
	Delete("windowup*");
	Delete("windowdown");

	DeleteStA(0,true);


	Fade("絵鷺沼側", 0, 1000, null, true);
	Fade("絵相対", 300, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
　将剑平举的鹭沼，瞄准着对手喉部伺以突刺。
  在此姿势下若想斩击，高举刀剑的多余动作不可
避免。为比敌方早占先机，可说除突刺以外别无选择。

　而且，以厚重铠甲防护之人，弱点唯有难以覆盖的
关节部位。其中最致命之处，便是咽喉周围的空隙。
　不如突击此处。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵垣見側", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
　反观垣见，剑举过头意指对方首级。彼处同样也
有铠甲无法防护的空隙，以垣见的姿势，若将太刀
稍许放倒斩下，便可击中藏在头盔和肩甲之间的空隙。

  若是斩击，则须预备动作，对敌便迟了。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	Fade("絵相対", 300, 1000, null, true);

/*
	CreatePlainSP("仮上背景", 15000);
	CreateTextureSP("仮背景100", 1000, Center, Middle, "cg/bg/bg003_荒れ野_02.jpg");

	StL(1500,@-100,@0,"cg/st/3d九四式指揮官_立ち_戦闘b.png");
	StR(1600,@+100,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	FadeStA(0,true);

	Fade("絵相対", 0, 0, null, true);
	FadeDelete("仮上背景", 300, true);
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
　如此，二人无疑都已决定了进攻方式。
　然而，二人却均纹丝不动，徒余时间流逝。

　那正是由于两人不仅都配合进攻准备了防御，
且双方均对敌手也有此准备不抱半分疑惑。

  若是六波罗将领，鹭沼出击——
　垣见只消稍许扭动身体便可躲过那锋刃，
在鹭沼重整姿势之前斩下，胜负即决。

  若是逃亡者，垣见先行砍出——
　鹭沼退后一步避开剑击，再立即跳回原位便可刺杀宿敌。

　攻方若使出必杀，受方也必回以必杀。
　双方均悟出敌手意图，故而无法动弹，战况胶着。

　此番形势，换言之，胜负即是体力精力相互削减之结果。

　垣见和鹭沼，二人如今，正维持着仅以一步一刀
便可取敌性命的姿势，及不放过敌人丝毫细微变化的
集中力，对峙着。
　正因如此，相持不下。

　这给二人身心带来多大负担，自不必言。
　其严酷程度等同于行走钢丝于湍急溪谷之上。

  最终一方气力耗尽，架势崩塌。
　到那时，另一方若余力尚存，
便可立即瞄准其崩溃之处施以进攻，胜者即决。

  军首领，鹭沼。
　逃亡者，垣见。

　迟早，二人将决出胜负。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	CreatePlainSP("仮上背景", 15000);

	DeleteStA(0,true);
	Delete("仮背景*");

	Fade("絵鷺沼側", 0, 1000, null, true);
	Fade("絵垣見側", 0, 0, null, true);

	Fade("絵相対", 300, 0, null, true);


	SetNwR("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000190e237">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵垣見側", 300, 1000, null, true);
	Fade("絵鷺沼側", 0, 0, null, true);

	SetNwL("cg/fw/nw落人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000200e286">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Fade("絵鷺沼側", 0, 1000, null, true);
	Fade("絵垣見側", 300, 0, null, true);

	SetNwR("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000210e237">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	CreateTextureSP("絵背景100", 100, InRight, -330, "cg/bg/resize/bg003_荒れ野_02.jpg");

	StC(1000,@+150,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

	Move("@StC*", 300, @+10, @+5, null, false);

	SetNwL("cg/fw/nw落人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000220e286">
「……唔……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



	PrintGO("上背景", 15000);

	CreateTextureSP("背景30", 100, Center, 0, "cg/bg/bg003_荒れ野_02.jpg");

	CreateWindow("windowleft", 1500, 0, 0, 700, 1000, false);
	SetAlias("windowleft","windowleft");
	Rotate("windowleft", 0, @0, @0, @-10, null,true);
	Move("windowleft", 0, @-170, @-200, null, true);
	CreateTextureSP("windowleft/絵BG100", 1500, 0, Middle, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureSP("windowleft/絵st100", 1500, -30, InBottom, "cg/st/3d九四式指揮官_立ち_戦闘b.png");
	CreateTextureSP("絵win背景100", 1200, -824, -200, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureSP("絵winst100", 1200, 460, InBottom, "cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	Move("絵winst100", 0, @0, @+30, null, true);


	FadeDelete("上背景", 300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　年龄的差异开始显现。

　对比于正值壮年的鹭沼，垣见更为年长，
已是能切实感到衰老迫近的年龄。
　体力差距虽然不大，但确实存在。

　优势在鹭沼。
　战况的胶着更利于年轻尚存的一方。

　垣见终将力尽式衰，屈首级于敌刃之下吧。
　若不期望那样的命运，唯有乾坤一掷，
主动出击斩杀鹭沼。

  自不必多言，那亦是前景黯淡的赌注。
　不顾麾下兵士，单枪匹马出面决斗的猛士，
没有微毫松懈之色，紧紧盯着昔日的上司，如今的叛徒。

  只需轻松防御住自暴自弃的冒失进攻，
再完美给予回击便可获胜。

 逃亡者垣见进退两难。

　进，则死。
　不进，亦死。

　在旁看来，恍若湖面般平静的情景。
　然而水面之下，胜利与败北，
荣誉与破灭的天平，正在倾斜。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateEffect("絵相対", 5000, 0, 0, 1024, 576, "Plain");
	SetAlias("絵相対","絵相対");
	Request("絵相対",Passive);
	Delete("windowleft/*");
	Delete("windowleft");
	Delete("絵win背景100");
	Delete("絵winst100");


	FadeDelete("絵相対", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　时间继续流逝。
　战斗在一片肃静中迎向终局。

  与对手相比稍显老态之人，呼吸逐渐紊乱。
　慢慢地，膝盖震幅加大。

  发现战况变化开始明朗，一部分士兵的笑意
浮现在唇边。
多么幸福，村人们还没有丝毫察觉——
至少如今，还未。

　尽管如此，也许是感到了不安稳的氛围。
　有谁像是鼓励般地唤了一声：武士大人。

　正是受了这一声的激发也未尝可知。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景1000", 15000, Center, 0, "cg/bg/bg003_荒れ野_02.jpg");
	Delete("背景30");

	CreateWindow("windowleft", 1500, 0, 0, 700, 1000, false);
	SetAlias("windowleft","windowleft");
	Rotate("windowleft", 0, @0, @0, @-10, null,true);
	Move("windowleft", 0, @-170, @-200, null, true);
	CreateTextureSP("windowleft/絵BG100", 1500, 0, Middle, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureSP("windowleft/絵st100", 1500, 0, InBottom, "cg/st/3d九四式指揮官_立ち_戦闘b.png");
	CreateTextureSP("絵win背景100", 1200, -824, -200, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureSP("絵winst100", 1200, 460, InBottom, "cg/st/3d九〇式指揮官_立ち_戦闘a.png");

	FadeDelete("背景1000",300,true);

	Move("絵win背景100", 1000, @-200, @0, Dxl1, false);
	OnSE("se人体_動作_後ずさり01",1000);
	Move("絵winst100", 1000, @-250, @0, Dxl1, false);
	Move("windowleft", 500, @-1000, @0, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
　逃亡者垣见，决定分出胜负。
　吐着粗重的气息，将身体向前方出击。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("windowleft/*");
	Delete("windowleft");
	Delete("絵win背景100");
	Delete("絵winst100");

	CreateTextureSP("絵背景100", 100, InLeft, -405, "cg/bg/resize/bg003_荒れ野_02.jpg");

	StC(1000,@-150,@0,"cg/st/3d九四式指揮官_立ち_戦闘b.png");
	FadeStC(0,true);

	Move("絵背景100", 200, @-100, @0, null, false);
	Move("@StC*", 300, @+100, @0, Dxl1, false);

	OnSE("se人体_動作_後ずさり01",1000);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
　不出所料。
　没有一瞬迟疑，六波罗的鹭沼做出反应。

　……胜负，在此刻决定。

　既然鹭沼漏看垣见攻势的可能性，连万分之一
都没有，不如说其结果的显现也只是顺理成章罢了。
　先行进攻的斩击被避过，只在虚空中划出
一道弧线便告结束。以突刺反击即可锁定目标。

  必将如此。
　至此，局势已定，再无其他。

　但若前提改换，则另当别论。

　例如——
　乍一看来是为斩杀的垣见举动，其实是个幌子。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	CreateTextureSP("絵背景100", 100, InRight, -330, "cg/bg/resize/bg003_荒れ野_02.jpg");


	StC(1000,@+50,@0,"cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	FadeStC(0,true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	OnSE("se戦闘_動作_刀構え02",1000);

//◆九〇式、左脇構え
	StC(1000,@+50,@0,"cg/st/3d九〇式指揮官_立ち_戦闘b.png");
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　本应向前挥下的太刀，转变轨道。
　向持刀人的左腋，调整出新的姿势。

　扬剑上砍的剑形。

　用下斩的幻象逼敌人退后，
　捕捉其间隙，继而送出致命一刀。

　——<RUBY text="··">屏息</RUBY>之术。

　扬剑上砍的目标在于腋下，或者胯间——
铠甲防护的薄弱之处。
　在对手醒悟失败而跳开之前，已置其于死地。

  被意外造访之人，与一切预料之中之人。
　谁掌先机，不言自明。

　……此番诈术若从头开始准备，
熟练的武将鹭沼定不难识破。
　这是走投无路的老兵垣见，
真正被逼至绝路时才会使用的圈套。

　瞬间一闪。即使毁灭的结局无法回避，
唯有如此一战决不能输。念头闪过脑海。

  刹那之间，战况激变遂成。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	SetVolume("SE*", 500, 0, null);


	OnSE("se人体_動作_跳躍01",1000);
	Move("@StC*", 100, @-200, @0, Dxl1, false);
	DeleteStC(200, false);
	Wait(100);

	Fade("絵背景200", 100, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　这一次，垣见当真向前方攻出。
　操起扬剑上砍的太刀。

　胜败已定。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ずぶしゅ。
	CreateColor("黒幕１", 3000, 0, 0, 1024, 576, "Black");
	Fade("黒幕１", 0, 0, null, true);
	Fade("黒幕１", 200, 1000, null, true);
	Delete("絵背景200");

	CreateColor("黒幕２", 10000, 0, 0, 1024, 576, "Black");
	Fade("黒幕２", 0, 0, null, true);

	CreateColor("白幕１", 5000, 0, 0, 1024, 576, "White");
	Request("白幕１", AddRender);
	Fade("白幕１", 0, 0, null, true);

	SL_centerin(@0,@-100,1500);

	OnSE("se戦闘_攻撃_刀振る02",1000);
	SL_centerinfade2(10);

//	Wait(500);


	Fade("白幕１", 100, 1000, null, true);
	OnSE("se戦闘_攻撃_刀刺さる01",1000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg003_荒れ野_02.jpg");

	Fade("白幕１", 500, 0, null, false);

	Fade("黒幕２", 1500, 1000, null, false);
	Wait(1200);

//	SL_Delete();

	DeleteStR(0,true);
	DeleteStL(0,true);
	Delete("黒幕１");
	Delete("白幕１");
	FadeDelete("黒幕２", 1000,true);
	SetNwC("cg/fw/nw落人.png");

	SetVolume("@mbgm09", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000230e286">
「…………」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000240e237">
「…………」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000250e286">
「……鹭沼……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000260e237">
「呵、呵呵……呵呵呵。」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000270e286">
「…………」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000280e237">
「你本已无胜算，
　与我不分胜负足矣。」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000290e237">
「何苦痴心妄想。」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000300e286">
「咕……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SL_centerdam(@0,@0,1600);

//◆血
	OnSE("se人体_血_たれる01",1000);
	SL_centerdamfade2(100);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　逃亡者垣见口中，溢出赤色浊流。
　村人间发出了惨叫。

　垣见的太刀，未能施展出扬剑上砍之技……
　鹭沼的一刀，漂亮地贯穿了垣见的喉咙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw部隊長.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000310e237">
「我早已做好觉悟，同归于尽也罢。」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000320e237">
「所以无论你使出何种招式都无所谓。
　你行动之时，我只考虑一件事——
射穿你的喉咙。」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000330e286">
「…………」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000340e237">
「你却不同……
　非要得到胜利当做冥途的礼物，
玩弄些小把戏。」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000350e237">
「所以才会迎来这悲惨的结局。」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000360e286">
「唔……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000370e237">
「死吧。」

//◆たいしょうりょう
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000380e237">
「反抗六波罗的武将，你是最后一个。
　在大元帅足利护氏公的率领下，
大和之威武统一大业必将完成。」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000390e237">
「大义必将成就！」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000400e286">
「闭、嘴……！」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000410e237">
「……」

{	NwC("cg/fw/nw落人.png");}
//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000420e286">
「还有……冈部弹正殿下！
　民间也尚有，众多志士！」

//【ｅｔｃ／落人】
<voice name="ｅｔｃ／落人" class="その他男声" src="voice/ma00/0000430e286">
「决不会让你们有坐享荣华富贵的一天！」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000440e237">
「冈部之流，不过是等死的老废物。
　那些躲在民间只会背地里造谣滋事之辈，
不值一提。」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000450e237">
「垣见！
　你就为了迎接那些人的到来，
好好把地狱打扫打扫干净吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景500", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateColorEX("絵色500", 15000, "White");
	SL_rightdam(@0,@0,1600);

	OnSE("se戦闘_攻撃_刀振る02",1000);
	Fade("絵背景500", 100, 1000, null, true);
	Fade("絵色500", 100, 1000, null, true);
	Delete("絵背景500");

	FadeDelete("絵色500", 500, false);
//◆ずしゃー。
	OnSE("se人体_血_血しぶき01",1000);
	SL_rightdamfade(10);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　说罢，鹭沼拔出腰刀，砍下了战败者的首级。<k>
{	OnSE("se人体_衝撃_転倒02",1000);}
　逃亡者垣见被切离的肉体，随着钝响倒下。

　看着这一切的村人，无人作声。
　只是僵硬地，将视线牢牢锁在虽只接触数日，
却宛如亲人的武将亡骸之上。

　与此相对，从蔓延开兴奋骚动的军队阵列之中走出
一名铠甲武士，他恭敬地接过队长举起的首级。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SL_Delete();
	SetNwC("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000460e030">
「您干得真漂亮。」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000470e237">
「哪里，微不足道的工作。」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000480e030">
「那……鹭沼殿下。
　村子如何处置。」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000490e237">
「之前说过。
　只要交出垣见，就不追究村子。」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000500e030">
「是。」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000510e237">
「那个村子，<RUBY text="··">交出</RUBY>垣见了吗？」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000520e030">
「……不，
　并未交出。」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000530e237">
「那就没办法了……」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000540e030">
「……」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000550e237">
「反叛的萌芽必须铲除！」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000560e030">
「遵命！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


	OnSE("se人体_動作_手払う01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　领悟了队长旨意的铠甲武士，挥手向后方发出信号。
　看到信号，一名士兵将携带的海螺放到嘴边。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆法螺貝ほらほー。
//◆歓声
	CreateSE("SE01","se背景_ガヤ_おたけび01");
	OnSE("se特殊_楽器_法螺貝",1000);

	Wait(500);
	MusicStart("SE01",1000,1000,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　壮丽的乐音奏响。
　士兵们响应般齐声呐喊。

{	OnSE("se戦闘_銃器_複数構える01",1000);}
　枪口方向一致，朝着前方猎物蜂拥而去。
　直到这时，呆滞的村人才回过神来
——随即，陷入恐慌。

  即将发生什么，自己又会怎样。
　终于恍然大悟。

　那份理解没有被辜负。

　接下来是第二幕。
　小村庄的悲剧，开始上演。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 25000);
	CreateColorSP("絵色100", 15000, "Black");
	FadeDelete("上背景", 1000, true);


//◆夕空？
	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg001_空a_02.jpg");


//◆銃声。悲鳴

	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);


	Fade("絵色100", 1000, 0, null, true);

	SoundPlay("@mbgm36",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　对武装完备、训练有素的职业士兵而言，
这场战斗岂止如同狩猎，简直轻松至极。
　猎物的行动远比野兽迟钝，
如今在恐慌之中，又理智尽失。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　士兵瞄准着四处逃散的村人后背射击。
　被击碎脊椎的中年男子踉跄倒下，
一边抽噎着吐血，一边啜泣。

　士兵将军刀砸向跪倒乞命的村人后脑。
　抱着宛若成熟石榴般炸开的头部，
老妇无法成言地嘶吼起来。

  军队在杀戮。
　村人在遭受杀戮。

　方向固定的暴力关系。
　并非战斗，甚至连狩猎都不算。

　然而终于，脆弱的猎物——
　村人中的一部分，在绝望的谷底坚定了斗志。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	Fade("絵背景200", 0, 1000, null, true);
	FadeDelete("絵背景100", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　柴刀、锄头、斧子。
　手拿着从仓库里找出的简陋武器，
潜伏在暗处，若有放松警惕的士兵恰好路过，
便从背后突袭使其负伤。

　搬出古旧长枪的猎人，更成为危险的存在。
　一边巧妙变换位置，一边捕捉良机狙击士兵，
准确地让敌人一个个命丧黄泉。

　望着瞠目结舌死去的士兵，
猎人狂热的大脑沉浸于愉悦之中。
　还要杀。还要杀。把你们杀的份，统统杀回来。

　这样的愿望并未能实现。
　可怕的猎人，早已被无所畏惧的魔神定为目标。

　凭借着多年经验潜伏移动的猎人，
绝不会被士兵的视线捕捉。
　地面上无人发觉。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 500, 0, null);

//◆空の竜騎兵
	#av_九四式竜騎兵=true;

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	CreateTexture("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Delete("絵背景200");

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("黒幕１");

	StL(1000,@-950,@+600,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStL(0,true);
	Zoom("@StL*", 0, 500, 500, null, true);
	OnSE("se戦闘_動作_空突進01",1000);
	Move("@StL*", 100, @+2000, @-700, Dxl1, true);
	DeleteStL(0,false);

	Wait(500);

	StR(1000,@+1000,@-100,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	Zoom("@StR*", 0, 2000, 2000, null, true);
	FadeStR(0,true);
	OnSE("se戦闘_動作_空突進03",1000);
	Move("@StR*", 1000, @-1250, @+500, Dxl1, true);
	Zoom("@StR*", 2000, 1000,1000, null, true);

	CreateSE("SE01","se戦闘_動作_空中待機_L");
	MusicStart("SE01",0,800,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290a]
　<RUBY text="···">从空中</RUBY>，则一目了然。
　对乘坐带翼铠甲飞翔于空中之人而言，
猎人远非足以刺激出迷信的恐惧存在，
不过是自作聪明的老鼠罢了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);
	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	OnSE("se戦闘_動作_空突進02",1000);
	Fade("絵背景200", 200, 1000, null, true);
	Delete("絵背景50");
	DeleteStR(0,true);
	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290b]
　发觉地面兵士的动摇，
空中一架机体从猎人头上急转直下。
  感到不妙的气息而抬头仰视，他的视野
已被钢铁的光辉充满。那便是猎人见到的最后光景。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	CreateColorEX("絵色100", 3000, "White");

	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SetBlur("絵背景200", true, 4, 500, 50, false);
	Move("絵背景200", 500, @0, -200, null, false);
	Fade("絵背景200", 300, 1000, null, true);

	Wait(200);

	Fade("絵色100", 300, 1000, null, true);
	Delete("絵背景200");
	Delete("絵色200");

	Fade("絵色100", 300, 0, null, false);
	OnSE("se戦闘_破壊_建物02",1000);
	Shake("絵背景100", 1000, 0, 10, 0, 0, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
　铠甲武士的突袭将猎人纵向两断。
　这一斩的余势，连带着猎人藏身的小屋
都一同吹飞。

  地面也被击出深深的裂纹。
　绝非常人所能为。

　……极度，<RUBY text="诡异">自然</RUBY>之事。
　舞于空中的战士并非常人。

　从铠甲获得超越常人之力的他们，只可称为魔神。

{	OnSE("se戦闘_動作_空突進03",1000);
	Wait(10);
	OnSE("se戦闘_動作_空突進02",500);}
　最初只是观望着地面士兵的行动，
待命准备的铠甲武士们，也以此为契机，
开始纷纷降落。与他们行诸的暴力相比，
士兵们的行为只如早春的微风。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateColorEX("絵色100", 3000, "White");

	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SetBlur("絵背景200", true, 4, 500, 50, false);
	Move("絵背景200", 500, @0, -200, null, false);
	Fade("絵背景200", 300, 1000, null, true);

	Wait(200);

	Fade("絵色100", 300, 1000, null, true);
	Delete("絵背景200");
	Delete("絵色200");

	Fade("絵色100", 300, 0, null, false);
	OnSE("se戦闘_破壊_建物02",1000);
	Shake("絵背景100", 1000, 0, 10, 0, 0, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0292]
　铠甲武士的太刀每度呼啸，<RUBY text="··">成群</RUBY>村人
便化作堆堆死骸。
　被斩杀、被切断、被粉碎、被撕裂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw部隊長.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000570e237">
「杀掉老人、病人，和没用的人。」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000580e237">
「看起来能承受劳役的男人、年轻女人、
还有孩子，抓起来切断他们的足筋。
　能卖个好价钱。」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000590e237">
「不许一个人逃走。
　这些家伙能得到的命运，只有奴隶，
或者死……」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000600e237">
「这就是向六波罗挑衅之人的末路！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　狂暴的风无情地吞噬着村庄。

　铠甲战士效仿士兵，开始肆意而为。
　筛选村人，杀死应杀之辈，抓住该抓之人。

  这之中，无关村人自身意愿。
　不论以怎样的形式，那表达而出的意愿都被无视了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村？

	SetNwC("cg/fw/nw村人Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ｅｔｃ／村人Ａ】
<voice name="ｅｔｃ／村人Ａ" class="その他男声" src="voice/ma00/0000610e149">
「畜生!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_銃器_構える01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　一人持枪在手。那是猎人留下的吗，
  还是被猎人击倒的士兵的所有物呢。

　无论隶属于谁，都是绝佳的致命武器。
　正如所望，货真价实的杀人道具。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	CreateColorEX("フラッシュ白", 15000, "WHITE");

//◆銃声四回
	OnSE("se戦闘_攻撃_ライフル撃つ4回",1000);
	Fade("フラッシュ白",0,1000,null,true);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　男人的射击技术甚至谈不上熟练，
但所有子弹都朝向了目标进发。
　四发弹丸飞向四名铠甲武士。

  一个奇迹。
　毫无意义的，奇迹。

　那瞬间必杀的弹丸——

{	OnSE("se戦闘_銃器_弾かする01",1000);}
　一架机体轻易地歪头躲过。

{	OnSE("se戦闘_銃器_跳弾02",1000);}
　一架机体用太刀斩断。
{	OnSE("se戦闘_銃器_跳弾01",1000);}
　一架机体单手抓住。

　剩下一架，什么也没有做。
{	OnSE("se戦闘_銃器_跳弾03",1000);}
　弹丸命中腹部，却未损丝毫，凄惨落下。

　他们的相同之处，便是那轻松的态度。
　子弹袭来，简直如同苍蝇小虫，
连捉一下都不值得。

　而实际上，他们也确实如此。
　如此对待超音速飞驰的子弹。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村人Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ｅｔｃ／村人Ａ】
<voice name="ｅｔｃ／村人Ａ" class="その他男声" src="voice/ma00/0000620e149">
「……唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　男子的行动力值得一提，
　但恐怕他已理智尽失了吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);
	SetVolume("SE02", 500, 0, null);

	CreateColorSP("黒幕１", 2500, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	OnSE("se乗物_車_乗り込む01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
　扑向停靠在近旁的村中唯一一台<RUBY text="Ｔｒｕｃｋ">货物运送车</RUBY>，
冲进驾驶室。踩下油门。
仿佛要穿透踏板般地踩下。

　那一瞬间，他大概抱着幻想吧。
　幻想着货车疾驰，自己能从恶魔的手中逃脱。
或者更贪心些，幻想着同伴也能乘上货车的载货台。

　在这台不可能动的货车里。

　……即便如此，他还未来得及失望，便已结束。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTexture("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");

	Delete("絵背景200");
	Delete("絵背景100");
	Delete("絵色100");


	StC(1000,@0,-300,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStC(0,true);
	Move("@StC*", 0, @-100, @+50, null, true);

	Move("@StC*", 300, @+100, @-50, Dxl1, false);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("黒幕１");

	BGMoveAuto("@StC*",1);

	SetNwL("cg/fw/nw鎧士Ｂ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0000630e031">
「哼……！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	CreateColorEXadd("絵色100", 1500, "White");

	OnSE("se戦闘_動作_空突進02",1000);
	BGMoveDelete();
	Move("@StC*", 300, @200, @200, Dxl1, false);
	Fade("絵背景200", 200, 1000, null, true);

	Delete("絵背景50");
	DeleteStC(0,true);

	Fade("絵背景100", 0, 1000, null, true);

	SL_Rightdown(@0,@0,1000);
	FadeDelete("絵背景200", 500, true);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_Rightdownfade(0);
	Fade("絵色100", 200, 1000, null, true);
	OnSE("se戦闘_攻撃_鉄切断",1000);
	FadeDelete("絵色100", 300, true);
	OnSE("se戦闘_破壊_金属",1000);

	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　飞翔而起瞬间夺占车辆上空，铠甲武士挥下了太刀。
　比起枪支更加原始的武器，使用更为单纯的攻击。

　一闪间，裁决已下。
　将人类斩断，连同货车的座席——或许此时可称为
合金之壁——
一同，完美地。

　他大概连体会痛苦的时间都没有吧。
　因此他必定，是幸运的。与那些痛苦死去的人们相比。
抑或是那些痛苦地活着的人们。

　如同破竹般优美两断的他的断面，
并未控诉任何不满。
　和那些一人接着一人被斩断阿基里斯筋腱，
痛苦匍匐于地面之上的同胞们不同。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村人Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【ｅｔｃ／村人Ｂ】
<voice name="ｅｔｃ／村人Ｂ" class="その他男声" src="voice/ma00/0000640e150">
「不要……不要。
　不要这样……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE10","se人体_足音_走る01_L");
	MusicStart("SE10",0,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　一个人奔跑起来。<k>
{	OnSE("se人体_衝撃_肩にぶつかる01",1000);}
　碰开同伴，横冲直撞，踩踏着跨过倒下的亲人——<k>
然而他本身并没有恶意。他只是单纯地，
被巨大的恐惧笼罩。

  推开人群，奔跑穿过。
　道路打开了。

　通往邻村的道路。

　只要这样跑下去，就能到达邻村。
　就一定能获救。

　不要回头。只管跑。
　只要一直跑下去，总有一天，总有一天能……！

{	SetVolume("SE10", 1000, 0, null);}
　……永远也到不了。这样的事实，
他用了三十秒察觉。
　在那段时间里他仍跑着。
完全没有理解再无法前进一步的事实。

　不知何时开始。
在他头顶仿佛畅泳在海中横渡青空的铠甲武士，
一把抓住他的后颈。被悬吊着，
他却仍慌张地奔跑在虚空中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw鎧士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000650e032">
「回去。」

{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人Ｂ】
<voice name="ｅｔｃ／村人Ｂ" class="その他男声" src="voice/ma00/0000660e150">
「啊……啊啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_衝撃_転倒01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　被扔回同胞人群中。
　严阵以待的士兵，准确割断了他的右脚足筋。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆しゅぱーん。
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_left(@0,@+50,1500);
	SL_leftfade2(10);

	CreateColorEX("絵色100", 2999, "Black");
	CreateTextureEX("絵背景1000", 3000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	Rotate("絵背景1000", 0, @0, @180, @0, null,true);
	Fade("絵色100", 300, 1000, null, true);
	OnSE("se人体_血_たれる01",1000);
	Fade("絵背景1000", 0, 1000, null, false);
	DrawTransition("絵背景1000", 700, 0, 1000, 100, null, "cg/data/circle_11_00_0.png", true);

	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);



	CreateColorEX("フラッシュ黒", 15000, "Black");
	Fade("フラッシュ黒",300,1000,null,true);

	Delete("絵背景1000");
	Delete("絵色100");

	SetVolume("SE01", 300, 200, null);
	SetVolume("SE02", 300, 200, null);

	MovieSESet(16000,"mv行進","se特殊_mv用_ツルギ行進");
	MovieSEStart2(300,1000);

	SetVolume("SE01", 500, 200, null);
	SetVolume("SE02", 500, 200, null);

	CreateTextureSP("fire_Move01", 1000, Center, Middle, "cg/ev/ev505_六波羅進軍.jpg");


	CreateTextureEXover("fire_Move02", 1000, Center, Middle, "cg/ef/ef046_炎a.jpg");

	Move("fire_Move02", 0, @-200, @0, null, true);
	DrawEffect("fire_Move02", 0, "MiddleWave", 0, 200, null);

	Fade("fire_Move02", 0, 500, null, true);
	ma00_FireMoveAuto();

	Fade("フラッシュ黒",300,0,null,true);
	Delete("フラッシュ黒");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　断臂残肢，蠕虫般苟活着的人们。
　随着时间一分一秒推移，他们还像人类——吗？
——像人类一般行将死去。

　他们的命运，完全归结于
统率军队的将领指示。
　他们自身的选择毫无意义。

　逃跑还是战斗，制定策略还是原地发抖，
无人在意——
　铠甲之神仅仅贯彻着自己的意志。

  这是暴虐。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateSE("SE01","se背景_ガヤ_合戦01");
	MusicStart("SE01",1500,500,0,1000,null,true);

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);

	SetVolume("@mbgm36", 1000, 0, null);
	SetVolume("SE02", 2000, 1000, null);

//◆悲鳴が渦巻く中、
//◆夕空→夜空

	PrintGO("上背景", 15000);

	ma00_FireMoveAutoDelete();
	ma00_fireDelete();

	CreateTextureSP("絵背景200", 10000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	CreateTextureSP("絵背景300", 1900, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	FadeDelete("上背景", 1000, true);

	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	FadeDelete("絵背景200", 1500, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　被切断脚踝的女童在思考。

　——为什么。

　直到昨天还在村中普通地生活。

　父亲从事林业劳动，进山伐木，
　母亲操持家中一切，
　自己和伙伴们玩耍，不时帮助着母亲。

　日复一日。
　毫无变化的每一天。

　却突然惨遭破坏……
　到底是什么理由，究竟发生了什么。

　为什么那个叫做军队的东西会来，
把村子变得一塌糊涂。

  学校的老师曾经教过。
　恶有恶报。
　如果对别人施恶，自己也会遭到报应。

　自己到底对谁做过不好的事呢。
　还有父母，还有其他那么多死去的人。
还有此刻，和自己一起被切掉脚踝匍匐在地上的同伴们。

  村里迎接了那个叫垣见的人，给他吃住照顾，
这就是不好的事吗？
　明明是那么温柔的人。大人们都说，
再没有那么优秀的武士大人了。明明是这样。

  还是说，有其他的原因吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	CreateColorEX("絵色100", 3000, "Black");
	Fade("絵色100", 2500, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　是因为做了过分的事，才遭到这种报应吗。

　那么，做了<RUBY text="··">这些</RUBY>的家伙们呢？

　这些家伙，总有一天也会遭到相同的报应吧。
　如果不是这样，就太奇怪了。太不讲道理了。

　可是，谁来？

　村子被军队压倒性的力量毁灭。
　可是军队，谁又能来毁灭他们呢？

　谁能做到呢。
　谁能给这些穿着铠甲的人降下惩罚呢。

　不是根本谁也不能吗？

　如果谁也不能的话，
　惩罚的连锁就到此为止了。

　只有连做错了什么都不知道的我们接受惩罚，
那些确实干了坏事的家伙却什么报应都没有。
　只因为，谁也不能惩罚他们。

  奇怪。
　太奇怪了。

　破坏与悲鸣的乐声中，无法站立的女孩呼叫着。

　——这太奇怪了。

　有没有人。有没有人。
　我们不奢求救赎。
　求求您。<RUBY text="··········">只要别在我们这里终结</RUBY>。

　给那些家伙同样的惩罚。
　给他们做过坏事的报应。
　给他们同等的痛苦和悲伤。

　有没有人，来完成这一切。
　神明啊。
　求求您。

　女童在祈祷。
　被掠夺者的叹息，纯粹的愤怒充斥在心中。

　求求您。
　这样的事情一定是弄错了。
　求求您，请一定要纠正。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("絵色100",null);
	Delete("プロセス*");
	SetVolume("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　……<k>……<k>……不。<k>
　并未有错。

　错了。
　做了坏事，就要接受惩罚。
　这才是真理。

　不。
　真理应是——

　是什么呢。
　真理是什么呢。

　无须叹息。
　无须愤怒。

　我需要。
　我要叹息我要愤怒。

　无须叹息。
　无须愤怒。
　无须憎恶无须仇恨。

　需要的！

　不需要。

　为什么！

　————呵呵。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//ボックス一度消し
//◆ＢＧＭ：銀星号の唄、音量低く？

	SoundPlay("@mbgm37",0,300,true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　
　　　　　　　　　歌声传来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	Fade("絵色100", 1000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　女童发现了。
　自己在和<RUBY text="·">谁</RUBY>对话。

　那声音笑着。
　满溢慈爱温柔的音色。
　哼唱着摇篮曲。

　——无须叹息，无须愤怒，无须憎恨。
　一切皆是虚空。

　对于生存来说，只是虚空之物。


　　　　　　　　　她哼着这样的歌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　欢笑吧、歌唱吧、鼓起掌来吧。
　让欢喜在心中疯狂舞蹈。

　舍弃人类的皮囊。
　单纯作为一个生命而活。

　如此，生便会充满喜悦。
　如此，悲伤将不再烦扰。

　那无法做到吗？
　不，任谁都可以。

　认定不能达成，只是因为遗忘。

　忘记了生命原本就只是为讴歌喜悦存在！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　
　　　　　　　　　歌声环绕耳际。

　女童明白了。
　明白了自己的误解。

　——啊啊。
　是这样吗？　神明。

　倾听这歌声。
　讴歌生命之曲。

　——善也好，恶也好，
　生的意义并不在此，对吗？

　歌声传入耳际。
　歌声教导她。

　——生命的存在并非有罪。
　也无需惩罚。

　——生命只需纯粹便可。
　这，才是真理。

　女童在歌唱。
　歌唱生命。
　歌唱喜悦。

　——对啊，我们只需要！
　只需要有生命就好！

　只需要追寻着生命就好了啊！

　只要，活着。
　作为一个生命，坦率而纯粹地活着————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村？と兵士
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 300, null, "cg/data/slide_02_01_0.png", true);


	Delete("絵背景300");
	Delete("絵色100");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	CreateSE("SE02","se背景_ガヤ_悲鳴01");
	MusicStart("SE02",1500,500,0,1000,null,true);

	DrawTransition("黒幕１", 1000, 1000, 0, 300, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");


	SetNwC("cg/fw/nw村人Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【ｅｔｃ／村人Ｃ】
<voice name="ｅｔｃ／村人Ｃ" class="その他男声" src="voice/ma00/0000670e151">
「不要不要，我不想死！　救救我！」

{	NwC("cg/fw/nw兵士Ａ.png");}
//【ｅｔｃ／兵士Ａ】
<voice name="ｅｔｃ／兵士Ａ" class="その他男声" src="voice/ma00/0000680e241">
「不……我要杀了你。」

{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人Ｄ】
<voice name="ｅｔｃ／村人Ｄ" class="その他男声" src="voice/ma00/0000690e152">
「我不想死……」

{	NwC("cg/fw/nw兵士Ｂ.png");}
//【ｅｔｃ／兵士Ｂ】
<voice name="ｅｔｃ／兵士Ｂ" class="その他男声" src="voice/ma00/0000700e242">
「死吧。」

{	NwC("cg/fw/nw村人Ｅ.png");}
//【ｅｔｃ／村人Ｅ】
<voice name="ｅｔｃ／村人Ｅ" class="その他男声" src="voice/ma00/0000710e153">
「我想活下去……」

{	NwC("cg/fw/nw兵士Ｃ.png");}
//【ｅｔｃ／兵士Ｃ】
<voice name="ｅｔｃ／兵士Ｃ" class="その他男声" src="voice/ma00/0000720e243">
「死吧。」

{	NwC("cg/fw/nw村人Ｆ.png");}
//【ｅｔｃ／村人Ｆ】
<voice name="ｅｔｃ／村人Ｆ" class="その他男声" src="voice/ma00/0000730e154">
「我想活下去……」

{	NwC("cg/fw/nw兵士Ｄ.png");}
//【ｅｔｃ／兵士Ｄ】
<voice name="ｅｔｃ／兵士Ｄ" class="その他男声" src="voice/ma00/0000740e244">
「你去死吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 1000, 0, null);

//◆ＢＧＭ音量ゆっくり上げ
	SetVolume("@mbgm37", 5000, 1000, null);



	CreateColorEX("絵色100", 1500, "Black");
	Fade("絵色100", 200, 1000, null, true);

//◆生と死の
	CreateTextureEX("Gin_song01", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄01.png");
//◆されば嘲笑
	CreateTextureEX("Gin_song02", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄02.png");

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	SetBacklog("《生死抉择，应是赋予自我的课题，扪心自问》", null, null);
	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《故于嘲笑的欢喜漩涡中拉开喜剧之幕吧》", null, null);
	Move("Gin_song02", 1000, @0, @-10, null, false);
	Fade("Gin_song02", 1000, 1000, null, true);

	Fade("silver_son*", 500, 0, null, true);

//嶋：テロップ追加のため退避
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]







《生死抉择，应是赋予自我的课题，扪心自问》
《故于嘲笑的欢喜漩涡中拉开喜剧之幕吧》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――

*/

//◆空、竜騎兵

	WaitKey();

	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	CreateTextureSP("絵st100", 1100, Center, Middle, "cg/st/3d九四式竜騎兵_騎航_通常.png");

	Fade("Gin_song01", 500, 0, null, false);
	Fade("Gin_song02", 500, 0, null, true);
	Delete("Gin_song*");

//	FadeStC(0,true);
	BGMoveAuto("@絵st100",1);

	DrawTransition("絵色100", 1000, 1000, 0, 300, null, "cg/data/slide_03_01_1.png", true);
	Delete("絵色100");

	Wait(300);

	SetNwL("cg/fw/nw鎧士Ａ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000750e030">
「……？」

{	NwL("cg/fw/nw鎧士Ｂ.png");}
//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0000760e031">
「这声音，怎么回事……剑胄传音吗？」

{	NwL("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000770e032">
「不……不对。
　脑子里好像在被什么东西搅乱……」

{	NwL("cg/fw/nw鎧士Ｄ.png");}
//【ｅｔｃ／鎧士Ｄ】
<voice name="ｅｔｃ／鎧士Ｄ" class="その他男声" src="voice/ma00/0000780e033">
「从哪里传来的声音？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 1500, "Black");
	Fade("絵色100", 200, 1000, null, true);

	BGMoveDelete();

	Delete("絵st100");

//◆嵐の夜に
	CreateTextureEX("Gin_song03", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄03.png");
//◆温かい巣で
	CreateTextureEX("Gin_song04", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄04.png");
//◆木漏れ日の下
	CreateTextureEX("Gin_song05", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄05.png");
//◆せせらぎを聞く
	CreateTextureEX("Gin_song06", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄06.png");
//◆生の意味
	CreateTextureEX("Gin_song07", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄07.png");
//◆死の恐怖
	CreateTextureEX("Gin_song08", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄08.png");
//◆生命の問いに
	CreateTextureEX("Gin_song09", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");
//◆生命を信じ
	CreateTextureEX("Gin_song10", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");
//◆獣よ踊れ野を馳せよ
	CreateTextureEX("Gin_song11", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");
//◆いまや如何なる
	CreateTextureEX("Gin_song12", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");


	Move("Gin_song07", 0, @0, @-40, null, true);
	Move("Gin_song06", 0, @0, @-80, null, true);
	Move("Gin_song05", 0, @0, @-120, null, true);
	Move("Gin_song04", 0, @0, @-160, null, true);
	Move("Gin_song03", 0, @0, @-200, null, true);
	Move("Gin_song08", 0, @0, @0, null, true);
	Move("Gin_song09", 0, @0, @+40, null, true);
	Move("Gin_song10", 0, @0, @+80, null, true);
	Move("Gin_song11", 0, @0, @+120, null, true);
	Move("Gin_song12", 0, @0, @+160, null, true);

	SetBacklog("《暴风骤雨之夜，野犬怒吠，勇斗愚贼》", null, null);
	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《温暖巢穴待母而归之雏鸟，以蛇腹为席，无比安宁》", null, null);
	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《阳光穿透树林洒落而下，新生之狮饱享千头鹿》", null, null);
	Move("Gin_song05", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song05", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《听闻潺潺水声之蛙卵，被孩童拾起惨遭踐踏》", null, null);
	Move("Gin_song06", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song06", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《虔信生命意义之人啊，听听小丑真摯的诡辩吧》", null, null);
	Move("Gin_song07", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song07", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《震颤于死亡恐怖之人啊，恶魔的假面乃是黑漆之镜》", null, null);
	Move("Gin_song08", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song08", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《倘若于生命怀抱疑问，小丑与恶魔则会握持钥匙》", null, null);
	Move("Gin_song09", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song09", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《倘若相信且醉心于生命，小丑与恶魔则会摘下帽子》", null, null);
	Move("Gin_song10", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song10", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧》", null, null);
	Move("Gin_song11", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song11", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块》", null, null);
	Move("Gin_song12", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song12", 600, 1000, null, false);

	WaitKey();

	Fade("Gin_song0*", 500, 0, null, false);
	Fade("Gin_song10", 500, 0, null, false);
	Fade("Gin_song11", 500, 0, null, false);
	Fade("Gin_song12", 500, 0, null, true);
	Delete("Gin_song*");

//嶋：テロップ追加のため退避
/*
//嶋：下記位置調整のため、スペース追加
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]



《暴风骤雨之夜，野犬怒吠，勇斗愚贼》
《温暖巢穴待母而归之雏鸟，以蛇腹为席，无比安宁》
《阳光穿透树林洒落而下，新生之狮饱享千头鹿》
《听闻潺潺水声之蛙卵，被孩童拾起惨遭踐踏》
《虔信生命意义之人啊，听听小丑真摯的诡辩吧》
《震颤于死亡恐怖之人啊，恶魔的假面乃是黑漆之镜》
《倘若于生命怀抱疑问，小丑与恶魔则会握持钥匙》
《倘若相信且醉心于生命，小丑与恶魔则会摘下帽子》
《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧》
《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/

//◆村と兵士
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	DrawTransition("絵色100", 1000, 1000, 0, 300, null, "cg/data/slide_02_01_1.png", true);
	Delete("絵色100");


	SetNwC("cg/fw/nw村人Ｃ.png");

//嶋：voice_classチェック

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【ｅｔｃ／村人Ｃ】
<voice name="ｅｔｃ／村人Ｃ" class="その他男声" src="voice/ma00/0000790e151">
「啊……啊、啊啊。」

{	NwC("cg/fw/nw兵士Ａ.png");}
//【ｅｔｃ／兵士Ａ】
<voice name="ｅｔｃ／兵士Ａ" class="その他男声" src="voice/ma00/0000800e241">
「呜……咕、啊……」

{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人Ｄ】
<voice name="ｅｔｃ／村人Ｄ" class="その他男声" src="voice/ma00/0000810e152">
「咕咕……嘎。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空、竜騎兵
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	CreateTexture("絵背景50", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Delete("絵背景200");

	StC(1000,@0,-300,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStC(0,true);

	CreateSE("SE01","se戦闘_動作_空中待機_L");
	MusicStart("SE01",0,800,0,1000,null,true);
	BGMoveAuto("@StC*",1);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("黒幕１");

	SetNwL("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000820e030">
「这些家伙怎么回事……？
　样子真奇怪啊。」

//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000830e030">
「因为恐惧过度疯了吗？」

{	NwL("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000840e032">
「不，卫兵们的情况也很怪。
　突然之间这是怎么了……」

{	NwL("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000850e237">
「嗯……？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 300, 0, null);

	CreateColorEX("絵色100", 1500, "Black");
	Fade("絵色100", 200, 1000, null, true);
	BGMoveDelete();
	DeleteStC(0,false);

	CreateTextureEX("Gin_song15", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄15.png");
	CreateTextureEX("Gin_song16", 1600, Center, Middle, "cg2/sys/telop/tp_銀星号の唄16.png");
	CreateTextureEX("Gin_song17", 1600, Center, Middle, "cg2/sys/telop/tp_銀星号の唄17.png");
	CreateTextureEX("Gin_song18", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄18.png");
	CreateTextureEX("Gin_song19", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄19.png");
	CreateTextureEX("Gin_song20", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄20.png");
	CreateTextureEX("Gin_song21", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄21.png");
	CreateTextureEX("Gin_song22", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄22.png");
	CreateTextureEX("Gin_song23", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄23.png");
	CreateTextureEX("Gin_song24", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄24.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song18", 0, @0, @-80, null, true);
	Move("Gin_song17", 0, @0, @-120, null, true);
	Move("Gin_song16", 0, @0, @-160, null, true);
	Move("Gin_song15", 0, @0, @-200, null, true);
	Move("Gin_song20", 0, @0, @0, null, true);
	Move("Gin_song21", 0, @0, @+40, null, true);
	Move("Gin_song22", 0, @0, @+80, null, true);
	Move("Gin_song23", 0, @0, @+120, null, true);
	Move("Gin_song24", 0, @0, @+160, null, true);

	SetBacklog("《创造奇迹的圣人诅咒着拯救芸芸众生之神》", null, null);
	Move("Gin_song15", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song15", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《黃金之盔的霸王与其万里征伐的爱马一道同沉河底》", null, null);
	Move("Gin_song16", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song16", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《湖中美丽的公主弃国取爱，受刑溺毙于粪沼之中》", null, null);
	Move("Gin_song17", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song17", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《被遗弃的婴孩以蚯蚓之血为母乳，食之三夜而烂腹为始》", null, null);
	Move("Gin_song18", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song18", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生命啊，听听这赞歌，重叠起笑至疲惫的怨恨》", null, null);
	Move("Gin_song19", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song19", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生命啊，听听这祷告，枕以愤怒颤抖般的喜悦》", null, null);
	Move("Gin_song20", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song20", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《炎与剑数次之连环裝扮起百年之生命》", null, null);
	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《为黑暗与静寂所守护的七日之生命，会纯粹地闪耀光辉吧》", null, null);
	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧》", null, null);
	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块》", null, null);
	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey();
/*
//嶋：下記位置調整のためスペース追加
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]


《创造奇迹的圣人诅咒着拯救芸芸众生之神》
《黃金之盔的霸王与其万里征伐的爱马一道同沉河底》
《湖中美丽的公主弃国取爱，受刑溺毙于粪沼之中》
《被遗弃的婴孩以蚯蚓之血为母乳，食之三夜而烂腹为始》
《生命啊，听听这赞歌，重叠起笑至疲惫的怨恨》
《生命啊，听听这祷告，枕以愤怒颤抖般的喜悦》
《炎与剑数次之连环裝扮起百年之生命》
《为黑暗与静寂所守护的七日之生命，会纯粹地闪耀光辉吧》
《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧》
《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/



	SetVolume("@mbgm37", 2000, 0, null);

	Fade("Gin_song*", 500, 0, null, true);
	Delete("Gin_song*");

//◆空？
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	DrawTransition("絵色100", 1000, 1000, 0, 300, null, "cg/data/slide_03_01_1.png", true);
	Delete("絵色100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　悲剧落幕。
　第三幕继续。

　这是某种喜剧，
　同时，又是纯粹的悲剧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm34",0,1000,true);
//◆村、兵士
	CreateTextureEX("絵背景100", 1200, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Delete("絵背景50");

	SetNwC("cg/fw/nw兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【ｅｔｃ／兵士Ａ】
<voice name="ｅｔｃ／兵士Ａ" class="その他男声" src="voice/ma00/0000860e241">
「嘎啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEXadd("絵色100", 1500, "White");

	Fade("絵色100", 100, 1000, null, true);

	StC(1300,@0,@0,"cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	FadeStC(0,true);
	Move("@StC*", 0, @-70, @+25, null, true);
//◆発砲
	OnSE("se戦闘_攻撃_ライフル撃つ01",1000);

	Move("@StC*", 300, @+70, @-25, Dxl1, false);
	Fade("絵色100", 100, 0, null, false);
	SetNwL("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0591]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000870e030">
「什……
　你在向谁射击!?」

//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000880e030">
「想造反吗！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ev1000", 2500, -512, -100, "cg/ev/resize/ev002_銀星号事件イメージ２_l.jpg");
	CreateTextureEX("絵ev100", 2000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");

	Move("絵ev1000", 1600, @-512, @0, DxlAuto, false);
	Fade("絵ev1000", 300, 1000, null, true);

	Wait(300);

	Fade("絵ev100", 0, 1000,null,true);
	Fade("絵ev1000", 1000, 0, null, true);
	Delete("絵ev1000");

	SetNwC("cg/fw/nw兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0592]
//【ｅｔｃ／兵士Ａ】
<voice name="ｅｔｃ／兵士Ａ" class="その他男声" src="voice/ma00/0000890e241">
「咕、咕、咕啊啊啊。」

{	NwC("cg/fw/nw兵士Ｂ.png");}
//【ｅｔｃ／兵士Ｂ】
<voice name="ｅｔｃ／兵士Ｂ" class="その他男声" src="voice/ma00/0000900e242">
「呜呜呜呜……啊啊啊啊啊……」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000910e030">
「你……你在听吗，混蛋!!」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000920e032">
「等等，这怎么看都是精神错乱的状态……」

{	NwC("cg/fw/nw鎧士Ｂ.png");}
//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0000930e031">
「究竟怎么回事！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1300,@-200,@0,"cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	FadeStC(0,true);

	Fade("絵ev100", 1000, 0, null, true);

	CreateWindow("ウィンドウ１", 10000, 600, 0, 350, 576, false);
	SetAlias("ウィンドウ１","ウィンドウ１");
	CreateTextureEX("ウィンドウ１/絵ev100", 2000, 500, 0, "cg/ev/ev002_銀星号事件イメージ２.jpg");

	Move("ウィンドウ１/絵ev100", 5000, @-512, @0, AxlDxl, false);
	Fade("ウィンドウ１/絵ev100", 0, 1000,null,false);
	DrawTransition("ウィンドウ１/絵ev100", 1000, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	SetNwC("cg/fw/nw鎧士Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0593]
//【ｅｔｃ／鎧士Ｄ】
<voice name="ｅｔｃ／鎧士Ｄ" class="その他男声" src="voice/ma00/0000940e033">
「总之先阻止他们——唔!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆殴打音
	SL_leftdown(@-200,@-100,1000);
	CreateColorEXadd("絵色100", 15000, "White");
	OnSE("se戦闘_攻撃_殴る03",1000);
	SL_leftdownfade2(10);
	Wait(100);
	Fade("絵色100", 100, 1000, null, true);
	Delete("ウィンドウ１/*");
	Delete("ウィンドウ１");
	DeleteStC(0,true);
	Shake("絵背景100", 500, 10, 0, 0, 0, 500, null, false);
	Fade("絵色100", 100, 0, null, true);

	SetNwC("cg/fw/nw村人Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【ｅｔｃ／村人Ｅ】
<voice name="ｅｔｃ／村人Ｅ" class="その他男声" src="voice/ma00/0000950e153">
「嘻……咕咕。」

{	NwC("cg/fw/nw村人Ｆ.png");}
//【ｅｔｃ／村人Ｆ】
<voice name="ｅｔｃ／村人Ｆ" class="その他男声" src="voice/ma00/0000960e154">
「咕嘻，嘿嘿……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");
	Delete("絵背景200");
	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	StL(1300,-700,-450,"cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
	StR(1200,-730,-300,"cg/st/3d九四式指揮官_騎航_通常.png");

	Move("@StL*", 400, -300, @0, Dxl3, false);
	Move("@StR*", 400, 130, @0, Dxl1, false);

	FadeStR(300,false);
	FadeStL(300,false);

	OnSE("se戦闘_動作_空突進02",1000);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	SetNwC("cg/fw/nw鎧士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0611]
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0000970e032">
「连这些家伙也……？」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0000980e030">
「鹭、鹭沼殿下……这是……!?」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0000990e237">
「……
　总之，杀掉反抗我们的人！」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001000e237">
「以后再查明情况！」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001010e030">
「是……是！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStR(0,true);
	DeleteStL(0,true);

	StC(1200,@-300,@+200,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");

	Move("@StC*", 400, @+300, @+200, Dxl1, false);
	FadeStC(300,false);
	OnSE("se戦闘_動作_空突進02",1000);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	SetNwC("cg/fw/nw鎧士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0612]
//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0001020e031">
「了解！
　知不知道他们为何发狂根本没关系。」

//【ｅｔｃ／鎧士Ｂ】
<voice name="ｅｔｃ／鎧士Ｂ" class="その他男声" src="voice/ma00/0001030e031">
「反正我们肯定不会输……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆光速一閃
//◆撃墜
	CreateColorSP("絵黒地", 1, "#000000");

	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");
	CreateColorEXadd("絵色100", 6000, "White");

	SetBlur("絵EF100", true, 5, 500, 50, false);
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_動作_突進01",1000);

	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);

	Wait(400);

	Fade("絵色100", 200, 1000, null, true);

	DeleteStC(0,true);
	Delete("絵EF100");

	CreateTextureSP("絵EF200", 4900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSPadd("絵EF100", 5000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_破壊_鎧02",1000);
	Zoom("絵EF100", 500, 1000, 1000, null, false);
	Fade("絵色100", 200, 0, null, true);
	Shake("絵EF100", 500, 10, 10, 0, 0, 500, null, true);

	Delete("絵EF200");

	FadeDelete("絵EF100", 300,true);

	PrintGO("上背景", 15000);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("上背景");

	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	StR(60,@0,@+300,"cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
	StL(70,@0,@+400,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStR(0,true);
	FadeStL(0,true);
	Zoom("@StR*", 0, 500, 500, null, true);
	Request("@StR*", Smoothing);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetNwC("cg/fw/nw鎧士Ａ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001040e030">
「……山崎!?」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001050e237">
「什么……!?」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001060e032">
「谁、谁干的！」

{	NwC("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001070e034">
「从哪里来的……！」

{	NwC("cg/fw/nw鎧士Ｆ.png");}
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001080e035">
「是这些家伙……吗？」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001090e032">
「那不可能！　究竟怎么——」

{	NwC("cg/fw/nw鎧士Ｄ.png");}
//【ｅｔｃ／鎧士Ｄ】
<voice name="ｅｔｃ／鎧士Ｄ" class="その他男声" src="voice/ma00/0001100e033">
「……银……银色……」

{	NwC("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001110e034">
「津田？」

{	NwC("cg/fw/nw鎧士Ｄ.png");}
//【ｅｔｃ／鎧士Ｄ】
<voice name="ｅｔｃ／鎧士Ｄ" class="その他男声" src="voice/ma00/0001120e033">
「银色！　刚才，是那个银色的——！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆光速一閃
//◆撃墜
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");
	CreateColorEXadd("絵色100", 6000, "White");
	SetBlur("絵EF100", true, 5, 500, 50, false);
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_動作_突進01",1000);

	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);

	Wait(400);

	Fade("絵色100", 200, 1000, null, true);

	Delete("絵EF100");

	CreateTextureSP("絵EF200", 4900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	CreateTextureSPadd("絵EF100", 5000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_破壊_鎧02",1000);

	Zoom("絵EF100", 300, 1000, 1000, null, false);
	Fade("絵色100", 200, 0, null, true);

	Shake("絵EF100", 300, 10, 10, 0, 0, 500, null, true);
	Delete("絵EF200");

	DeleteStR(0,true);
	FadeDelete("絵EF100", 300,true);

	SetNwC("cg/fw/nw鎧士Ｅ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001130e034">
「……！」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001140e032">
「啊……啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵背景200", 10000);

	Delete("絵背景100");
	Delete("絵背景10");
	Delete("絵色100");
	DeleteStL(0,true);

	CreateColorSP("絵色100", 1000, "Black");
	CreateColorEXadd("絵色200", 10000, "White");

	CreateTextureSP("銀星", 5000, Center, -372, "cg/ev/resize/ev952_銀星号登場_l.jpg");
	Request("銀星", Smoothing);
	Fade("絵背景200", 300, 0, null, true);

	Wait(500);

	Fade("絵色200", 100, 1000, null, true);
	Delete("銀星");
	Delete("絵色100");
	CreateTextureSP("銀星", 200, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	FadeDelete("絵色200", 500, true);

//◆銀星号。演出入り

	SetNwC("cg/fw/nw鎧士Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001150e034">
「白银的……剑胄……」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001160e032">
「银星号……!?」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001170e030">
「这、这家伙是……银星号!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆なんか演出
	#av_銀星号=true;

	PrintGO("上背景", 15000);

	CreateColorEXadd("絵色200", 10000, "White");

	CreateTextureSP("銀星", 5000, Center, InBottom, "cg/ev/ev952_銀星号登場.jpg");
	Request("銀星", Smoothing);

	CreateColorEX("絵色100", 5500, "Black");

//◆生命の問いに
	CreateTextureEX("Gin_song01", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");

//◆生命を信じ
	CreateTextureEX("Gin_song02", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");

//◆獣よ踊れ野を馳せよ
	CreateTextureEX("Gin_song03", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");

//◆いまや如何なる
	CreateTextureEX("Gin_song04", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");


	Move("Gin_song01", 0, @0, @-65, null, true);
	Move("Gin_song02", 0, @0, @-25, null, true);
	Move("Gin_song03", 0, @0, @+15, null, true);
	Move("Gin_song04", 0, @0, @+55, null, true);

	Fade("上背景", 500, 0, null, false);

	Move("銀星", 2000, @0, 0, Dxl1, true);

	Fade("絵色100", 300, 500, null, true);

	SetBacklog("《倘若于生命怀抱疑问，小丑与恶魔则会握持钥匙》", null, null);
	Move("Gin_song01", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song01", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《倘若相信且醉心于生命，小丑与恶魔则会摘下帽子》", null, null);
	Move("Gin_song02", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song02", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧》", null, null);
	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块》", null, null);
	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey();

/*
//◆演出用のため、スペースで退避。
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]





《倘若于生命怀抱疑问，小丑与恶魔则会握持钥匙》
《倘若相信且醉心于生命，小丑与恶魔则会摘下帽子》
《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧》
《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/

//	Fade("絵色200", 100, 1000, null, true);
	Fade("Gin_song*", 500, 0, null, true);
	Delete("Gin_song*");
//	Delete("銀星");
//	Delete("絵色100");

	Fade("絵色100", 300, 0, null, true);

//	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg002_空b_03.jpg");
//	FadeDelete("絵色200", 500, true);

	SetNwR("cg/fw/nw鎧士Ａ.png");

//	StC(1000, @30,@0,"cg/st/3d銀星号_立ち_通常.png");
//	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001180e030">
「杀戮者银星号……」

{	NwR("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001190e032">
「破坏魔银星号……」

{	NwR("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001200e034">
「死之雨银星号……」

{	NwR("cg/fw/nw鎧士Ｆ.png");}
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001210e035">
「白银的恶魔……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



	CreateColorEX("絵色100", 5500, "Black");
//◆生と死の
	CreateTextureEX("Gin_song01", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄13.png");

//◆されば嘲笑
	CreateTextureEX("Gin_song02", 6000, Center, Middle, "cg/sys/telop/tp_銀星号の唄14.png");

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	Fade("絵色100", 300, 500, null, true);

	SetBacklog("《于生死夹缝间，嘲笑自我，忘却懵懂的自身》", null, null);
	Move("Gin_song01", 600, @0, @-10, null, false);
	Fade("Gin_song01", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《故将拂晓之叹作为钟声，拉开神曲之幕吧》", null, null);
	Move("Gin_song02", 600, @0, @-10, null, false);
	Fade("Gin_song02", 600, 1000, null, true);

	WaitKey();

	Fade("Gin_song01", 500, 0, null, false);
	Fade("Gin_song02", 500, 0, null, true);
	Delete("Gin_song*");

	Fade("絵色100", 300, 0, null, true);

//嶋：テロップ挿入につき退避
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]






《于生死夹缝间，嘲笑自我，忘却懵懂的自身》
《故将拂晓之叹作为钟声，拉开神曲之幕吧》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/

	SetNwR("cg/fw/nw鎧士Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0671]
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001220e034">
「在空中……<RUBY text="··">静止</RUBY>了……!?」

{	NwR("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001230e030">
「不可能……
　又不是飞船，这种事情
怎么可能办到……！」

{	NwR("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001240e237">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	Delete("銀星");

	CreateColorSP("黒幕１", 10000, "BLACK");
	DrawDelete("上背景", 300, 1000, "slide_01_01_1", true);

	DeleteStC(0,true);

	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	StR(1000,100,-400,"cg/st/3d九四式指揮官_騎航_通常.png");
	StL(1200,-750,-490,"cg/st/3d九四式竜騎兵_騎航_通常.png");

	StCL(1000,@-1500,@+350,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	StCR(1250,@-1500,@+450,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	FadeStCR(0,true);
	FadeStCL(0,true);

	Move("@StL*", 400, -340,-390, Dxl1, false);
	FadeStR(300,false);
	FadeStL(300,false);
	OnSE("se戦闘_動作_空突進02",1000);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetNwC("cg/fw/nw鎧士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001250e032">
「队长！　队长殿下！　请下令！」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001260e237">
「……给、给我上！
　怕什么蠢货！　那家伙再怎么以残暴强大著称，
到底也只是单枪匹马，
你们包围起来还杀不掉吗！」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001270e237">
「快上!!
　谁能拿下这家伙的首级记大功!!」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001280e030">
「明……明白！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆武者編隊展開
//◆攻撃
//◆全然当たらん様子
	OnSE("se戦闘_動作_空突進01",1000);
	Move("@StR*", 400, @-1500, @-50, Dxl1, false);

	Move("@StL*", 400, 160, -490, Dxl1, false);

	Move("@StMR*", 400, -10, -190, Dxl1, false);

	Move("@StML*", 400, -470, -530, Dxl1, true);


	StL(1200,160, -490,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	StCR(1250,-10, -190,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	StCL(1000,-470, -530,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	Wait(100);

	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStL(300,false);
	Wait(100);
	OnSE("se戦闘_動作_刀構え02",1000);
	FadeStCL(300,false);
	Wait(100);
	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStCR(300,true);

	Wait(100);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("@StL*", 400, @+1200, @+300, Dxl1, false);

	Wait(200);

	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("@StMR*", 100, 2000, 2000, null, false);
	Move("@StMR*", 400, @+1500, @+100, Dxl1, false);

	Wait(100);

	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("@StML*", 100, 500, 500, null, false);
	Move("@StML*", 400, @+1600, @-100, Dxl1, true);


	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SL_down(@0,@-100,1500);
	SL_left(@0,@-100,1500);
	SL_leftup(@0,@-100,1500);

	CreateColorEXadd("絵色200", 15000, "White");
	Zoom("絵背景200", 400, 1000, 1000, null, false);
	Fade("絵背景200", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateColorSP("絵色100", 1500, "Black");

	FadeDelete("絵背景200", 300, true);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_leftupfade2(15);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	SL_leftfade2(10);
	Wait(100);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_downfade2(10);
	Fade("絵色200", 200, 1000, null, true);
	Delete("絵背景200");
	Delete("絵色100");


	StC(1000,@-100,@+450,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	Fade("絵色200", 200, 0, null, true);

	Move("@StC*", 300, @100, @-50, DxlAuto, false);
	FadeStC(300,true);

	SetNwL("cg/fw/nw鎧士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001290e032">
「什……消失了……!?」

{	NwL("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001300e030">
「哪、哪里去了!?　在哪里!?」

{	NwL("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001310e034">
「笨蛋，上面！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStC(0,true);
	Delete("絵色200");
	Delete("絵背景100");
	Delete("絵背景200");

//◆奈：突っ込み
	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	StR(1200,@+500,@+800,"cg/st/3d銀星号_騎航_通常.png");
	FadeStR(0,true);
	Rotate("@StR*", 0, @0, @180, @30, null,true);
	SetBlur("@StR*", true, 3, 500, 50, false);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);

	OnSE("se戦闘_動作_空突進07",1000);
	Move("@StR*", 200, @-1800, @-1152, Dxl1, true);

	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	DeleteStR(0,true);
	Delete("絵背景10");
//◆奈：ここまで

	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	StL(1200,-360,-300,"cg/st/3d九四式指揮官_騎航_通常.png");
	StR(1000,140,-440,"cg/st/3d九四式竜騎兵_騎航_通常.png");

	FadeStR(0,true);
	FadeStL(0,true);

	Rotate("@StL*", 0, @0, @0, @-10, null,true);
	Request("@StL*", Smoothing);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");




	SetNwC("cg/fw/nw鎧士Ｆ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0691]
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001320e035">
「太快了……！」

{	NwC("cg/fw/nw部隊長.png");}
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001330e237">
「枪……枪！
　快用枪！　让它停下来抓住它!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆機銃連射
//◆やっぱり当たんねー。

	PrintGO("上背景", 10000);

	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	DrawDelete("上背景", 200, 100, "slide_01_01_0", true);

	StL(1250,@-1424, @300,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	StR(1200,@-1424, @500,"cg/st/3d九四式竜騎兵_騎航_通常.png");

	Zoom("@StR*", 0, 750, 750, null, true);
	Zoom("@StL*", 0, 750, 750, null, true);

	FadeStA(0,true);


	OnSE("se戦闘_動作_空突進08",800);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", true);
	Zoom("@StR*", 600, 500, 500, null, false);
	Zoom("@StL*", 600, 500, 500, null, false);
	BezierMove("@StR*", 600, (@0,@0){@0,@0}{@0,@0}(@+812,@+100){@+1024,@+50}{@+1024,@+50}(@+2748,@-200), Dxl1, false);
	BezierMove("@StL*", 600, (@0,@0){@0,@0}{@0,@0}(@+812,@+100){@+1024,@+50}{@+1024,@+50}(@+3548,@-500), Dxl1, true);

	DeleteStR(0,true);
	DeleteStL(0,true);

	StL(1250, @+2048, @-500,"cg/st/3d九四式竜騎兵_騎航_戦闘c.png");
	StR(1200, @+2048, @-500,"cg/st/3d九四式竜騎兵_騎航_戦闘c.png");

	FadeStR(200,false);
	FadeStL(200,false);

	Request("@StL*", Smoothing);
	Request("@StR*", Smoothing);
	Rotate("@StL*", 0, @0, @0, @+20, null,true);
	Rotate("@StR*", 0, @0, @0, @+10, null,true);

	Wait(300);

	OnSE("se戦闘_動作_空突進02",1000);
	BezierMove("@StL*", 700, (@0,@0){@0,@0}{@0,@0}(@-512,@+100){@-1024,@+50}{@-1024,@+50}(@-1598,@+900), Dxl1, false);
	BezierMove("@StR*", 700, (@0,@0){@0,@0}{@0,@0}(@-512,@+100){@-1024,@+50}{@-1024,@+50}(@-2350,@+700), Dxl1, true);

	CreateTextureEX("絵背景1000", 2100, -1024, Middle, "cg/ev/resize/ev302_94式射撃_l.jpg");

	CreateTextureEX("絵背景500", 2000, Center, Middle, "cg/ev/ev302_94式射撃.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev302_94式射撃.jpg");

	Move("絵背景1000", 1500, @+300, @0, Dxl1, false);
	Fade("絵背景1000", 700, 1000, null, true);


	Fade("絵背景500", 0, 1000, null, true);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("絵背景200", 500000, 1, 2, 0, 0, 500, null, false);

	Wait(300);;

	Fade("絵背景1000", 300, 0, null, true);

	CreateColorEXadd("絵色100", 15000, "White");

	CreateSE("SE01","se戦闘_銃器_機関銃乱射01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);
	Fade("絵色100", 80, 800, null, true);
	Fade("絵色100", 80, 0, null, true);

	Fade("絵色100", 300, 1000, null, true);

	Delete("絵背景200");
	Delete("絵背景100");
	Delete("絵背景500");
	Delete("絵背景1000");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	SetVolume("SE01", 500, 0, null);


	Fade("絵色100", 300, 0, null, true);


	SetNwC("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001340e030">
「他妈的！　这回又在哪里——」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001350e032">
「榊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 200, 0, null);

//◆光速一閃
//◆撃墜
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");
	Rotate("絵EF100", 0, @0, @180, @0, null,true);
	CreateColorEXadd("絵色100", 6000, "White");
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 5, 500, 50, false);

	OnSE("se戦闘_動作_突進01",1000);

	Move("絵EF100", 200, @-500, @-200, null, false);
	Fade("絵EF100", 200, 1000, null, true);
	Wait(300);
	Fade("絵色100", 200, 1000, null, true);

	DeleteStR(0,true);
	DeleteStL(0,true);

	Delete("絵EF100");

	CreateTextureSP("絵EF200", 4900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSPadd("絵EF100", 5000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	OnSE("se戦闘_攻撃_殴る05",1000);
	Zoom("絵EF100", 300, 2000, 2000, null, false);
	Fade("絵色100", 200, 0, null, true);

	Shake("絵EF100", 1000, 10, 10, 0, 0, 500, null, false);
	Delete("絵EF200");

	Wait(500);

	CreateTextureEXadd("絵st120", 2200, -655, -691, "cg/ef/ef044_火花c.png");
	Rotate("絵st120", 0, @0, @0, 35, null,true);
	CreateTextureEXadd("絵st130", 2200, -332, -323, "cg/ef/ef044_火花c.png");
	Rotate("絵st130", 0, @0, @0, 15, null,true);
	CreateTextureEXadd("絵st140", 2200, -666, -330, "cg/ef/ef044_火花c.png");
	Rotate("絵st140", 0, @0, @0, 90, null,true);

	OnSE("se戦闘_動作_空落下01",1000);
	Wait(300);
	Shake("絵背景100", 1200, 10, 15, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵EF100", 300,true);

	SetNwC("cg/fw/nw鎧士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001360e030">
「嘎啊!?」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001370e032">
「榊！　没事吧！」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001380e030">
「……没事………
　可恶，手腕和……翼型装甲被伤到了！」

//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001390e030">
「飞不了……！」

{	NwC("cg/fw/nw鎧士Ｅ.png");}
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001400e034">
「……榊！　快逃!!」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001410e030">
「啊……？」

{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人Ｃ】
<voice name="ｅｔｃ／村人Ｃ" class="その他男声" src="voice/ma00/0001420e151">
「嘻……咕咕。」

{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人Ｄ】
<voice name="ｅｔｃ／村人Ｄ" class="その他男声" src="voice/ma00/0001430e152">
「嘿哈哈哈哈哈哈。」

{	NwC("cg/fw/nw鎧士Ａ.png");}
//【ｅｔｃ／鎧士Ａ】
<voice name="ｅｔｃ／鎧士Ａ" class="その他男声" src="voice/ma00/0001440e030">
「唔啊啊啊啊啊啊!?」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆無数の殴打
	CreateTextureEXadd("絵st150", 2200, 131, -668, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵st160", 2200, 250, -435, "cg/ef/ef044_火花c.png");
	Rotate("絵st160", 0, @0, @0, 120, null,true);
	CreateTextureEXadd("絵st170", 2200, -186, -576, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵st180", 2200, -2, -324, "cg/ef/ef044_火花c.png");
	Rotate("絵st180", 0, @0, @0, 160, null,true);
	Zoom("絵st*", 0, 500, 500, null, true);
	SetBlur("絵st*", true, 2, 400, 150, false);
	SetTone("絵st*", Sepia);

	CreateSE("SE01L","se戦闘_攻撃_殴打連撃02_L");
	MusicStart("SE01L",0,1000,0,1000,null,true);

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	Shake("絵背景100", 50000, 2, 3, 0, 0, 1000, null, false);
	Rotate("絵st110", 500, @0, @0, @+1800, Dxl1,false);
	Zoom("絵st110", 200, 1300, 1300, Dxl1, false);
	Fade("絵st110", 50, 1000, Dxl1, true);
	Zoom("絵st170", 25, 500, 500, null, false);
	Fade("絵st110", 200, 0, null, false);

	Rotate("絵st120", 500, @0, @0, @+4200, DxlAuto,false);
	Zoom("絵st120", 200, 1100, 1100, Dxl1, false);
	Fade("絵st120", 50, 1000, Dxl1, true);
	Zoom("絵st110", 25, 500, 500, null, false);
	Fade("絵st120", 200, 0, null, false);

	Rotate("絵st130", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("絵st130", 200, 1600, 1600, Dxl1, false);
	Fade("絵st130", 50, 1000, Dxl1, true);
	Zoom("絵st120", 25, 500, 500, null, false);
	Fade("絵st130", 200, 0, null, false);

	Rotate("絵st140", 500, @0, @0, @+7500, null,false);
	Zoom("絵st140", 200, 1100, 1100, Dxl1, false);
	Fade("絵st140", 50, 1000, Dxl1, true);
	Zoom("絵st130", 25, 500, 500, null, false);
	Fade("絵st140", 200, 0, null, false);

	Rotate("絵st150", 500, @0, @0, @+2500, DxlAuto,false);
	Zoom("絵st150", 200, 1400, 1400, Dxl1, false);
	Fade("絵st150", 50, 1000, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);

	Rotate("絵st160", 500, @0, @0, @+3500, Dxl2,false);
	Zoom("絵st160", 200, 1100, 1100, Dxl1, false);
	Fade("絵st160", 50, 1000, Dxl1, true);
	Zoom("絵st150", 25, 500, 500, null, false);
	Fade("絵st160", 200, 0, null, false);

	Rotate("絵st170", 500, @0, @0, @+3600, Dxl3,false);
	Zoom("絵st170", 200, 1300, 1300, Dxl1, false);
	Fade("絵st170", 50, 1000, Dxl1, true);
	Zoom("絵st160", 25, 500, 500, null, false);
	Fade("絵st170", 200, 0, null, false);

	Rotate("絵st130", 500, @0, @0, @+3000, Dxl1,false);
	Zoom("絵st130", 200, 1400, 1400, Dxl1, false);
	Fade("絵st130", 50, 1000, Dxl1, true);
	Zoom("絵st170", 25, 500, 500, null, false);
	Fade("絵st130", 200, 0, null, false);

	Rotate("絵st140", 500, @0, @0, @+7900, DxlAuto,false);
	Zoom("絵st140", 200, 1700, 1700, Dxl1, false);
	Fade("絵st140", 50, 1000, Dxl1, true);
	Zoom("絵st130", 25, 500, 500, null, false);
	Fade("絵st140", 200, 0, null, false);

	Rotate("絵st150", 500, @0, @0, @+1800, DxlAuto,false);
	Zoom("絵st150", 200, 1600, 1600, Dxl1, false);
	Fade("絵st150", 50, 750, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);

	Rotate("絵st160", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("絵st160", 200, 1100, 1100, Dxl1, false);
	Fade("絵st160", 50, 1000, Dxl1, true);
	Zoom("絵st150", 25, 500, 500, null, false);
	Fade("絵st160", 200, 0, null, false);

	Rotate("絵st110", 500, @0, @0, @+5400, Dxl1,false);
	Zoom("絵st110", 200, 1200, 1200, Dxl1, false);
	Fade("絵st110", 5, 800, Dxl1, true);
	Zoom("絵st160", 25, 500, 500, null, false);
	Fade("絵st110", 200, 0, null, false);

	CreateColorEX("黒幕１", 15000, "BLACK");
	Fade("黒幕１", 500, 1000, null, false);

	Rotate("絵st120", 500, @0, @0, @+1800, Dxl1,false);
	Zoom("絵st120", 200, 1300, 1300, Dxl1, false);
	Fade("絵st120", 50, 1000, Dxl1, true);
	Zoom("絵st110", 25, 500, 500, null, false);
	Fade("絵st120", 200, 0, null, false);

	Rotate("絵st130", 500, @0, @0, @+4200, DxlAuto,false);
	Zoom("絵st130", 200, 1100, 1100, Dxl1, false);
	Fade("絵st130", 50, 1000, Dxl1, true);
	Zoom("絵st120", 25, 500, 500, null, false);
	Fade("絵st130", 200, 0, null, false);

	Rotate("絵st140", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("絵st140", 200, 1600, 1600, Dxl1, false);
	Fade("絵st140", 50, 1000, Dxl1, true);
	Zoom("絵st130", 25, 500, 500, null, false);
	Fade("絵st140", 200, 0, null, false);

	Rotate("絵st150", 500, @0, @0, @+7500, null,false);
	Zoom("絵st150", 200, 1100, 1100, Dxl1, false);
	Fade("絵st150", 50, 1000, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);

	WaitAction("黒幕１", null);

	SetVolume("SE01L", 1000, 0, null);
	PrintGO("上背景", 15000);

	CreateColorSP("黒幕１", 5000, "BLACK");
	DrawDelete("上背景", 300, 100, "slide_03_01_0", true);

	CreateTextureEX("散華1", 4000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("散華1", 0, 2000, 2000, null, true);
	Move("散華1", 0, -200, @0, null, true);


	CreateTextureEXadd("散華2", 4000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("散華2", 0, 1000, 1000, null, true);

	CreateColorEXadd("絵色200", 5000, "White");

	CreateTextureSP("絵背景100", 1000, Center, 0, "cg/bg/bg002_空b_03.jpg");
	Delete("絵背景10");
	Delete("絵色100");
	Delete("絵EF100");

	StL(1250,@+290,@+300,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	StR(1200,@+190,@-30,"cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	Zoom("@StL*", 0, 1200, 1200, null, true);
	Zoom("@StR*", 0, 600, 600, null, true);

	Rotate("@StL*", 0, @0, @0, @-20, null,true);

	Request("@StL*", Smoothing);
	Request("@StR*", Smoothing);


	CreateTextureEX("絵st100", 1200, Center, InBottom, "cg/st/3d銀星号_騎航_通常.png");
	Move("絵st100", 0, @+800, @0, Dxl1, true);
	Fade("絵背景100", 0, 1000, null, true);
	Rotate("絵st100", 0, @0, @180, @0, null,true);

	FadeStR(0,true);
	FadeStL(0,true);

	SetVertex("絵背景100", 0, 512);
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("黒幕１");


	SetNwC("cg/fw/nw鎧士Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【ｅｔｃ／鎧士Ｅ】
<voice name="ｅｔｃ／鎧士Ｅ" class="その他男声" src="voice/ma00/0001450e034">
「榊、榊……」

{	NwC("cg/fw/nw鎧士Ｃ.png");}
//【ｅｔｃ／鎧士Ｃ】
<voice name="ｅｔｃ／鎧士Ｃ" class="その他男声" src="voice/ma00/0001460e032">
「喂，这是发呆的场合吗！　前面——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆光速一閃
//◆撃墜
//◆光速一閃
//◆撃墜
	Move("@StR*", 2000, -1200, @0, Dxl1, false);
	Move("@StL*", 2000, -1500, @0, Dxl1, false);
	DeleteStR(500,false);
	DeleteStL(500,false);
	Move("絵背景100", 1500, -1024, @0, Dxl1, true);
	OnSE("se戦闘_動作_空突進02",1000);
	BezierMove("絵st100", 500, (@0,@0){@-500,@150}{@-500,@150}(@-700, @+150), Dxl1, false);
	Fade("絵st100", 300, 1000, null, true);

	Wait(200);

	OnSE("se戦闘_動作_空上昇01",1000);

	SetBlur("絵st100", true, 3, 500, 50, false);

	BezierMove("絵st100", 1000, (@0,@0){@+400,@-200}{@+400,@-200}(@-524, @+500){@-1524,@-150}{@-1524,@-150}(@-2024, @-600), Dxl1, false);

	Wait(500);
	Fade("絵色200", 300, 1000, null, true);

	Delete("絵st100");

	Fade("散華1", 0, 1000, null, true);
	Wait(300);

	OnSE("se戦闘_破壊_爆発01",1000);
	Zoom("散華1", 300, 1500, 1500, null, false);
	Fade("絵色200", 300, 0, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");

	Fade("絵色200", 300, 1000, null, true);
	Delete("散華1");
	Fade("散華2", 0, 1000, null, true);
	OnSE("se戦闘_破壊_鎧02",1000);
	Zoom("散華2", 300, 2000, 2000, Dxl1, false);
	FadeDelete("絵色200", false);
	FadeDelete("散華2",1000,true);

//◆竜騎兵、一人
	StL(1200,@-500,@300,"cg/st/3d九四式竜騎兵_騎航_通常.png");
	StR(1200,@+400,@0,"cg/st/3d銀星号_立ち_通常b.png");

	OnSE("se戦闘_動作_空突進02",1000);

	Move("@StL*", 300, @+500, @0, Dxl1, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw鎧士Ｆ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001470e035">
「诶……啊……？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆銀星号
	OnSE("se人体_動作_跳躍03",1000);
	Move("@StR*", 300, @-300, @0, Dxl1, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【ｅｔｃ／鎧士Ｆ】
<voice name="ｅｔｃ／鎧士Ｆ" class="その他男声" src="voice/ma00/0001480e035">
「队、队长！　鹭沼殿下！　救……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光速一閃
//◆撃墜
/*
	CreateColorEX("絵色100", 3000, "Black");
	CreateColorEXadd("絵色200", 10000, "White");
	Fade("絵色100", 100, 1000, null, true);
	DeleteStR(0,true);
	DeleteStL(0,true);
	SL_left(@0,@-100,2000);
	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	SL_leftfade2(10);
	Fade("絵色200", 300, 1000, null, true);
	Delete("絵色100");
	OnSE("se戦闘_破壊_鎧02",1000);

	Fade("絵色200", 1000, 0, null, true);
*/


	CreateColorEXadd("絵色200", 10000, "White");

	Fade("絵色200", 100, 1000, null, true);
	DeleteStR(0,true);
	DeleteStL(0,true);

	CreateColorEXadd("絵色300", 10000, "White");

	CreateTextureEX("絵EV100", 1000, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");
	CreateTextureEX("絵EV200", 500, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 3, 500, 100, false);
	Fade("絵EV100", 0, 1000, null, true);
	Fade("絵EV200", 0, 1000, null, true);

	SetVertex("絵EV100", 1024, 0);


	Zoom("絵EV100", 300, 1000, 1000, null, false);
	OnSE("se戦闘_破壊_鎧02",1000);
	Fade("絵色200", 200, 0, null, true);

	Wait(100);

	Fade("絵色300", 100, 800, null, false);

	Wait(100);

	FadeDelete("絵EV100", 500, false);
	Shake("絵EV100", 500, 5, 6, 0, 0, 500, null, false);
	Zoom("絵EV100", 500, 1600, 1600, null, false);
	Fade("絵色300", 500, 0, Dxl1, false);

	Wait(1500);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("絵EV*");
	Delete("絵色*");
	Delete("絵背景*");
	CreateTextureSP("絵背景10", 50, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	StC(1200,-89,-398,"cg/st/3d九四式指揮官_騎航_通常.png");

	FadeStC(0,true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");


	SetNwL("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001490e237">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


//◆隊長騎


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001500e237">
「你……你……！
　竟然把我的部队……消灭了！　混蛋！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆色々と攻撃。
//◆色々とスカ。

	Move("@StC*", 300, @+500, @-100, Dxl1, false);
	DeleteStC(300,true);
	CreateTextureEX("絵EF100", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateColorEX("絵色100", 1500, "Black");
	SetVertex("絵EF100", 0, 0);
	Zoom("絵EF100", 300, 2000, 2000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵EF100", 200, 0, null, true);

	CreateColorEXadd("絵色1", 15000, "White");
	CreateTextureEX("絵EF01", 10000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureEX("絵EF02", 10000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵EF03", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureEX("絵EF04", 10000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEX("絵EF05", 10000, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");
	CreateTextureEX("絵EF06", 10000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");

	Zoom("絵EF0*", 0, 2000, 2000, null, true);

	OnSE("se戦闘_攻撃_刀連撃02",1000);
	Zoom("絵EF01", 100, 1000, 1000, Dxl1, false);
	Fade("絵EF01", 50, 1000, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF01");
	Fade("絵EF02", 0, 1000, null, true);
	Zoom("絵EF02", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF02");
	Fade("絵EF03", 0, 1000, null, true);
	Zoom("絵EF03", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF03");
	Fade("絵EF04", 0, 1000, null, true);
	Zoom("絵EF04", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF04");
	Fade("絵EF05", 0, 1000, null, true);
	Zoom("絵EF05", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF05");
	Fade("絵EF06", 0, 1000, null, true);
	Zoom("絵EF06", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF06");
	Delete("絵色100");
	Delete("絵EF100");
	SetVolume("@OnSE*", 300, 0, null);
	FadeDelete("絵色1", 500, true);

	StC(1200,@+500,@+100,"cg/st/3d九四式指揮官_騎航_戦闘.png");
	Request("@StC*", Smoothing);
	Move("@StC*", 300, -140, -440, Dxl1, false);
	FadeStC(300,true);

	WaitKey(100);

	OnSE("se戦闘_動作_突進01",1000);

	Move("@StC*", 300, 400, -500, Dxl1, false);
	DeleteStC(300,true);

	SetNwL("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001510e237">
「噢噢噢噢噢噢!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆色々と攻撃。
//◆色々とスカ。
//◆光速一閃
//◆痛撃
	CreateColorEXadd("絵色1", 15000, "White");
	CreateTextureEX("絵EF01", 10000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureEX("絵EF02", 10000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵EF03", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureEX("絵EF04", 10000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEX("絵EF05", 10000, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");
	CreateTextureEX("絵EF06", 10000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("絵EF07", 10000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");

	Zoom("絵EF0*", 0, 2000, 2000, null, true);

	OnSE("se戦闘_攻撃_刀連撃02",1000);
	Zoom("絵EF02", 100, 1000, 1000, Dxl1, false);
	Fade("絵EF02", 50, 1000, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF02");
	Fade("絵EF01", 0, 1000, null, true);
	Zoom("絵EF01", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF01");
	Fade("絵EF04", 0, 1000, null, true);
	Zoom("絵EF04", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF04");
	Fade("絵EF05", 0, 1000, null, true);
	Zoom("絵EF05", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF05");
	Fade("絵EF03", 0, 1000, null, true);
	Zoom("絵EF03", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF03");
	Fade("絵EF06", 0, 1000, null, true);
	Zoom("絵EF06", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 0, null, true);
	Fade("絵色1", 50, 1000, null, true);
	Delete("絵EF06");
	Delete("絵EF100");
	SetVolume("@OnSE*", 300, 0, null);
	StC(1200,@0,@+400,"cg/st/3d九四式指揮官_騎航_戦闘.png");
	FadeStC(0,true);
	Move("@StC*", 300, @+200, @0, null, false);
	Fade("絵色1", 300, 0, null, true);
	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	Fade("絵EF07", 0, 1000, null, true);
	Zoom("絵EF07", 100, 1000, 1000, Dxl1, false);
	Fade("絵色1", 50, 1000, null, true);
	OnSE("se戦闘_攻撃_殴る05",1000);
	Delete("絵EF07");
	Move("@StC*", 300, @-200, @0, null, false);
	Shake("@StC*", 500, 10, 10, 0, 0, 500, null, false);
	Shake("絵背景100", 500, 10, 10, 0, 0, 500, null, false);
	FadeDelete("絵色1", 500, true);

	SetNwL("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001520e237">
「咕……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆攻撃
//◆スカ
//◆銀星号
	Move("@StC*", 300, @+1200, @0, null, false);
	DeleteStC(300,true);

	CreateColorEX("絵色1", 2000, "Black");
	CreateColorEXadd("絵色2", 15000, "White");
	SL_centerout(@0,@-100,1000);

	Fade("絵色1", 200, 1000, null, true);
	OnSE("se戦闘_攻撃_刀振る01",1000);

	SL_centeroutfade2(10);
	Fade("絵色2", 200, 1000, null, true);

	Delete("絵色1");
	StC(1200,@0,@0,"cg/st/3d銀星号_立ち_通常b.png");
	FadeStC(0,true);
	Wait(200);

	StL(1200,@-50,@+300,"cg/st/3d九四式指揮官_騎航_戦闘.png");

	OnSE("se人体_動作_跳躍01",1000);

	Move("@StC*", 300, @+350, @0, null, false);
	Fade("絵色2", 200, 0, null, true);

	FadeStL(300,true);

	SetNwC("cg/fw/nw部隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001530e237">
「竟、竟然不管用…………!?
　我的剑……我的招数……」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001540e237">
「……怎么回事……」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001550e237">
「用歌声让村人和士兵发狂……
　单手就对付了龙骑兵……」

//【ｅｔｃ／部隊長】
<voice name="ｅｔｃ／部隊長" class="その他男声" src="voice/ma00/0001560e237">
「你到底是何方神圣!!
　白银魔王!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃
//◆光速一閃
//◆撃墜
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef019_銀星号突貫.jpg");
	CreateColorEXadd("絵色100", 6000, "White");
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 5, 500, 50, false);

	SetVolume("@mbgm34", 500, 0, null);
	OnSE("se戦闘_動作_突進01",1000);

	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);
	Wait(400);

	Fade("絵色100", 200, 1000, null, true);

	DeleteStC(0,true);
	DeleteStL(0,true);
	Delete("絵EF100");
	CreateTextureSP("絵EF200", 4900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSPadd("絵EF100", 5000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_破壊_鎧02",1000);
	Zoom("絵EF100", 500, 1000, 1000, null, false);
	Fade("絵色100", 200, 0, null, true);

	Shake("絵EF100", 500, 10, 10, 0, 0, 500, null, true);
	Delete("絵EF200");

	FadeDelete("絵EF100", 300,true);


//◆虚空に佇む銀星号
	CreatePlainSP("上背景", 15000);
	CreateTextureSP("銀星", 1200, 200, -200, "cg/st/resize/3d銀星号_立ち_通常s.png");

	Move("銀星", 2000, @0, -35, DxlAuto, false);
	FadeDelete("上背景", 300, true);

	WaitAction("銀星",null);

	WaitKey(1000);

//	StC(1200,@0,@-200,"cg/st/3d銀星号_立ち_通常.png");
//	Move("@StC*", 1000, @0, @+200, null, false);
//	FadeStC(300,true);
//	WaitAction("@StC*",null);

	PrintGO("上絵", 15000);

	Delete("銀星");


	CreateSE("SE01","se自然_火_火災倒壊");
	MusicStart("SE01",1000,500,0,1000,null,true);


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	FadeDelete("上絵", 2000, true);



	SetNwC("cg/fw/nw村人Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【ｅｔｃ／村人Ｅ】
<voice name="ｅｔｃ／村人Ｅ" class="その他男声" src="voice/ma00/0001570e153">
「嘻、嘻嘻———！」

{	NwC("cg/fw/nw村人Ｆ.png");}
//【ｅｔｃ／村人Ｆ】
<voice name="ｅｔｃ／村人Ｆ" class="その他男声" src="voice/ma00/0001580e154">
「啊啊啊呜咕咕……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆殴打。銃声。
	CreateSE("SE10","se背景_ガヤ_合戦01");
	MusicStart("SE10",1000,500,0,1000,null,true);


//◆ＥＶ：精神汚染

	CreateTextureEX("絵EV100", 10000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	SoundPlay("@mbgm37",0,1000,true);

	Fade("絵EV100", 1000, 1000, null, true);

//◆村、炎上。レッドマスク＋ＳＥでＯＫか。

//◆見下ろす銀星号

//	CreateColorEX("上黒", 15000, "Black");
//	Fade("上黒", 300, 500, null, true);

//◆生命よこの賛歌
	CreateTextureEX("Gin_song19", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄19.png");
//◆生命よこの祈り
	CreateTextureEX("Gin_song20", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄20.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song20", 0, @0, @+10, null, true);

	SetBacklog("《生命啊，听听这赞歌，重叠起笑至疲惫的怨恨》", null, null);
	Move("Gin_song19", 1000, @0, @-10, null, false);
	Fade("Gin_song19", 1000, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《生命啊，听听这祷告，枕以愤怒颤抖般的喜悦》", null, null);
	Move("Gin_song20", 1000, @0, @-10, null, false);
	Fade("Gin_song20", 1000, 1000, null, true);

	WaitKey();

	Fade("Gin_song19", 500, 0, null, false);
	Fade("Gin_song20", 500, 0, null, true);
	Delete("Gin_song*");

//嶋：テロップ追加のため退避
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]






《生命啊，听听这赞歌，重叠起笑至疲惫的怨恨》
《生命啊，听听这祷告，枕以愤怒颤抖般的喜悦》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――

*/


//◆地獄絵図


	CreateTextureEX("Gin_song21", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄21.png");
	CreateTextureEX("Gin_song22", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄22.png");
	CreateTextureEX("Gin_song23", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄23.png");
	CreateTextureEX("Gin_song24", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄24.png");

	Move("Gin_song21", 0, @0, @-80, null, true);
	Move("Gin_song22", 0, @0, @-40, null, true);
	Move("Gin_song23", 0, @0, @0, null, true);
	Move("Gin_song24", 0, @0, @+40, null, true);

	SetBacklog("《炎与剑数次之连环裝扮起百年之生命》", null, null);
	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《为黑暗与静寂所守护的七日之生命，会纯粹地闪耀光辉吧》", null, null);
	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧》", null, null);
	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	SetBacklog("《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块》", null, null);
	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey();

	Fade("Gin_song21", 500, 0, null, false);
	Fade("Gin_song22", 500, 0, null, false);
	Fade("Gin_song23", 500, 0, null, false);
	Fade("Gin_song24", 500, 0, null, true);
	Delete("Gin_song*");

/*
//嶋：下記位置調整のためスペース追加
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]





《炎与剑数次之连环裝扮起百年之生命》
《为黑暗与静寂所守护的七日之生命，会纯粹地闪耀光辉吧》
《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧》
《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/


//	Fade("上黒", 300, 0, null, true);
//◆銀星号
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100",0,1000,null,true);


	FadeDelete("絵EV100",1000,true);

	CreateTextureEX("絵銀星", 1200, 200, -35, "cg/st/resize/3d銀星号_立ち_通常s.png");
	Fade("絵銀星", 300, 1000, null, true);


//	Fade("上黒", 300, 500, null, false);


//◆朽ちた土塊……
	CreateTextureEX("Gin_song01", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄25.png");

	Move("Gin_song01", 0, @0, @-40, null, true);

	SetBacklog("《腐朽之土块……》", null, null);
	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey();

	Fade("Gin_song01", 500, 0, null, true);
	Delete("Gin_song*");

//嶋：テロップ追加のため退避
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]






《腐朽之土块……》

</PRE>
	SetTextA();
	TypeBeginAI();//―――――――――――――――――――――――――――――
*/

//	Fade("上黒", 300, 0, null, true);

//◆何かに気付く銀星号
//◆燃える村。何者かの重い足音



	PrintGO("上背景", 15000);

	SetVolume("OnSE*",6000, 0, null);
	SetVolume("SE*",6000, 0, null);
	SetVolume("@mbgm37",6000, 0, null);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");

	Fade("上背景", 500, 0, null, true);

	Wait(2000);

	CreateColorEX("絵色100", 1500, "Black");
	CreateColorEX("絵色200", 17000, "Black");
	Fade("絵色100", 500, 1000, null, true);

	MovieSESet(16000,"mv村正登場","se特殊_mv用_村正登場");
	MovieSEStart2(300,0);
	Fade("絵色200", 300, 1000, null, true);
	Delete("絵色100");
	FadeDelete("絵色200", 500, true);

/*
	CreateSE("SE10","se人体_足音_鎧歩く01_L");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Wait(5000);

	SetVolume("SE10", 500, 0, null);
*/

	StC(1500,@10,@10,"cg/st/3d村正初期_立ち_通常.png");

	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	Move("@StC*", 300, @-10, @-10, Dxl1, false);
	FadeStC(300,true);

	Wait(1000);

	CreateTextureEX("絵ST100", 2000, -500, 576, "cg/st/3d村正初期_立ち_通常.png");
	Request("絵ST100", Smoothing);
	Zoom("絵ST100", 0, 1400, 1400, null, true);

	Fade("@StC*", 3000, 500, null, false);
	Fade("絵ST100", 3000, 1000, null, false);
	Move("絵ST100", 3000, @0, @-650, Dxl1, true);

	Wait(1000);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0831]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001590a00">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("上背景", 500, 1000, null, true);
	Fade("@StC*", 0, 1000, null, true);
	Delete("絵ST100");

	Wait(1000);

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0832]
//【光】
<voice name="光" class="光" src="voice/ma00/0001600a14">
「————」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



//	Wait(1000);

	FadeDelete("上背景", 500, true);

	StC(1500,@0,@0,"cg/st/3d村正初期_立ち_抜刀.png");
	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStC(300,true);

	Wait(1000);

	CreatePlainSP("上背景", 10000);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100",0,1000,null,true);

	StC(1200,@0,@0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStC(0,true);
	Rotate("@StC*", 0, @0, @180, @0, null,true);

	Fade("上背景",300,0,null,true);

	OnSE("se日常_衣類_衣擦れ01",500);
	Move("@StC*", 3000, @-200, @0, Dxl1, true);

	CreatePlainSP("上背景", 10000);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	Fade("絵背景100",0,1000,null,true);
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	StC(1200,@0,@0,"cg/st/3d村正初期_立ち_抜刀.png");
	FadeStC(0,true);

	FadeDelete("上背景",500,true);


	OnSE("se戦闘_動作_空上昇01",1000);
	Wait(200);

	CreateTextureSP("絵村正", 1200, 80, -160, "cg/st/3d村正初期_騎航_戦闘.png");
	Request("絵村正", Smoothing);
	Rotate("絵村正", 0, @0, @0, @40, null,true);

	DeleteStC(0,true);

	Move("絵村正", 300, @-700, @-1000, Dxl1, false);
	FadeDelete("絵村正", 300, false);

	Wait(200);

	Fade("絵EF100", 200, 1000, null, true);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵背景100",0,1000,null,true);


	StC(1200,@-200,@0,"cg/st/3d銀星号_立ち_通常.png");
	Rotate("@StC*", 0, @0, @180, @0, null,true);
	FadeStC(0,true);

	FadeDelete("絵EF100", 200, true);

	OnSE("se戦闘_動作_空突進03",1000);

	CreateTextureSP("絵銀星", 1200, -160, -240, "cg/st/3d銀星号_騎航_通常.png");
	Request("絵銀星", Smoothing);
	Rotate("絵銀星", 0, @0, @0, @40, null,true);

	DeleteStC(0,true);


	Move("絵銀星", 300, @+700, @+1000, Dxl1, false);
	FadeDelete("絵銀星", 300, true);

	CreateColorEXadd("絵色100", 15000, "White");
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef020_村正突貫04.jpg");
	CreateTextureEX("絵EF200", 6000, Center, Middle, "cg/ef/ef019_銀星号突貫04.jpg");

	SetVertex("絵EF100", 0, 576);
	SetVertex("絵EF200", 1024, 0);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Zoom("絵EF200", 0, 2000, 2000, null, true);
	Fade("絵色100", 200, 1000, null, true);
	Fade("絵EF100",0,1000,null,true);
	Shake("絵EF100", 1000, 3, 3, 0, 0, 500, null, false);
	Move("絵EF100", 600, -612, 300, Dxl1, false);
	OnSE("se戦闘_動作_空突進03",1000);
	Fade("絵色100", 500, 0, null, true);
	Fade("絵色100", 500, 1000, null, true);
	Fade("絵EF200",0,1000,null,true);
	Shake("絵EF200", 1000, 3, 3, 0, 0, 500, null, false);
	Move("絵EF200", 600, 612, -300, Dxl1, false);
	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵色100", 500, 0, null, true);
	Fade("絵色100", 500, 1000, null, true);
	Fade("絵EF200",0,0,null,true);
	Zoom("絵EF100", 0, 1200, 1200, null, true);
	Zoom("絵EF200", 0, 1200, 1200, null, true);
	Request("絵EF100", Smoothing);
	Request("絵EF200", Smoothing);
	Move("絵EF100", 0, 0, 0, Dxl1, true);
	Move("絵EF200", 0, 0, 0, Dxl1, true);
	OnSE("se戦闘_動作_空上昇01",1000);
	Shake("絵EF100", 1000, 1, 1, 0, 0, 500, null, false);
	Fade("絵色100", 500, 0, null, true);
	Fade("絵色100", 500, 1000, null, true);
	Fade("絵EF200",0,1000,null,true);
	OnSE("se戦闘_動作_空上昇01",1000);
	Shake("絵EF200", 1000, 1, 1, 0, 0, 500, null, false);
	Fade("絵色100", 500, 0, null, true);
	Fade("絵色100", 500, 1000, null, true);
	Delete("絵EF100");
	Delete("絵EF200");
	CreateColorSP("絵色200", 4000, "Black");
	CreateWindow("ウィンドウ１", 5000, 0, 0, 1024, 288, true);
	CreateWindow("ウィンドウ２", 5000, 0, 288, 1024, 576, true);
	SetAlias("ウィンドウ１","ウィンドウ１");
	SetAlias("ウィンドウ２","ウィンドウ２");
	CreateTextureEX("ウィンドウ２/絵EF100", 5000, 0, -200, "cg/ef/ef020_村正突貫04.jpg");
	CreateTextureEX("ウィンドウ１/絵EF200", 6000, 0, -100, "cg/ef/ef019_銀星号突貫04.jpg");

	CreateTextureEX("絵EF100", 7000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Request("絵EF100", Smoothing);
	Rotate("絵EF100", 0, @0, @180, @0, null,true);
	Zoom("絵EF100", 0, 1200, 1200, null, true);

	Fade("絵色100", 500, 0, null, false);

	Fade("ウィンドウ２/絵EF100", 0, 1000, null, false);
	DrawTransition("ウィンドウ２/絵EF100", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);

	Fade("ウィンドウ１/絵EF200", 0, 1000, null, false);
	DrawTransition("ウィンドウ１/絵EF200", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_1.png", true);

	OnSE("se戦闘_衝撃_衝突01",1000);

	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("絵色100", 500, 1000, null, true);

	Fade("絵EF100", 0, 1000, null, true);
	Shake("絵EF100", 5000, 1, 1, 0, 0, 500, null, false);

	Wait(200);
	OnSE("se戦闘_衝撃_衝突01",1000);

	Delete("上黒");
	Delete("ウィンドウ*");
	Delete("絵色200");

//	SL_up(@0,@0,2000);

	Fade("絵色100", 500, 0, null, true);
	Zoom("絵EF100", 250, 2500, 2500, Dxl1, false);
	Wait(100);
	Fade("絵色100", 500, 1000, null, true);
	Delete("絵EF100");

	FadeDelete("絵色100", 1500, true);

	CreateSE("SE01","se戦闘_攻撃_乱戦02");
	MusicStart("SE01",0,500,0,1000,null,true);


//◆銀星号

//◆村正
//◆チャキンと野太刀を構える

//◆銀星号

//◆村正飛躍
//◆突進

//◆銀星号

//◆銀星号飛翔
//◆銀色流星
//◆赤色彗星
//◆駆け違い交差する二つの軌跡
//◆夜空。激突のＳＥは継続？


//	RFlash();

	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　——两道流星穿梭于天际，交织，缠绕。

　红色流星如恶狼般狰狞。
　银色流星如雌鹿般轻盈。

　咆哮敲打着夜空。
　笑声划破了夜空。

　红色的武者用恸哭的咆哮操着太刀，
　银色的武者以拥抱的温柔拨开太刀。

  愤怒、惭愧、悔恨、悲叹，
　被喜悦、抚慰、宽容、愉悦迎接。

　第四幕——
　是夜的最后一幕，与最初一幕相似的决斗。

　不。
　并非，如此。

　这是交会。

　是玩耍。
　是高雅的公主，招待不解风趣男人的嬉闹。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	RFlashDelete();

	CreateTextureSP("絵背景100", 1000, Center, 0, "cg/bg/bg001_空a_03.jpg");

	StC(1500,@-60,@+300,"cg/st/3d銀星号_騎航_通常.png");
	Rotate("@StC*", 0, @0, @0, @280, null,false);
	Request("@StC*", Smoothing);
	FadeStC(0,true);

	StR(1500,@0,@576,"cg/st/3d村正初期_騎航_戦闘.png");
	Zoom("@StR*", 0, 1200, 1200, null, true);

	Rotate("@StR*", 0, @0, @0, @90, null,false);
	Request("@StR*", Smoothing);

	SetVolume("SE*", 500, 0, null);

	Move("@StC*", 300, @-20, @-20, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);


	OnSE("se戦闘_動作_空突進01",1000);
	Move("@StC*", 500, @-300, @-1000, Dxl1, false);
	DeleteStC(300,false);

	Wait(300);

	Move("@StR*", 150, 200, -40, Dxl1, false);
	FadeStR(200,true);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("@StR*", 1000, @-300, @-1200, Dxl1, false);
	DeleteStR(300,false);

	Wait(250);

	CreateColorEXadd("白転", 25000, "#FFFFFF");
	Fade("白転", 300, 1000, null, true);

	CreateTextureEX("絵EF100", 2000, Center, 0, "cg/ef/ef019_銀星号突貫03.jpg");
	Rotate("絵EF100", 0, @180, @0, @0, null,true);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Move("絵EF100", 0, -512, -288, Dxl1, false);
	Request("絵EF100", Smoothing);
	SetBlur("絵EF100", true, 3, 500, 50, false);

	CreateTextureSP("絵背景100", 1000, Center, 0, "cg/bg/bg002_空a_03.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Move("絵背景100", 0, @0, -288, Dxl1, false);

	DrawDelete("白転", 200, 100, "slide_06_00_1", true);

	OnSE("se戦闘_動作_空上昇01",1000);
	Move("絵EF100", 500, 0, 0, Dxl1, false);
	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 1000, 1000, null, true);

	Move("絵背景100", 0, 0, 0, Dxl1, true);
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Fade("絵EF100", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　白银向天空起舞。
　深红也追逐而上。

　月亮。
　向着月亮。

　或许。天宫那冷冽的光辉
会迎接与之相容之人，
拒绝与之不容之人。或许如此。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//嶋：出来ればここでもう一演出
//◆奈：とりあえず入れとく。

	CreateTextureEX("絵EF100", 2000, Center, 0, "cg/ef/ef019_銀星号突貫03.jpg");
	CreateTextureEX("絵EF200", 2500, Center, 0, "cg/ef/ef020_村正突貫03.jpg");
	CreateTextureEX("絵EF300", 3000, Center, 0, "cg/ef/ef019_銀星号突貫04.jpg");
	Zoom("絵EF300", 0, 2000, 2000, null, true);
	Request("絵EF300", Smoothing);
	Rotate("絵EF100", 0, @180, @0, @0, null,true);
	Rotate("絵EF300", 0, @180, @0, @320, null,true);
	OnSE("se戦闘_動作_空突進03",1000);
	Fade("絵EF100", 200, 1000, null, false);
	Fade("絵EF200", 200, 500, null, true);
	Wait(200);
	Fade("絵EF300", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0861]
　银色的妖精飞向无边的天际。
　赤色的鬼神如同被地狱召回般被迫与她分离。

　升至天顶的白银彗星。

　身后盈溢着明月的清辉，她宛若倚在玉座的君主，
睥睨尚且挣扎向上的深红恶鬼。

　头盔里的唇角扬起一抹微笑，吟出一段诗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

	CreateTextureEX("絵背景100", 3500, Center, 0, "cg/bg/bg002_空a_03.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

	#voice_on_銀星号=true;

	SetBacklog("　　　　「天座失墜――小彗星」", "voice/ma00/0001610a14", 光);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【光】
<voice name="光" class="光" src="voice/ma00/0001610a14">
　
　　　　「天体坠落——小彗星。」

</PRE>
	SetTextEXC();
	Request("@text0860", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フォーリンダウン·レイディバグ
//◆高々度から急降下、敵の直上で回転、踵キック。
//◆激突。撃墜

//嶋：ちょっと修正
//奈：更に修正
/*
	CreateTextureEX("絵ev50", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureSP("絵ev40", 9000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureEX("絵ev60", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	SetBlur("絵ev60", true, 3, 500, 100, false);

	CreateTextureEX("絵ev100", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureEX("絵ev200", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_b.jpg");
	CreateTextureEX("絵ev300", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");
	CreateTextureEX("絵ev400", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");

	CreateTextureEX("絵ev410", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	SetBlur("絵ev410", true, 3, 500, 100, false);

	CreateColorEX("絵色1000", 15000, "White");
	CreateColorEX("絵色100", 17000, "Black");

	OnSE("se人体_動作_跳躍03",1000);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	Fade("絵色1000", 0, 1000, null, true);
	SetVertex("絵ev50", 0, 0);
	Zoom("絵ev50", 0, 2000, 2000, Dxl1, true);
	Fade("絵ev50", 0, 1000, null, true);
	SetBlur("絵ev50", true, 3, 500, 100, false);
//	Move("絵ev50", 1500, -1024, -576, Dxl2, false);
	Move("絵ev50", 0, -1024, -576, Dxl2, false);
	Request("絵ev50", Smoothing);
	Fade("絵色1000", 1000, 500, null, true);
	Fade("絵色1000", 1000, 0, null, false);
//	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se特殊_陰義_発動01",1000);
	Move("絵ev50", 1500, @+1024, @+576, Dxl2, true);

//	Wait(500);
*/

	CreateColorEXadd("白", 10000, "WHITE");

	Fade("白",200,1000,null,true);

	MovieSESet(16000,"mv小彗星_a","se特殊_mv用_小彗星_a");
	MovieSEStart2(300,1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	Fade("フラッシュ白",500,1000,null,true);

	Delete("白");

	Wait(500);

//	CreateSE("SE01","se戦闘_破壊_爆発01");
//	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色1000", 500, 1000,null,true);
	Delete("絵ev*");
	Delete("絵EF*");
	Delete("絵背景*");

	CreateColorEX("絵色100", 17000, "Black");
//◆ブラックアウト
//◆ウェイト
	Fade("絵色100", 1500, 1000,null,true);
	Delete("絵色1000");
	Delete("フラッシュ白");
	Wait(2000);

	SetVolume("SE01", 1500, 0, null);

//◆荒れ野？　倒れる村正
	CreateTextureSP("絵ev10", 1000, -300, InBottom, "cg/ev/resize/ev101_プロローグ_a.jpg");
	CreateTextureEX("絵ev20", 1000, -700, 0, "cg/ev/resize/ev101_プロローグ_a.jpg");
	CreateTextureEX("絵ev100", 1000, Center, Middle, "cg/ev/ev101_プロローグ_a.jpg");
	CreateTextureEX("絵ev200", 1200, Center, Middle, "cg/ev/ev101_プロローグ_b.jpg");
	CreateTextureEX("絵ev300", 2000, Center, Middle, "cg/ev/ev101_プロローグ_c.jpg");

	CreateSE("SE01","se自然_火_火災倒壊");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(1500);

	Move("絵ev10", 6000, @+300, @0, AxlDxl, false);
	Fade("絵色100", 1500, 0,null,true);

	Wait(3000);

	Move("絵ev20", 6000, @-300, @0, AxlDxl, false);
	Fade("絵ev20", 1000, 1000,null,true);

	Wait(3000);

	Fade("絵ev100", 1000, 1000,null,true);

//◆シュイーンと舞い降りる銀星号。村正の上に浮遊

	SetFwC("cg/fw/fw村正武者_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001620a00">
「……银星号……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma00/0001630a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色1000", 15000, "White");
	Fade("絵色1000", 500, 1000,null,true);

//◆村正へ手を伸ばす銀星号。村正の野太刀がぷかーと浮かぶ
	Fade("絵ev200", 0, 1000,null,true);

	Fade("絵色1000", 1000, 0,null,true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001640a00">
「我的野太刀……？
　你打算做什么……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma00/0001650a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("絵色100", 15000, "White");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵色100", 200, 1000, null, true);

	Fade("絵ev300", 0, 1000,null,true);
	Delete("絵ev100");
	Delete("絵ev200");
	FadeDelete("絵色100", 300, true);
//◆パキーンと割れる音。フラッシュ。
//◆野太刀が七個の光る粒に変わっている

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001660a00">
「……“卵”……！」

//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001670a00">
「住手……你又想散播它吗！」

//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001680a00">
「想要制造寄生虫吗！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg001_空a_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

//	StC(1200,@0,@0,"cg/st/3d銀星号_騎航_通常.png");
//	FadeStC(0,true);
	CreateSE("SE02","se戦闘_動作_空上昇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵ev300", 300, true);

//◆ヒュン。飛行音と共にワイプアウト
//◆夜空


	Wait(100);

//	CreateSE("SE02","se戦闘_動作_突進01");
//	MusicStart("SE02",0,1000,0,1000,null,false);

//	Move("@StC*", 300, @+1000, @-100, null, false);
//	DeleteStC(300,true);


	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/bg/bg004_鄙びた村b_03.jpg");
	CreateSE("SE01a","se自然_火_火災倒壊");
	MusicStart("SE01a",500,1000,0,1000,null,true);

	Fade("絵背景200", 1000, 1000, null, true);
	Delete("絵背景100");

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001690a00">
「等等！」

//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001700a00">
「等等……咕。」

//【景明】
<voice name="景明" class="景明" src="voice/ma00/0001710a00">
「…………光…………！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//奈：以下、ちとタイミング修正しました
	CreateColorEX("色100", 20000, "Black");
	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 4000, 0, null);
	Fade("色100", 2000, 1000, null, true);

	DeleteStA(0,true);
	Delete("絵*");

	CreateTextureEX("logo001", 1000, Center, Middle, "cg/sys/Telop/lg_under.png");
	CreateTextureEX("logo002", 1000, Center, Middle, "cg/sys/Telop/lg_muramasa.png");

	CreateTextureEX("logo003", 1000, Center, Middle, "cg/sys/Telop/lg_装.png");
	CreateTextureEX("logo004", 1000, Center, Middle, "cg/sys/Telop/lg_甲.png");
	CreateTextureEX("logo005", 1000, Center, Middle, "cg/sys/Telop/lg_悪.png");
	CreateTextureEX("logo006", 1000, Center, Middle, "cg/sys/Telop/lg_鬼.png");
	CreateTextureEX("logo007", 1000, Center, Middle, "cg/sys/Telop/lg_村.png");
	CreateTextureEX("logo008", 1000, Center, Middle, "cg/sys/Telop/lg_正.png");

	CreateTextureEX("logo009", 400, Center, Middle, "cg/sys/Telop/lg_村正.jpg");
	CreateTextureEX("logo010", 900, Center, Middle, "cg/sys/Telop/lg_下白.jpg");

	CreateStencil("マスク０",16100,center,Middle,128,"cg/sys/Telop/lg_under.png",false);
	CreateColor("マスク０/logoM100", 16100, 0, 0, 1024, 576, #990000);
	Fade("マスク０/logoM100", 0, 0, null, true);
	Zoom("マスク０/logoM100", 0, 1100, 1100, null, true);

	CreateStencil("マスク１",16100,center,Middle,128,"cg/sys/Telop/lg_装.png",false);
	CreateColor("マスク１/logoM001", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク１/logoM001", 0, 0, null, true);

	CreateStencil("マスク２",16100,center,Middle,128,"cg/sys/Telop/lg_甲.png",false);
	CreateColor("マスク２/logoM002", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク２/logoM002", 0, 0, null, true);

	CreateStencil("マスク３",16100,center,Middle,128,"cg/sys/Telop/lg_悪.png",false);
	CreateColor("マスク３/logoM003", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク３/logoM003", 0, 0, null, true);

	CreateStencil("マスク４",16100,center,Middle,128,"cg/sys/Telop/lg_鬼.png",false);
	CreateColor("マスク４/logoM004", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク４/logoM004", 0, 0, null, true);


	CreateStencil("マスク５",16100,center,Middle,128,"cg/sys/Telop/lg_村.png",false);
	CreateColor("マスク５/logoM005", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク５/logoM005", 0, 0, null, true);

	CreateStencil("マスク６",16100,center,Middle,128,"cg/sys/Telop/lg_正.png",false);
	CreateColor("マスク６/logoM006", 16100, 0, 0, 1024, 576, "White");
	Fade("マスク６/logoM006", 0, 0, null, true);

	Request("マスク１/logoM001", AddRender);
	Request("マスク２/logoM002", AddRender);
	Request("マスク３/logoM003", AddRender);
	Request("マスク４/logoM004", AddRender);
	Request("マスク５/logoM005", AddRender);
	Request("マスク６/logoM006", AddRender);

	CreateColorSP("絵色100", 500, "Black");
	Delete("色100");

	Wait(4000);

	OnSE("se戦闘_攻撃_刀衝突02",800);
	Fade("マスク１/logoM001", 100, 1000, Dxl1, true);
	Fade("logo003", 0, 1000, null, true);
	Fade("マスク１/logoM001", 300, 0, Axl1, true);

	Wait(200);

	OnSE("se戦闘_攻撃_刀衝突02",800);
	Fade("マスク２/logoM002", 100, 1000, Dxl1, true);
	Fade("logo004", 0, 1000, null, true);
	Fade("マスク２/logoM002", 300, 0, Axl1, true);

	Wait(200);

	OnSE("se戦闘_攻撃_刀衝突02",800);
	Fade("マスク３/logoM003", 100, 1000, Dxl1, true);
	Fade("logo005", 0, 1000, null, true);
	Fade("マスク３/logoM003", 300, 0, Axl1, true);

	Wait(200);

	OnSE("se戦闘_攻撃_刀衝突02",800);
	Fade("マスク４/logoM004", 100, 1000, Dxl1, true);
	Fade("logo006", 0, 1000, null, true);
	Fade("マスク４/logoM004", 300, 0, Axl1, true);

	Wait(1500);

	OnSE("se特殊_鎧_装着03",800);

	Fade("マスク５/logoM005", 100, 1000, Dxl1, false);
	Fade("マスク６/logoM006", 100, 1000, Dxl1, true);
	Fade("logo001", 300, 1000, null, false);
	Fade("logo002", 300, 1000, null, false);
	Fade("logo007", 0, 1000, null, false);
	Fade("logo008", 0, 1000, null, true);
	Fade("マスク５/logoM005", 500, 0, Dxl1, false);
	Fade("マスク６/logoM006", 500, 0, Dxl1, true);


	WaitKey(5000);

//◆フェードアウト
	ClearWaitAll(3000, 2000);


..//ジャンプ指定
//次ファイル　"ma01_001.nss"

//タイトル画面。それなりに演出。





}


.//ma00_fire
function ma00_fire(){


	CreateTextureEX("fire_Move01", 1000, 0, -388, "cg/bg/resize/bg004_鄙びた村b_02.jpg");
	Request("fire_Move01", Smoothing);

	CreateColor("fire_Move02", 2500, 0, 0, 1024, 576, #a44809);
	Fade("fire_Move02", 0, 0, null, true);
	SetAlias("fire_Move02","fire_Move02");
	Request("fire_Move02", AddRender);

	CreateProcess("町火", 150, 0, 0, "ma00_fireProcess");
	SetAlias("町火","町火");
	Request("町火", Start);

}

.//ma00_fireDelete
function ma00_fireDelete(){

	Delete("@fire_Move01");
	Delete("@fire_Move02");
	Delete("@町火");

}

.//ma00_fireProcess
function ma00_fireProcess(){

　begin:

	$ma00_t01 = 150;
	$ma00_t02 = 180;
	$ma00_t03 = 300;
	$ma00_t04 = 200;
	$ma00_t05 = 150;
	$ma00_t06 = 400;
	$ma00_t07 = 140;
	$ma00_t08 = 200;
	$ma00_t09 = 220;
	$ma00_t10 = 160;

	$ma00_f01 = 80;
	$ma00_f02 = 60;
	$ma00_f03 = 120;
	$ma00_f04 = 150;
	$ma00_f05 = 60;
	$ma00_f06 = 200;
	$ma00_f07 = 130;

	Move("@fire_Move01", 100000, @-1024, @0, null, false);

	Fade("@fire_Move01", 0, 1000, null, true);

	DrawTransition("@fire_Move02", 0, 0, 200, 800, null, "cg/data/slide_02_00_1.png", true);

	while(1){
		Fade("@fire_Move02", $ma00_t01, $ma00_f01, null, true);
		Fade("@fire_Move02", $ma00_t02, $ma00_f02, null, true);
		Fade("@fire_Move02", $ma00_t03, $ma00_f03, null, true);
		Fade("@fire_Move02", $ma00_t04, $ma00_f04, null, true);
		Fade("@fire_Move02", $ma00_t05, $ma00_f05, null, true);
		Fade("@fire_Move02", $ma00_t06, $ma00_f06, null, true);
		Fade("@fire_Move02", $ma00_t07, $ma00_f07, null, true);
		Fade("@fire_Move02", $ma00_t08, $ma00_f02, null, true);
		Fade("@fire_Move02", $ma00_t09, $ma00_f03, null, true);
		Fade("@fire_Move02", $ma00_t10, $ma00_f05, null, true);
		Fade("@fire_Move02", $ma00_t05, $ma00_f04, null, true);
	}


}

..//ma00_FireMoveAuto
function ma00_FireMoveAuto(){


	CreateProcess("fire_moveauto", 150, 0, 0, "ma00_FireMoveAutoProcess");
	SetAlias("fire_moveauto","fire_moveauto");
	Request("fire_moveauto", Start);

}

..//ma00_FireMoveAutoProcess
function ma00_FireMoveAutoProcess(){

	begin:

	while(1){
		Zoom("@fire_Move02", 2500, 1300, 1300, null, true);
		Zoom("@fire_Move02", 2500, 1800, 1800, null, true);
		Zoom("@fire_Move02", 2500, 1300, 1300, null, true);
		Zoom("@fire_Move02", 2500, 1300, 1600, null, true);
		Zoom("@fire_Move02", 2500, 1800, 1000, null, true);
		Zoom("@fire_Move02", 2500, 1300, 1700, null, true);
	}

}

function ma00_FireMoveAutoDelete(){

	Delete("@fire_moveauto");

}



//◆２３４５６７８９０１２３４５６７８９０１２３４

