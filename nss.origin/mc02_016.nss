

//<continuation number="780">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_016.nss_MAIN
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
	$PreGameName = $GameName;

	$GameName = "mc02_017.nss";

}

scene mc02_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_015.nss"

//◆ウィローの部屋？
//◆横書きテキスト
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg029_ガーゲット少佐執務室_01.jpg");

	StL(1000,@0,@0,"cg/st/stウィロー_通常_制服.png");
	StR(1000,@0,@0,"cg/st/stウォルフ_通常_私服.png");
	FadeStL(0,true);

	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

	SoundPlay("@mbgm36",0,1000,true);
	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160010b00">
「……“<RUBY text="ｇｏｌｄｅｎ　ｄａｗｎ">黄金的黎明</RUBY>”……
　这就是作战名称吗？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160020b03">
「是的。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160030b00">
「嗯……」


{	FadeStR(300,false);
	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160040a13">
「不满意吗？　维罗少将。
　我自认为想了个不错的名称……」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160050b00">
「不。没那回事，教授。
　将不好的过去斩断，迎向光明的未来，
这名称与我们的重要作战相符。」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160060a13">
「对吧。就算如此。
　黄金的黎明。每当说出这个作战名称，
眼前就会浮现出未来的情景，不是吗？」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160070b00">
「嗯，是啊。」


{	FwH("cg/fw/fwウォルフ_歓喜.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160080a13">
「——就像少女没穿内裤的下半身一样!!」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160090b00">
「嗯，是啊。
　然后呢……克莱布？」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160100b03">
「１１月３０日，在六波罗幕府的根据地
普陀乐城迎接特使，举行宣布足利护氏的
嫡孙邦氏成为将领的仪式。
　朝廷方面的工作似乎终于有成果了。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160110b03">
「幕阁的重要官员几乎全部
参加仪式。
　四公方、评定众、政所执事、侍所所司……
至少这些人肯定都会参加。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160120b00">
「可以摧毁高层是吗。
　不过，这只是我们目的的一半。宣传效果不够。
剩下的一半你是怎么想的，克莱布？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160130b03">
「我会交出让你满意的成果的，阁下。
　配合仪式，幕军主力也会逐渐集中到普陀乐。」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160140b03">
「主要目的是仪式的警备，还有……
　对大和国民以及我等的威吓。同时提升全军
士气。」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160150b03">
「也就是说，六波罗想利用宣誓仪式取回
因护氏骤逝而失去的一切。
　以他们来说，这还真是个好计策呢。」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160160b00">
「是啊。<RUBY text="·······">若平安落幕的话</RUBY>，六波罗的计划
基本上就成功了吧。
　不过，很抱歉，他们费尽心思的准备
将会成全我们的仪式。」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160170b00">
「幕府的首脑和主力军都会集中在普陀乐。
　我们要<RUBY text="··">一击</RUBY><RUBY text="··">横扫</RUBY>他们，确立这个国家的
支配权。未来已如此注定，
我可以这么认为吧？　克莱布·卡农。」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160180b03">
「机会毫无疑问已经降临。
　接下来就要靠我们的努力了。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160190b00">
「很好。不断努力是我们
从西部开拓时代以来……
不，是我们一直以来的强项啊。
　我们必定能成功。」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160200a13">
「当然。这就是所谓的天命啊，少将。
　倘若我们失败，世界不久便会落到大英联邦的
手中吧……但那是不可能的。」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160210a13">
「因为让全世界人民服从的权利，
只可回归到唯一的神手中。
就算英国女王陛下拥有可追溯至
海贼首领的高贵血统，也无法侵犯该权力。」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160220b00">
「您说的没错。
　大英帝国已经够肥了。他们太过肥硕。
该是将他们送到屠宰场
<RUBY text="··">解体</RUBY>的好时机了。」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160230a13">
「嗯，嗯，完全正确。」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160240b03">
「……」


{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160250a13">
「……嗯？　怎么了，卡农中佐。
　我的脸上是不是沾着内裤。」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160260b03">
「嗯，有毛线内裤。」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160270a13">
「这是胡须。」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160280b03">
「虽然失礼，但我真的有些意外。
　教授居然与我们的理想产生
共鸣呢。」


{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160290a13">
「嗯……意外吗？
　的确，我们德意志人所遭受的英帝屈辱统治
的时间，远远不及你们美利坚新大陆人那么久。
我们受他们统治不过数年而已。」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160300a13">
「但我们也因此对他们有着
强烈的愤怒……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160310b03">
「……」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160320b00">
「克莱布。」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160330b03">
「嗯，我明白。
　教授，请您原谅我质疑性的发言。」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160340a13">
「不不。
　你的谨慎是优点哦。」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160350a13">
「不过，我早已表明诚意，不是吗？　
我通过奥德赛机关，和我们被英国军俘虏、
并受到残酷驱使的同胞——足以向世界
夸耀的德意志技术人员取得联络。」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160360a13">
「将种种最新兵器，尤其是设备运到
大和。
　只是，关于试验地点的报告，与事实
有些许出入而已……」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160370a13">
「这样的帮助还不够吗？」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160380b00">
「绝无此事。
　沃尔夫教授，您对我来说是最重要的
恩人之一。」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160390a13">
「你这么说我就能放心了，朋友。
　那么你们实现誓愿之后，我可以期待你们
支援我的祖国吧？」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160400b00">
「赌上我们的恩情与友谊，这是肯定的。
　为了稳固我们故乡的未来，与教授祖国
的合作是不可或缺的。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160410b00">
「对吧，卡农中佐？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160420b03">
「一切正如您所说，阁下。」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160430a13">
「嗯，嗯。
　１１月２９日是大英联邦的终焉之始，
也是我们两国友好的开始。」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160440b03">
「……是啊。」


{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160450b00">
「２９日？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160460b03">
「“黄金的黎明”作战计划预定在宣誓仪式的
前一天实行。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160470b00">
「避开当天的原因是？」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160480b03">
「这是考虑到大和国民们
微妙的心理而采取的决定。
　……教授？」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160490a13">
「嗯，就让提案的我来说明吧。
　大和人民一定相当厌恶六波罗吧。」


{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160500a13">
「如果举行盛大仪式的话，
镰仓市内就会因为庆典而热闹，
气氛会逐渐弥漫各地。
　他们也就会随之有<RUBY text="····">想要庆贺</RUBY>的气氛了。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160510b00">
「嗯……？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160520a13">
「这时我们如果向他们泼水——而且
还是从北极海直接送来的冰水。
这样你明白了吗，少将？
　大和国民也许会就此对我们怀恨在心。」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160530a13">
「想藉由打垮穷凶恶极来争取国民支持的企图
会被击溃，别说作战全都泡汤，
恐怕还会造成反效果。」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160540b03">
「接受教授的意见，提前一天进行作战计划。
　虽然有些勉强，不过，
还在容许范围内。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160550b00">
「……原来如此。
　不，教授的计划真是太优秀了。」


{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160560b00">
「中佐，目标到时已经集中在
普陀乐城了吧？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160570b03">
「这个嘛。基本到齐了。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160580b00">
「这样就没问题了。
　我们就照预定执行计划吧。」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160590b03">
「了解，阁下。」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160600a13">
「那么，我也该告辞了。
　内裤禁断症状快要发作了。」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160610a13">
「回头见。」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160620b00">
「是。
　辛苦您了，教授。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆教授、退出

	Move("@StR*", 300, @20, @0, Dxl2, false);
	DeleteStR(300, true);
	OnSE("se日常_建物_扉閉める01", 1000);
	WaitKey(500);

	StR(1000, @0, @0,"cg/st/stキャノン_通常_制服.png");
	FadeStR(200,true);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160630b03">
「…………」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160640b00">
「你在怀疑他吗，克莱布？」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160650b03">
「他完全不能信任啊。」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//嶋：修正【090930】
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160660b00">
「嗯……
　我倒觉得未必……」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160670b03">
「你只是因为境遇相同就过分
同情他。
　请别忘了，就算是故乡的同胞，
也有数个将伙伴出卖给大英联邦的背叛者。」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160680b03">
「不……<RUBY text="····">甚至我们</RUBY>。
　将棘手的同胞和因无法理解大局
而擦枪走火的过激分子出卖
给新大陆总督，以此获得了信任哦？」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160690b00">
「……意思是，教授也会做出同样的事情？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160700b03">
「不，这点我已经彻底过滤过了。
　我没发现他和大英联邦有所接触。」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160710b03">
「只是，无法理解的地方很多。
　如果可以的话，我想趁作战计划实行之前
彻底弄明白……」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160720b00">
「……唉，算了。
　至少他不是大英联邦的间谍，这一点
能让我们获得最低程度的安心感。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160730b00">
「此刻就满足于此吧。
　我们也无法奢求每时每刻都能万全，
但若是因此放跑机会，就太愚蠢了。」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160740b03">
「……是啊。」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160750b00">
「话说回来，克莱布。」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160760b03">
「怎么了？」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160770b00">
「内裤禁断症状是指……？」


{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160780b03">
「如果您要下令让我调查这一点的话，
恕我拒绝这个命令，阁下。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"mc02_017.nss"