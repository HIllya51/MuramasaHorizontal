//<continuation number="1000">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_022.nss_MAIN
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
	#bg049_景明故郷住宅地b_02=true;
	#bg074_喫茶店の店内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_023.nss";

}

scene mb04_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_021.nss"

//◆燃える町。bg047？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateSE("SEL01","se背景_ガヤ_燃える町並み_L");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,1000,0,800,null,true);
	FadeDelete("絵暗転", 2000, true);

//◆テキスト横書き
	SetNwH("cg/fw/nyＧＨＱ将校.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220010e002">
「真是一群狡猾的家伙。
　没想到他们竟然放火烧毁自己的城镇。」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220020e004">
「要撤军吗，队长？」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220030e002">
「不行。
　司令部的方针是在敌方部队集结之前将其
各个击破。」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220040e002">
「决不能放过六波罗那些家伙。
　找到火势较小的地方进行突击，
捕获并消灭敌人。」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220050e004">
「这期间恐怕无法避免与避难市民的接触……
　这种情况要如何处理？」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220060e002">
「开火威吓他们把道路让出来。
　如果这样都无法解决的话——那就强行突破。」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220070e004">
「……这样好吗？
　事后可能会受到责难……」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220080e002">
「责难？　啊，责难。
　对着民众开炮，当然会受到责难了！」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220090e002">
「但这是一个选择题。
　我们是在为祖国的荣光而战，还是在为祖国
的安定而战？」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220100e002">
「是哪一个呢？」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220110e004">
「……表面上看起来，应该是后者吧。」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220120e002">
「表面上。这不是明摆着的吗。
　没错，但不凑巧的是，使军队做出行动的并
不是表面上的那些东西，而是<RUBY text="··">现实</RUBY>。」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220130e002">
「我们应该做出符合现实的行动。」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220140e004">
「我常常会想，自己是不是选错了职业。
　我本应做个好莱坞明星，活在众人的梦中。」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220150e002">
「完全没错。那为什么没那样做呢？
　你还真是愚蠢啊，那么开始工作吧。」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220160e002">
「让我们英勇地将枪口对准那些手无寸铁的市
民们吧。
　相信唯有这样做，才能尽快结束战争，给这
个国家带来和平。」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220170e004">
「明白。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("SE*", 2500, 0, null);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//◆ぱーん、ぱーん。単発銃声数度
//◆それに合わせて悲鳴と喧騒。キャー。
//◆ウェイト置いて
//◆ばらららら。機関銃斉射
//◆人々の絶叫。ギャアアアア。
	CreateSE("SE01","se背景_ガヤ_戦場の風景05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	SetVolume("SE*", 100, 0, null);

//◆フェードイン
//◆bg049炎上
//◆絶叫、悲鳴、喧騒のＳＥ。やや遠く
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateSE("SE01","se背景_ガヤ_悲鳴01");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm32",0,1000,true);

//◆兵士の文句はイギリス国歌「女王陛下万歳」
//◆歌えるなら歌って欲しいところだが、多分無茶だと
//◆思うので淡々と沈鬱に読む感じでＯＫ。

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボイスは「God save our gracious Queen,」
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220180e005">
「……“神佑我慈悲女王”……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}

//◆Long live our noble Queen,
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220190e005">
「……“愿吾高贵的女王常在”……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}


//◆God save the Queen!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220200e005">
「……“神佑女王”……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}


//◆Send her victorious,Happy and glorious,
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220210e005">
「……“愿女王陛下享有无尽的胜利、
幸福与荣光”……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}


//◆Long to reign over us,
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220220e005">
「……“愿盛世永存”……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}


//◆God save the Queen!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220230e005">
「……“神佑女王”……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}

//◆焼けてゆく町、死に絶える人々

//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220240e005">
「……」


//◆がたっ。
{	CreateSE("SE01","se日常_物_椅子鳴る02");
	MusicStart("SE01",0,1000,0,1000,null,false);}

