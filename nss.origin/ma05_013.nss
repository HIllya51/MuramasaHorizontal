//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_013.nss_MAIN
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
	#bg033_湊斗家一室_01=true;
	#bg047_景明故郷町a_01=true;
	#bg001_空a_03=true;

	#ev128_病床の光_e01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_014.nss";

}

scene ma05_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_012.nss"

//◆町
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm18",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　………那之后已经过两周有余，风驰电掣一般。

　说服本家，
  勉强准许浪士集团迁入。

　同养母一起向镇内居民说明，
　多数人甚为欣喜。

　还未等有机会与回到山里的首领相见，
“山贼”来犯便戛然而止。

　镇子久违地恢复平静，
　本家认同了我对此事的贡献。

　如约，
　开始着手聘请名医。

　而后。
　带着大批医疗器械和医护人员，著名博士莅临大和的
穷乡僻壤——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の部屋
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetNwC("cg/fw/nwメンゲレ博士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130010e019">
「为什么不早点叫我来……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
　麦格列博士——正确来说是他身后的翻译——语气沉
重地叹息道。
　在他告知我们已尽其所能进行医治之后。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev128_病床の光_e01.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
　光的症状看起来明显有了改善。
　虽说脱落的头发仍旧如故，身体依然羸弱，但一直以
来始终挥之不去的死亡阴影和应称之为绝望的种种迹象
已不知消失到了何处。

　从她口中也听不到野兽般的呻吟声了。
　呼吸也极为平稳。

　……然而。
　只有眼睛，毫无变化。

　黑暗。
　空洞。
　空无一物的双眼。

　不带任何感情，玻璃般的双眸。
　只有它——依然如故。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 1000, true);

	SetNwC("cg/fw/nwメンゲレ博士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130020e019">
「这种疑似菌性矿毒病的可怕之处，其一就是
不间断的痛苦。用药物抑制是有限的。
　非同寻常的剧痛会侵蚀患者的精神——」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130030e019">
「治疗拖延的时间越长，侵蚀就越严重。
　记忆混乱、失忆、人格突变、
智力衰退、精神分裂……」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130040e019">
「最终将变成植物人。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130050a00">
「…………
　医生……」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130060a00">
「我妹妹……」

{	NwC("cg/fw/nwメンゲレ博士.png");}
//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130070e019">
「……」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130080e019">
「重症患者靠着这个国家的医疗水平活了一年，
令人惊异。
　大概是因为家人的悉心照料和患者本人身心强
韧。」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130090e019">
「因此，我不能断言。
　也有可能出现康复的奇迹。」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130100e019">
「……肉体方面当前无需担心。
　唯有因体力衰减而引发的并发症令人担忧，
但随着时间流逝，肉体逐渐恢复后便能克服这
种危险。」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130110e019">
「我能做到的，就是这些。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130120a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆夜
//◆縁側？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg053_湊斗家の庭_03.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm14",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　奇迹。

　从未因一句话而左思右想。
　今天是第一次。

　然后，便发觉到。
　奇迹。这个听起来很悦耳的单词，对于不需要的人来
说就像是夏季的冬装——保证有力量抵御终将到来的寒
冬，是一针强心剂。

　对于需要的人来说，则像是到了冬季才发现遗失了衣
柜的钥匙，因为无法取出而显得毫无意义的毛衣。
　得知实际上存在于无法触及的场所，令人哑然。

　绝不是表明了希望之所在。
　恰恰相反。

　奇迹所昭示的……
　是一段在奇迹未现之前，令人绝望的距离。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130130a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　<RUBY text="··">奇迹</RUBY>。
　不知道怎样做才能拥有奇迹。

　不知道自己该如何是好。
　之前不一样。之前有「请麦格列博士」这一明确的目
的。与本家约定后，做为将其实现的手段，以解决山贼
问题为目的。

　现在已没有目的。
　不，目的还是有的——只是不知道怎样才能到达目的
地。

　怎样做……
　才能唤醒光的心？

　……再说。
　真的能唤醒吗？

　
　　　　　——为什么，没能早一些——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130140a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　掠过心头的一句话，是忆起了博士的话吗。
　还是单纯的自责呢。

　……再早一些。
　如果再早一些将博士请来的话。

　事态就不会这么严重。

　就能赶在光——病入膏肓之前。

　……如果我……
　再加把劲的话！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @-60, @0,"cg/st/st統_通常_私服.png");
	Move("@StL*", 300, @60, @0, DxlAuto, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【統】
<voice name="統" class="統" src="voice/ma05/0130150b46">
「哟。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130160a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　突然被人拍了肩膀，我抬起头来。
　……抬起头后才察觉到。不知何时，我已埋下头，紧
盯着地面。
　是养母阻止了差点直接跪倒在地的我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【統】
<voice name="統" class="統" src="voice/ma05/0130170b46">
「怎么了。
　脸色真阴沉。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130180a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　佯装不知情的表情和声音。
　虽然一眼就看出她的伪装，却难以正视。

　没有直视着她开口的勇气，我再次垂下视线。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130190a00">
「……对不起。
　统大人。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130200b46">
「为何道歉？　儿子。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130210a00">
「自力甚微。
　若我的能力再争气些……就能早点
将博士请来。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130220a00">
「也能早些治疗光……
　不会贻误病情了。」

{	FwC("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130230b46">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130240a00">
「对不起。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　除此之外，无话可说。
　无谓地、一味地谢罪。

　本应死在路旁的生命，被凑斗家救回已二十余年。
　如此大恩大德，无以言表。

　对此，我所能做的回报微乎其微。
　甚至无法救活最重要的继承人。

　真是个废物。
　为什么我没有生为一个更有用的生物呢。若我没有当人
类的本事，生做家畜也无所谓。

　比起只会吃白饭的男人来，随处可见的牛马倒还有意义
数百倍……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【統】
<voice name="統" class="統" src="voice/ma05/0130250b46">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆グッシャア。凄まじく容赦ない一撃
	SetVolume("@mbgm*", 100, 1, null);
	CreateSE("SE01","se戦闘_攻撃_殴る05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	WaitKey(100);
	Delete("絵白転");
	CreatePlainEX("絵板写",1000);
	SetBlur("絵板写", true, 3, 500, 200, false);
	FadeFR4("絵板写",0,1000,300,0,0,40,DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【統】
<voice name="統" class="統" src="voice/ma05/0130260b46">
「傻儿子。」

{	FwC("cg/fw/fw景明過去_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130270a00">
「……我眼冒金星了。统大人。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130280b46">
「清醒一点。
　听我说，景明。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130290a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130300b46">
「刚才，光睡着了。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130310a00">
「……？」

{	SetVolume("@mbgm*", 5000, 1000, null);
	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130320b46">
「很……正常地呼吸着。
　睡得很香的样子。」

//【統】
<voice name="統" class="統" src="voice/ma05/0130330b46">
「已经有一年都没有见过了。
　她那样安详的睡脸。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130340a00">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130350b46">
「所以啊……
　景明。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130360a00">
「是……」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130370b46">
「别轻言放弃。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　养母的呵斥，有着不同于拳头的温柔。
　正因如此，才使我清醒过来。

　放弃。
　……是吗。我放弃了吗。

　对自己的无力感到绝望，就意味着
  已认为自己无能为力，已选择放弃。

　真蠢。
　怎能放弃。

　如果这是我的人生，或许可以随便我选择放弃或是自
暴自弃。
　但，这关系到光的人生。

　能随便放弃吗。
　光她……凭着令博士惊叹的生命力，熬过了一年的时
间！

　想到这里，甚至连垂头丧气都觉得浪费时间。
　如果有这种闲工夫——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【統】
<voice name="統" class="統" src="voice/ma05/0130380b46">
「不是要救光吗。
　我和你。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130390a00">
「是。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130400b46">
「你<RUBY text="··">救了</RUBY>光。
　多亏了你，光的身体才有所好转。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130410a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130420b46">
「我不会谢你。
　这是家人该做的事情。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130430a00">
「是……！」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130440b46">
「坚持到最后。
　听好，你没有退怯，也没有一蹶不振。」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130450b46">
「你一直在向前走。
　要相信她。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130460a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130470b46">
「停下脚步，回顾过往：啊——果然应该选别
的路。像这样耿耿于怀有什么用呢。
　应该看前方，前方。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130480a00">
「是。
　没有时间可以停下脚步。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　听了养母的话，我用力点了点头。
　没错。现在应该做的，就是摸索着向前走。

　畏惧路途黑暗而伫立不前，又有何用！
　收集相同的病例……从中找出康复的病例，寻找有效
的治疗方法……该做的事情还有很多。

　在傻傻地眺望庭院的时候，就应该着手做自己力所能
及的事情。
　……我简直懦弱到不可救药。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【統】
<voice name="統" class="統" src="voice/ma05/0130490b46">
「真是个让人操心的孩子。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130500a00">
「……是。
　都这么大了还让您如此操心。
我太不中用了，好惭愧。」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130510b46">
「尽管惭愧吧。笨儿子。
　不过呢，让人操心的孩子更可爱。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　养母面带微笑，大力揉着我的头。
　……和我相比，她是多么坚强啊。

　长年相伴，却没有学会她的坚强，着实令我惭愧、气
恼。
　至少，今后不能再让她这样操心了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130520a00">
「麦格列博士应尚在本家逗留。
我明日便去拜访，细细问一问光的病情。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130530b46">
「嗯嗯。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130540a00">
「总之，今天……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130550b46">
「嗯。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130560a00">
「实在是撑不住了，先歇一歇。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばた
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵暗転", 5000, "#000000");

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【統】
<voice name="統" class="統" src="voice/ma05/0130570b46">
「嗯？」

{	FwC("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130580b46">
「…………」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130590b46">
「咦？
　景明，你头顶血流不止哦？　而且，脖子的
骨骼也扭曲得很夸张。」

//【統】
<voice name="統" class="統" src="voice/ma05/0130600b46">
「就像被大猩猩揍了似的……」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130610b46">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆夜空
	CreateTextureEX("絵背景", 5100, Center, InBottom, "cg/bg/resize/bg001_空a_03.jpg");
	Fade("絵背景", 2000, 1000, null, false);
	Move("絵背景", 12000, @0, 0, DxlAuto, false);

	SetFwC("cg/fw/fw統_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【統】
<voice name="統" class="統" src="voice/ma05/0130620b46">
「呀——!?
　振振振振作点，儿子——！
别让妈妈变成杀人犯啊——!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――


//◆場面切って
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_014.nss"