//<continuation number="350">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_035.nss_MAIN
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
	#bg072_火災で倒壊した和風建築_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_036.nss";

}

scene mb02_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb02_034.nss"

//◆正宗サイド
//◆焼け落ちた出城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg072_火災で倒壊した和風建築_03.jpg");
	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,1000,0,800,null,true);
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350010a09">
「唔哈……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350020a09">
「哈。
　哈、哈、哈……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350030a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350040a09">
「我婆娑罗道……终临毁灭。
　耽溺于自身之欲，弃德忘法而辱理，堕落已久
的这副身心……终有丧命之日。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350050a09">
「我尚未踏破己坚守之道。
　却中途毙命……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350060a09">
「……何其懊恼……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350070a02">
「……理所当然。
　因为你错得彻底。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350080a09">
「是也。
　是也……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350090a09">
「罪孽受到制裁。
　恶性终有恶报。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350100a09">
「这世间正义尚存……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350110a02">
「…………」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350120a09">
「呵呵。」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350130a09">
「呵呵、呵呵、哈哈哈哈。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350140a02">
「……有什么可笑的。」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350150a09">
「啊哈——
　啊哈哈哈哈哈哈哈哈！」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350160a02">
「不许笑！
　有什么可笑的！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350170a09">
「嗯？　当然是我因为乐在其中啊。
　世间有正义………恶性必将招致恶果！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350180a09">
「还有比这更让人痛快的事吗……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350190a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350200a09">
「你为何不笑。
　这样的结局，不正是你所追求的吗。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350210a02">
「——这……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350220a09">
「你高举正义旗帜，
　与奸邪之人游佐童心战斗。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350230a09">
「取得了胜利。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350240a09">
「了结了我的性命。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350250a02">
「——」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350260a09">
「只管自豪。
　只管畅笑。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350270a09">
「只管蔑视这个败者，只管无情地嘲笑！」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350280a09">
「<RUBY text="······">你是秉承正义</RUBY>，
　<RUBY text="·········">带着这份正义杀了我的</RUBY>
<RUBY text="··">对吧</RUBY>!!」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350290a02">
「——」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350300a09">
「喀、喀、喀……
　哈哈哈哈哈哈哈哈!!」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350310a02">
「……闭嘴……」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350320a09">
「啊哈哈哈哈哈哈哈哈!!」


{	FwC("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350330a02">
「给我闭嘴!!」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350340a09">
「哈、哈——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ざしゅざしゅざしゅ。何度も突き刺す音
	CreateSE("SEL02","se戦闘_攻撃_刀_ヒット02");
	MusicStart("SEL02",0,1000,0,1000,null,true);


	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	CreateVOICE("童心","mb02/0350350a09");
	MusicStart("童心",0,1000,0,1000,null,false);

	$残時間=RemainTime("童心");
	WaitKey($残時間);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆この台詞、ボイスのみ。テキスト出さず
{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350350a09">
「呵呵、呵呵呵……
　哈哈哈……啊哈哈哈哈哈…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_036.nss"