//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220250e005">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆そっち向いて銃を構える。かちゃっ。
	CreateSE("SE01b","se戦闘_銃器_構える01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆Who's there!?
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220260e005">
「谁!?」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220270e138">
「……」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220280e005">
（小孩啊……）


//◆Go,away
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220290e005">
「到旁边去。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220300e138">
「……」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//◆Hurry up!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220310e005">
「快点！」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220320e138">
「……」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220330e005">
（可恶，语言不通吗？
　用大和话来说的话……应该是……）


//◆片言で
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220340e005">
「你，到旁边去。
　快点，离开这里。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220350e138">
「……」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220360e005">
「……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}
//◆Go!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220370e005">
「快走！」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220380e138">
「杀人犯！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆子供、石を投げる
//◆がつっと食らう
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	FadeDelete("絵フラッシュ白", 100, false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220390e005">
「唔……」


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220400e005">
（这孩子竟敢拿石头扔我……）


{//◆発砲ぱんぱん
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}
//◆Fuck a duck!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220410e005">
「你别做傻事了！」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220420e138">
「把爸爸还给我！
　把妈妈还给我！」


//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220430e138">
「还给我！」



{//◆石連続
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	FadeDelete("絵フラッシュ白", 100, false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);
//◆Stop!
	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220440e005">
「住手！」


{//◆発砲
//◆石
	OnSE("se戦闘_銃器_拳銃発砲01",1000);
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	FadeDelete("絵フラッシュ白", 100, false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);
//◆Stop,Boy!
	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220450e005">
「住手，你这个死小孩——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆がつっと食らう
//◆はずみで発砲
//◆当たっちゃいました。
//◆子供が倒れる
//◆血が。
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se戦闘_銃器_拳銃発砲01",1000);
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#CC0000");
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	FadeDelete("絵フラッシュ白", 100, false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, true);

	CreateSE("SE01b","se人体_血_たれる01");
	CreateSE("SE01c","se人体_衝撃_転倒04");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01b");
	WaitKey($残時間);

	MusicStart("SE01c",0,1000,0,1000,null,false);
	FadeDelete("絵演震", 1000, false);

	Wait(1500);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220460e005">
「……」


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220470e005">
（哎？）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220480e005">
（不会吧……）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220490e005">
（我、我没打算瞄准他的……）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220500e005">
（我只是想吓吓他而已）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220510e005">
（……却失手……）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220520e005">
（……怎么会……）

</PRE>
	SetTextEXC();
	TypeBeginCI();//――――――――――――――――――――――――

//◆広がる血
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPmul("絵演効果", 4000, Center, Middle, "cg/anime/Left/blood_C_6.png");
	Wait(10);
	FadeDelete("絵演効果", 600, false);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220530e005">
「——」


//◆「O」は「oh」と同じ
//◆O Lord our God arise,
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220540e005">
「……主……主啊……
　吾等祈求神明降世……」


//◆Scatter her enemies,And make them fall
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220550e005">
「……“为女王陛下奸灭敌人”……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	Wait(500);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220560a00">
「一切为了女王。
　一切为了国家吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明
	WaitAction("絵演効果", null);
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(500,true);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220570e005">
「……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220580a00">
「这就是你的正义吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220590a00">
「……我并不打算否定你。
　你为自己的正义而战，的确挽救了一部分人
的性命。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220600a00">
「但——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色血", 5000, "#CC0000");
	Fade("絵色血", 300, 1000, null, true);
	CreateTextureSP("絵演血", 4000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	WaitKey(200);
	FadeDelete("絵色血", 600, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220610a00">
「在其背后同样也有<RUBY text="······">未能救赎的人</RUBY>，
这一点也是不争的事实……」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220620e005">
「……!!」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220630a00">
「你杀死了那个孩子。
　这一事实是永恒存在的。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆戻る
	FadeDelete("絵演血", 600, false);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220640e005">
「……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220650a00">
「……ＹＯＵ　ＡＲＥ　ＧＵＩＬＴＹ。」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220660e005">
「噢啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆走り去る兵士
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	ClearWaitAll(2000, 1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm33",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220670a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220680a01">
《主君……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220690a00">
「这一带已经荒无人烟了吧。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220700a01">
《嗯。
　那个士兵的同伴都朝城镇中心行进了……》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220710a01">
《市民们……都逃走了吗？
　……如果没有的话……》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220720a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220730a01">
《大概多少有些人能够获救吧。
　因为我们制止了一部分的士兵……》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220740a00">
「只是<RUBY text="···">有些人</RUBY>而已。
　但是。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220750a00">
「……我没能救这些人。
　没来得及。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220760a01">
《……是啊……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　低头看向脚边。
　再也不会动弹的男孩。

　以及不远处，躺在地上的一对男女。
　
　这些人，我都曾经见过。在去小弓途中曾停留过的咖
啡店的那一家人，如今被卷入了战乱之中。

　不知他们是这个城镇的原住民，还是避难到此地。
　但无论如何，他们最终在此地，<RUBY text="·····">终结了生命</RUBY>。

　真是不走运。
　
　……这句话不可能囊括所有的感情。

　同时浮上心头的还有自责的心情。
　以及。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220770a00">
「……你，为何而战？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220780a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　剑胄没有回答。
　这并不是对她的提问。

　但提问的对象也没有任何回应。
　他已无法做出回答了。

　男孩一动不动地，趴在地上。
　因为他已经从活生生的人类，沦为了一具尸体。当然
不会作答。

　没有人回答我的提问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220790a00">
「为什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　重复着无人应答的问题。
　
　为什么——没有逃走？

　为什么向他扔石块？
　为什么，<RUBY text="·····">要挑起争执</RUBY>？

　是出于双亲被杀的愤怒吗？
　
　这样便说得通了。

　但是，若是这样的话就更应该逃走了。
　既然知道现在无法战胜他，那就先逃离这里，之后再
寻觅复仇的机会。这样才合乎常理。

　但是为什么……
　那么鲁莽地向他挑衅呢？

　仅靠复仇之心是无法解释的。

　那么……
　是什么————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆喫茶店、一条と子供
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);


	StR(7000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(0,true);
	SetTone("@StR*", Sepia);
	CreateTextureSP("絵回想背景", 6000, Center, Middle, "cg/bg/bg074_喫茶店の店内_01.jpg");
	SetTone("絵回想背景", Sepia);
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 200, null, true);

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

	SetNwC("cg/fw/nw子供.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220800e138">
「你不害怕吗？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0220810a02">
「是啊。
　是有点害怕。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220820e138">
「那你还是要战斗吗？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0220830a02">
「嗯。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220840e138">
「为什么？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0220850a02">
「因为我有勇气。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	DeleteStA(0,true);
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220860a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　你理解了她吗？
　理解了那个一心追求正义的灵魂。

　所以才这样做吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220870a00">
「太耀眼了……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220880a01">
《……》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220890a00">
「一条。
　你的正义，太过耀眼了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　因为那是灵魂的光辉。
　不含丝毫虚假。

　不具备足以与你抗衡的强大意志的人，
　都会被那份光辉————<RUBY text="··">诱导</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220900a00">
「村正……知道正宗的所在吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220910a01">
《大致是知道的。
　……要去找他吗？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220920a00">
「是啊。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220930a01">
《但您的身体已经……》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220940a00">
「我知道。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我抬起一只手，打断了剑胄的话。
　……仅是这样简单的一个动作，就令胸前的伤口渗出
了血。

　这具肉体的损伤已经太过严重。
　承受了正宗那个不合常理的阴义——阴义返
——的直击，加上在之前的战场上所受的伤，身体的状
况已远远超过了我所能承受的极限。

　但我仍站立着。
　即使已经超越了极限，也仍旧站立着。

　这并不是什么奇迹。
　可以理解为只是欠债人拼命地躲避讨债人，一心想要
延长还债期限的行为。

　末路早已注定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220950a00">
「现在倒下的话，我就无法再醒来了。
　<RUBY text="·····">无法再醒来</RUBY>。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220960a01">
《……》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220970a00">
「在那之前我还有要去完成的事情。
　还有一件事。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220980a01">
《主君——》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220990a00">
「我，」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0221000a00">
「要打倒绫弥一条。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_023.nss"