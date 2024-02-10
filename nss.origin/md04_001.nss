//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_001.nss_MAIN
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
	#bg028_横浜ＧＨＱ基地_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_002.nss";

}

scene md04_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md03_029vs.nss"

//◆※戦争シーンでどれだけ絵素材を用意するかは一考。
//◆最悪、通常の背景にボカーンボカーンとＳＥだけ鳴
//◆らして「戦争やってます」と言い張るのも手。

//◆夜
//◆横浜基地
//◆横書きボックス

//■このファイル立ち絵表示させるべきでしょうか、密談っぽい印象がある＆３体キャラ表示は少々苦しそうです inc櫻井
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg028_横浜ＧＨＱ基地_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	StL(1100, @100, @0, "cg/st/stウィロー_通常_制服.png");
	StCL(1000, @-100, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStR(300, false);
	FadeStL(300, false);
	FadeStCL(300, true);

	SetFwH("cg/fw/fwウィロー_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010010b00">
「……这是怎么回事？
　卡农中佐！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010020b03">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010030b00">
「锻造雷弹本体运到<RUBY text="这个国家">大和</RUBY>了吧？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010040b03">
「是的，维罗少将。
　确实运到了。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010050b00">
「那么为什么不交给我们？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010060b03">
「因为被拒绝了……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010070b00">
「被谁！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010080b03">
「被运输舰的舰长。
　说在收到许可之前不予引渡。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010090b00">
「如今都运过来了，竟然还要引渡许可？
　开什么玩笑！」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010100b03">
「是啊……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010110a13">
「应该不是以路途遥远为借口要我们给<RUBY text="Ｔｉｐ">辛苦费</RUBY>
吧？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010120b03">
「这样的话倒还好啊，教授。
　对方根本不想理睬我们。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010130b03">
「只是一口咬定要等联盟本部的许可。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010140b00">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010150a13">
「锻造雷弹的使用早已定下。
　事到如今还说什么许可！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010160a13">
「只能认为运输过程中杀出程咬金了。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010170b03">
「……有可能。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010180b00">
「是联盟本部的人权派发言力突然增强了
吗……
　还是那些希望轰炸俄罗斯的家伙在施压
呢？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010190a13">
「或者是……<RUBY text="···">露馅了</RUBY>吗？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010200b00">
「……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010210b03">
「我们的真正意图！」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010220b03">
「我们——大和进驻军将要完成大和的征服支配，
却<RUBY text="···">不打算</RUBY>将此成果献给<RUBY text="不列颠女王">伟大的女王陛下</RUBY>……
　联盟本部知道了吗？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010230a13">
「我实在不愿想这种可能性。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010240b00">
「……真的不愿想象啊。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010250b03">
「现在只是臆测，阁下。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010260b00">
「我明白……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010270b03">
「想想对策吧。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010280b00">
「现在只能等待。
　日内瓦的同志应该会联络我们的。
先确认发生了什么事再——」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010290a13">
「那不就晚了吗？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010300b00">
「……沃尔夫教授？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010310a13">
「我们已经好几次对本部说明投下锻造雷弹的
意义，终于让他们同意了。本应如此。
　在这即将到来的绝好机会投下的话，一朝便可
攻陷一国……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010320a13">
「然而事已至此还要我们干等着，无论怎么想
这都很不寻常。
　我不得不认为联盟本部发生了相当严重的异
常事件。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010330a13">
「这并不是暂缓使用锻造雷弹的问题……
　或许联盟本部根本就打算重新考虑
对大和政策。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010340a13">
「允许六波罗幕府的存在，或许是成立别的
新政府，朝着认同大和主权的方向……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010350b00">
「……怎么可能！
　都不跟我们商量——」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010360a13">
「你会向明知会反对你的人咨询意见吗，维罗
少将？
　不不，或许你就会这么做。你大概对本部的
那群家伙的正直之心还存有期待吧？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010370b00">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010380a13">
「光是守株待兔的话……
　等到的就不是情报，而是联盟本部单方面的
通知了。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010390a13">
「禁止使用一切武力的通知。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010400b00">
「……卡农？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010410b03">
「……未必一定是这样。
　但是有这个可能性。」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010420a13">
「当这个可能性成为现实，我们就束手无策了。
　或许必须等到十年后、二十年后、或许是半
个世纪后才能等来下一次机会。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010430b00">
「……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010440b03">
「沃尔夫教授。
　请不要煽动起少将阁下的不安。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010450a13">
「失礼了。
　但这是忠告。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010460a13">
「卡农中佐，你说的对，一切——我们精心准备
的一切计划都化为泡影的危险确实存在。
　而且可能性绝对不低。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010470a13">
「不，不如说……很高。
　我从此时被阻止使用锻造雷弹这件事中，
感觉到了异常的危险。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010480b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010490a13">
「敢赌吗？　同志啊……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010500a13">
「我们正在与命运抗争。
　但是如今却不再<RUBY text="··">战斗</RUBY>，而准备去<RUBY text="··">赌博</RUBY>了吗？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010510a13">
「如今若我们什么都不做只是等待现状变
化的话，就是在赌博。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010520b03">
「……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010530b03">
「教授。就是说……要怎么办？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010540a13">
「开始战争吧。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010550a13">
「攻击六波罗吧。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010560b00">
「……教授，我们没有擅自开战的权利。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010570a13">
「那就按照紧急制度来办。
　由于受到了六波罗军的攻击所以开始应战——
让事实<RUBY text="····">变成这样</RUBY>就行了。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010580b03">
「伪装工作吗？
　这也需要时间。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010590a13">
「用不着做麻烦的准备。
　要伪装给谁看啊？」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010600a13">
「联盟本部派来的调查团吗？
　你们在占领大和之后还想让
这种东西进来吗？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010610a13">
「不是应该立刻发起下次行动才对吗？
　和新大陆的同胞们一起。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010620b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010630a13">
「只要我们在以闪电作战歼灭六波罗之前
能瞒过他们就行了。
　敷衍一下便足够。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010640b00">
「但是，锻造雷弹现在——」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010650a13">
「普通战力还有吧？
　就算没有雷弹，ＧＨＱ所有的兵力也优于
六波罗。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010660b00">
「是这样吗……卡农？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010670b03">
「……确实，我们还为锻造雷弹投掷失败
的情况准备了补充计划。
　并且准备在明天进行最终训练。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010680a13">
「那就正好。
　别训练了，直接<RUBY text="··">上场</RUBY>吧！」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010690b03">
「这也太勉强了。
　就结果来说我们的损失更大——」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010700b03">
「不，甚至有可能<RUBY text="····">无法胜利</RUBY>。
　虽然不代表我们就会输。不过企图将敌军主
力提前歼灭恐怕无法实现。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010710a13">
「你是说，会陷入苦战？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010720b03">
「没错。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010730b00">
「是啊……」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010740a13">
「这不刚好嘛。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010750b03">
「……您这是什么意思？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010760a13">
「战况陷入不利局面的话，以此作为借口申请
锻造雷弹的使用许可就可以了。
  与其让联盟本部派遣大量增援部队，你更希
望用利落的手段解决吧。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010770b03">
「……教授。
　这不会有点，过于鲁莽了吗？」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010780b00">
「不……不！
　也不用如此断言嘛，卡农中佐。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010790b03">
「阁下？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウィロー_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010800b00">
「就算我们独断开战……
　只要战斗一打响，就会成为联盟——
国际联合和共荣联盟的战争。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010810b00">
「这会成为一场背负着世界守护者的女王陛下
之名的圣战。
　绝不允许失败！」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010820b00">
「形势不利之下不可能讲和。
　就算他们对我们的做法有所怀疑。
<RUBY text="·······">总之先获胜再说</RUBY>，联盟的高官
也会这样想的。」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010830a13">
「就是这样，维罗少将。
　而且不止是体面的问题。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010840a13">
「从对俄罗斯政策的方面看来，联盟是绝对
不会接受败北并被赶出大和这一结果的。
　难道不对吗？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010850b00">
「是的，教授。没错。
　是啊……但凡开始战争，联盟
就只能获胜。」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010860b00">
「必要时还能用锻造雷弹！
　我们不会输给六波罗！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010870b03">
「…………」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010880b00">
「战后难免追究我们的独断。
　但是，这也如同教授所说的那样——没必要
担心这个。」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010890b00">
「我们在女王陛下面前扮演忠实骑士的游戏
也就只到征服大和的那一瞬间为止了！」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010900a13">
「嗯嗯。
　不是没什么问题吗？」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010910b00">
「是的。
　怎么样，卡农？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010920b03">
「…………
　进驻军的指挥权呢？　最高司令官不是
在场三人中的任何一人，而是正在休假中
的元帅大人。」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010930a13">
「在完事之前让他继续悠闲地休假吧。
　我们不准备接他的话，他想回关东也回不来。」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010940b00">
「应该能争取一周的时间吧。
　在此期间，我将实际代行最高司令官之职。」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010950b00">
「各军团长虽然军阶比我高，但是能顺利指挥。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010960b03">
「…………」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010970b00">
「最后是行动开始的时机了。
　虽说最终训练的准备已经做好了，
明天就执行是不是太勉强了……？」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010980b00">
「还是迟一日，做好充分准备比较好。」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010990a13">
「不——」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011000b03">
「要做就要快，阁下。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011010b00">
「卡农？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011020b03">
「原本计划是用锻造雷弹一击干掉为
宣旨典礼而聚集于普陀乐的六波罗
大部分战力。
　但……既然眼下用不了雷弹。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011030b03">
「不如趁战力分散之时一口气击溃敌方。
　分离小弓、古河、篠川、堀越四公方府以及
普陀乐城，逐个击破……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011040b00">
「是计划Ｃ３？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011050b03">
「是啊。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011060b00">
「补给物资呢？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011070b03">
「各部队已有足以保证初阵的物资。
　之后——只要能依照作战建立
横浜·横须贺的补给线就行了。」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011080b00">
「……好！」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011090b00">
「就照这个计划来。
　没问题吧，卡农？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011100b03">
「…………
　嗯，维罗少将。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011110b03">
「干吧！」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0011120a13">
「嗯。开始战斗吧！
　为了我们的胜利！」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011130b00">
「好，沃尔夫教授。
　为了我们的胜利！」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011140b03">
「…………」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011150b03">
（<RUBY text="··">我们</RUBY>，吗）

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011160b03">
（如果真是同一个意思就好了……）

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md04_002.nss"