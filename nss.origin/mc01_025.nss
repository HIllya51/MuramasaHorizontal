//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_025.nss_MAIN
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
	#bg077_建朝寺得月楼前_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_026.nss";

}

scene mc01_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_024vs.nss"

//◆得月楼
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	DrawDelete("上背景", 300, 100, "slide_03_01_1", true);
	Delete("上背景");

//◆バロウズ登場
	CreateSE("SE01","se特殊_鎧_駆動音02");
	StL(1000, @-60, @0,"cg/st/3dバロウズ_立ち_通常.png");

	MusicStart("SE01",0,1000,0,850,null,false);
	Move("@StL*", 300, @60, @0, Dxl1, false);
	FadeStL(300,true);

	SoundPlay("@mbgm21",1000,1000,true);

	SetFwC("cg/fw/fw署長_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆ボイス「ウェイトアミニット」Wait a minute
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250010a11">
「慢着！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆署長
	StR(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw署長_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボイス「ユアネームアンド……」Your name and...
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250020a11">
「报上您的姓名和——」


{	FwC("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250030a03">
「说大和语就行，署长先生。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250040a11">
「…………」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250050a11">
「是你啊……大鸟大尉。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250060a03">
「嗯。
　今天也是个好日子。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250070a11">
「……听说科布登先生失败之时，
虽已做好了无法逃避任何制裁的觉悟。
　没想到偏偏派遣你过来。」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250080a11">
「不……这也是理所当然的吧。
　我若是ＧＨＱ的参谋，也会这么做。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250090a03">
「是的。
　我如果是ＧＨＱ的同伴，就会成为确认忠诚心
的试金石。如果是敌人，就能使敌方互相攻击彼
此厮杀。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250100a03">
「而且我是大和人。
　即使我袭击亲王，旁人看来也不会觉得与进
驻军有关连，即便为人所知也并无大碍……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250110a03">
「实际对决后流血牺牲的，终究都是大和人。
　ＧＨＱ在对宫殿下加以报复的同时，却不会
刺激大和民众的感情。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250120a03">
「我的上司做事还真是合理。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ジーツー
	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250130a11">
「……Ｇ２参谋第二部。
　克莱布·卡农中佐？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250140a03">
「哎呀，正是。」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250150a11">
「那个人与我针锋相对，是个有些……棘手的
对手。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250160a03">
「是吗？
　但只要你们没有因急于求成而选择自我毁灭的
道路，至少还算不分胜负吧。」



{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250170a11">
「……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250180a03">
「难道不是计策玩弄过头了吗？
　足利护氏的猝死的确伴随着将进驻军的大和
政策从巧而迟转向拙而快的危险性——」



{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250190a03">
「但若是以为会像翻掌般瞬间发生改变的话，
你们就警戒过头了。
　像ＧＨＱ那种大规模的组织，并不能够如此
迅敏地采取行动。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250200a03">
「即使会改变方针，也是经过反反复复的会议
和密谈，以及调整内部意见之后……
　你们可是有十二分的余地商讨对策哦？」



{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250210a11">
「…………原来如此。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250220a11">
「是吗。是这样啊。
　也就是说，我们……中了疑心生暗鬼的陷阱
了吗。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250230a03">
「……疑心？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250240a11">
「这话是对你说的。
　大鸟大尉。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250250a03">
「……」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250260a11">
「足利护氏并不是我们杀害的。」

{	SoundPlay("@mbgm35", 0, 1000, true);
	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250270a11">
「景明拒绝了，<RUBY text="··">你也</RUBY>拒绝了……我们
只好放弃计划。
　因为没有暗杀执行者。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250280a11">
「但，大将领还是死了。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250290a03">
「…………」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250300a11">
「我们判断————是ＧＨＱ干的。」



//◆腑に落ちた、というニュアンスで
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250310a03">
「……嗯……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250320a11">
「没错。我们认为大鸟大尉你……从我们那里
听闻暗杀大将领的计划，并向ＧＨＱ报告。而
且，ＧＨＱ必定会利用这一情况制定行动方针。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250330a11">
「不仅亲自动手解决了护氏，还将<RUBY text="我等">舞殿宫</RUBY>
的计划密告幕府……
　计划是真实存在的，还有大尉这个证人。所
以很容易让幕府信以为真。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250340a11">
「利用幕府之手摧毁并斥责宫殿下之后，进驻军
再以谴责幕府的行为为由消灭幕府。
　大和的国民就会认同进驻军是正义的执行者，
并接受进驻军的支配……」


//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250350a11">
「ＧＨＱ是这么计划的吧……我们原本是这么
考虑的。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250360a03">
「……所以。
　总之必须阻止进驻军启动计划，采取收买
科布登中佐，爆破横须贺军港这种蛮横的手
段……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250370a11">
「对。
　刻不容缓——宫殿下和我都如此确信。」



{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250380a11">
「……一切都是白费力气。
　大尉，按照你方才所说……杀害护氏的
并不是你们ＧＨＱ。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250390a03">
「没错。
　那个事件对司令部来说也是晴天霹雳。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250400a03">
「二位向我提出暗杀话题之事，我从未泄露给
任何人。
　若说利用，就卡农中佐而言，想必也是不可
能。」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250410a11">
「…………」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250420a03">
「拒绝的时候，我已经说过吧。
　虽然<RUBY text="·········">赞同计划的主要内容</RUBY>，但因为私人情况有些
繁忙，这次无法协助贵方——」



{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250430a03">
「按表面上的意思理解那些话就可以了。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250440a11">
「……是啊。
　没能理解是我的器量不足。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250450a03">
「不可怀疑美女所说的话。
　这是世间铁则吧。」


{	FwC("cg/fw/fw署長_笑顔.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250460a11">
「如果有来生，我会小心的。
　…………可是。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250470a11">
「那……是谁。
　在奉刀参拜那天，是谁袭击了八幡宫？」


//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250480a11">
「是谁耍了我们？
　不……原本就有<RUBY text="·····">耍人的意图</RUBY>吧？」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250490a03">
「………………」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250500a11">
「……事到如今，多说无益。
　无论理由如何，败因在于我用错了策略。」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250510a11">
「从结果来看，犯下了与进驻军敌对的愚蠢行径，
毫无意义。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250520a03">
「没错。
　当然，他们的作风就是右脸被打了，必定要
回打左脸<RUBY text="····">以示报复</RUBY>。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250530a03">
「因为他们就是这样掌握了世界支配权的人
种。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250540a11">
「我明白。
　我无意逃走，也无意摇尾乞怜。」



{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250550a03">
「……菊池署长。
　我被命令给予<RUBY text="··">主谋</RUBY>制裁。」



{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250560a03">
「你是——」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250570a11">
「我是主谋。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250580a03">
「……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250590a11">
「对于进驻军而言这样也比较好办吧。
　加害大和皇族风险相当大。」


//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250600a11">
「还是将事件处理成有人唆使宫殿下……
为好。
　也就是所谓的君侧奸臣。」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250610a11">
「……这种说法也未必是错误的。
　因为我的确随侍在宫殿下身边，却未能完成
正确辅佐宫殿下的重任。」



{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250620a03">
「……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250630a03">
「无法得到你们的信赖，我缺乏德望也是原因
之一。
　就这一点来说，我必须道歉……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250640a03">
「那就如您所愿。
　菊池署长。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250650a11">
「由衷地感谢您。
　大鸟大尉。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc01_026.nss"