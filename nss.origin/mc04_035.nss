//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_035.nss_MAIN
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
	#ev204_微笑する幼い香奈枝_a=true;
	#ev204_微笑する幼い香奈枝_b=true;
	#ev204_微笑する幼い香奈枝_c=true;
	#ev204_微笑する幼い香奈枝_d=true;
	#ev204_微笑する幼い香奈枝_e=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_036.nss";

}

scene mc04_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_034.nss"


//◆過去回想

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "#000000");
	Delete("上背景");
	SoundPlay("@mbgm06",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大鸟香奈枝这个人，应该说是极为寻常地降生到了世上。
　至少在她自己听人传言的范围内是这样的。


　既不是从女尸的胎内产出，也不是妊娠三月时咬破母
亲腹腔而降生的。另外，在母亲妊娠前后，
父亲似乎也没有沉溺于黑魔术仪式。


　有爱情，有性交，也有精子与卵子的结合，经过十个
月的熟成而诞生，仅此而已。
　平平凡凡，毫无波折，按照与总计二十亿或三十亿的
其他人类完全一样的步骤诞生。

　大鸟香奈枝。
　她作为一个人类以正确的方式诞生。

　尽管如此，她作为一个人类却并不正常。
　大鸟香奈枝的身心，极其细微地——只是在某处
的一部分，拥有异常的机能。

　最初知道这个事实的并非她本人。
　是她的父亲。
</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：幼い香奈枝
	CreateTextureEX("絵ＥＶ1", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_a.jpg");
	Fade("絵ＥＶ1", 0, 1000, null, true);
	FadeDelete("黒幕１", 1000, true);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　他是对孩子的教育相当热心的人。
　可以说他忠实于作为一个父亲的职责。

　身为权门中的一员，虽然工作极为忙碌，却没有
将女儿托付给佣人养育，而是竭尽所能抽出时间自己
亲身教导。
　所以，结果还是了解到了女儿的<RUBY text="··">偏向</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カマキリの死骸。レイヤー重ねで
	CreateTextureEX("絵ＥＶ2", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_b.jpg");
	Fade("絵ＥＶ2", 1000, 1000, null, true);
	Delete("絵ＥＶ1");
	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　某日，他亲眼看到年幼的女儿手中，拿着被撕得粉碎的
螳螂头的情景。
　脚边还有一只纹白蝶的尸体——是认为它被螳螂杀死啃食
了吗？

　父亲当时只是皱了皱眉头，一言不发地离开了。
　对幼儿期特有的残忍不由分说地加以斥责
只会得到反效果。

　还不如耐心教导生命伦理，让她自己意识到错误。
父亲当时是这样打算的。

　他是个好父亲。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ツバメの死骸
//◆香奈枝差分、指先に血が。
	CreateTextureEX("絵ＥＶ3", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_c.jpg");
	Fade("絵ＥＶ3", 1000, 1000, null, true);
	Delete("絵ＥＶ2");

	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　另一个某日，他遭遇了女儿捕捉燕子，将其缢死的情
景。
　燕子估计是正在收集饵食吧。口中吐出了好几只昆虫。

　父亲那个时候也是一言不发地离开了。
　他心中思考着有没有哪个合适的童话，能够教会她
懂得生命的宝贵。

　他是个好父亲。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カラスの死骸
//◆差分、手首辺りまで血が。頬にも少し

	CreateTextureEX("絵ＥＶ4", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_d.jpg");
	Fade("絵ＥＶ4", 1000, 1000, null, true);
	Delete("絵ＥＶ3");

	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　又一个某日，他偶然遇到女儿用剪刀的尖端让一只大
乌鸦断气的情景，为之愕然。
　女儿察觉到了父亲的视线，告诉他说是这只乌鸦毁坏了
燕子的巢。确实可以看到散落的残骸。

　父亲稍微迟疑之后，带着赞赏的表情对女儿说居然连
鸟也能抓到，然后就离开了。
　驱除害鸟一事本身并无过错。要加以斥责还是等其他
时候比较好。他是这样想的。

　他是个好父亲。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆野犬の死骸
//◆差分、血まみれ。
	CreateTextureEX("絵ＥＶ5", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_e.jpg");
	Fade("絵ＥＶ5", 1000, 1000, null, true);
	Delete("絵ＥＶ4");

	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　然后又一日，他听到佣人的叫喊而奔去。
在那发现了全身是血的女儿，
惊得哑口无言。
　女儿左手拿着菜刀，右手拖着一只野狗的尸体。

　这条狗咬死了小猫，这样说的时候，少女的双
脚已经有些站不稳了。
　那些血似乎不全是野狗的。

　父亲拼命压抑着内心的惊慌。他叫了医生，并吩咐女儿
去洗净身体。
　女儿将野狗埋葬在后院之后就按父亲说的去做了。

　那一天的夜晚，父亲终于质问女儿，为什么要做那种
事情。
　女儿回答说，因为无法原谅。

　父亲又问，什么无法原谅。
　女儿回答说，恶行无法原谅。

　为了一己之欲，夺取他人性命的恶行。

　每次看到如此情景，内心就会偏向被掠夺的一方。
　对屈服于强者暴虐的那份怨念与悲愤感同身受。

　所以杀了它们。
　女儿如此说道。

　替蝴蝶，小虫，燕子，小猫——
　杀死了螳螂，燕子，乌鸦，野狗。

　如此说道。

　父亲告诉她说那都是自然法则。
　不管何种动物，均得靠牺牲其他生物方得存活。

　我们不也每天都在食用牛和猪吗。
　父亲如此开解道。

　女儿颔首。

　——是的。
　所以我们也应当受罚。

　毫无迟疑地这般答道。

　父亲哑口无言。

　女儿继续说道。

　——如果弱肉强食是自然法则。
　那么自己也无法原谅这种自然法则。

　因为那并非正义。

　不管是别无他法，还是一种必然。
　那也绝不是正确的行为。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕１", 15000, "Black");
	Fade("黒幕１", 1000, 1000, null, true);
	PrintBG("上背景", 30000);

	Delete("上背景");


	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/tp_復讐編挿入01.png");
	Zoom("絵テロ100", 0, 700, 700, null, true);
	Request("絵テロ100", Smoothing);
	FadeDelete("黒幕１", 2000, true);
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

//	WaitKey(2000);

//inc久保田 テロップなので下記テキストをコメントアウト
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆テロップ
　这个世上存在着正义。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……女儿真挚地接受了父亲的教育。
　在世间昭示正义，为了不让人们的心走向堕落而努力。
那确实是他教导过的，贵族的义务。

　必须憎恨邪恶，必须否定邪恶——
　
　他不知道应该如何对待过分忠于这一教诲的女儿。

　他知道女儿的心性是<RUBY text="···">扭曲的</RUBY>。
　可是，却<RUBY text="······">没有任何错误</RUBY>。

　勉强说出口的，不过是因为无法用道理说服，就想依
靠恐惧来达到目的的笨拙言语。
　
　——那条狗一定也有家人吧。

　在你想为猫报仇的时候，或许也成为了狗的仇人。
　终有一天会有成群的狗来杀你也说不定哦——

　女儿答道。
　
　——<RUBY text="···">那就是</RUBY>正义。
　就让我被狗咬死吧。

　若是这个回答中稍微混杂有逞强的成分，父亲
多少还能放心一些。
　就算因为过分直白显得有些危险，但无疑还能
认为其本质上是个正常的人类。

　然而事与愿违，女儿是带着美丽的微笑说出了这句话。
　父亲像做梦一般出了神。

　没有再说什么，父亲把女儿送回房间。
　之后久久为之苦恼。

　但苦恼不会有任何回报。

　他是个好父亲。<k>
　
　
　可是，女儿实在是太过恶劣。

　女儿其实也是理解的。
　自己的扭曲。父亲的困惑。还有如何才
能让父亲不再苦恼。

　虽然理解，但却无视。
　以自己的欲求为优先。

　报复嗜好。
　复仇志向。

　她并不因为那是正确的才去做。
　而是因为那是快乐的才去做。

　将复仇看作是正确的——看作正义的观点，
只是伦理上将杀害行为的禁忌<RUBY text="··">解除</RUBY>了而已。
　……在这个意义上，父亲对她的教育
或许不仅无益反而有害也说不定。

　或许可以说是幸运，父亲在有生之年都没有想到这一点。
　没有意识到女儿的本性比自己所惧怕的还要恶劣得多。

　他既是个好父亲，也是个善良的人。
　正因为善良，对<RUBY text="·····">天生的恶魔</RUBY>这一个性
缺乏过多的深究。

　这个善良的男人无法理解女儿，这个好父亲没能做出用
暴力和权力对女儿的偏激行为加以掣肘的决断。
　女儿就这样顺利地怀带着扭曲成长，

　直到迎来兴隆二十四年九月。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆王杉事件
	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転",1000,1000,null,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	OnBG(100,"bg013_鎌倉俯瞰a_01.jpg");
	FadeBG(0,true);

	CreateEffect("Memory_cover", 14000, 0, 0, 1024, 576, "Sepia");
	//CreateEffect("Memory_cover", 14000, Center, Middle, 1100, 600, "Sepia");
	FadeDelete("上背景", 0, true);

	WaitKey(1500);

	SoundPlay("@mbgm32",0,1000,true);

	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　趁着关东大地震的混乱，隶属大鸟派系的陆军大尉及
其一党虽然绑架了无政府主义者王杉荣及其亲属，但由于
警察接到密报迅速出动，使得他们无法回到屯驻基地。


　当时军队与警察处于对立关系，无望进行私下交涉。
　无可奈何，陆军大尉及麾下将兵只好逃亡到大鸟家
影响力很强的会津。


　他们与王杉一家一同躲藏在永仓家名下的山庄中，收
到这一消息后，大鸟本家开始商议对应策略。
　意见鲜明地分成两派。

　认为应当支持陆军大尉一行的家主。
　主张将大尉一行引渡给警察的家主之弟——香奈枝之父。

　议论纠纷很是混乱。
　高声对骂，动手动脚的次数要用双手十指才数得过来
——最终，以「当作没有发生」这一趋势了结。


　让王杉一家秘密流亡海外。
　陆军大尉一派的行动则当作受震灾混乱煽动导致的
玩忽职守来处理，在回归原队后给予处罚。

　这是妥当的收拾方式。
　不过得出结论的时候，一切都已结束。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg092、セピアマスク？
	CreateTextureSP("絵背景30", 10, Center, Middle, "cg/bg/bg092_森の道b_01.jpg");
	FadeDelete("@OnBG*",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　刚好在事件发生的那段时间，香奈枝逗留在白河的永
仓家，一时兴起前往山庄——
　在那里遇到了濒死的男孩。

　他断断续续地诉说了经过。
　他与父亲、母亲、兄长一同被带到这里。将他们带
过来的大人们对父亲提出了某种要求，被父亲拒绝。
然后发生了激烈的争吵。

　之后——
　
　孩子没能说完后面的话。

　可是，这已经足够。
　大鸟香奈枝需要的东西，已经全部传达。

　提着枪械的士兵从山庄的玄关冲出，
喊着问发生了什么事。
　香奈枝将变得不再动弹的孩子放下，
站了起来。

　然后开始了。

　解放了生根于自己灵魂的志向。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝最初の殺戮
	CreateTextureEX("絵背景31", 10, Center, Middle, "cg/ev/ev200_香奈枝最初の殺戮.jpg");
	Fade("絵背景31",1000,1000,null,true);
	Delete("絵背景30");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　……当永仓纱代发现香奈枝不在家并意识到她的行
踪，飞速赶到山庄时，那里已经只剩尸骸。
　只剩下纷乱的尸骸————和一只恶魔。

　纱代与永仓家主临机应变，马上进行隐蔽，将事
件处理成陆军大尉等杀害王杉一家之后自杀的模样。
——但不管怎样，他杀尸体只能是他杀尸体。


　想连收拾尸体的大鸟家家丁也一同骗过是不可能的。
　同样也不可能让为香奈枝治疗<RUBY text="··">战伤</RUBY>的
医生相信那只是意外导致的伤口。


　王杉事件的真相被他们发觉，并经由他们之口开始流传。
最终成为了大鸟家中公开的秘密。
　
　这个秘密生出一个禁戒。

　——禁忌公主，禁忌公主，禁忌公主。
　不可触碰的香奈枝大人，不可接近的香奈枝大人。
不可与她交谈。不可被她看到面容。
千万千万，不可激起公主的怒气。

　无法理解女儿但一直守护着她的父亲，在迎来这一
事件之后，终于怀着无法理解的心情而绝望了。
　对亲生女儿的爱也消逝了。

　事件发生数年后，香奈枝以留学的名义被放逐到海外。
　同行者仅有永仓纱代一人。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆フェードアウト？
	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転",1000,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……大鸟香奈枝对弃自己而去的父亲并没有心怀怨恨。
　倒不如说恰恰相反。


　她知道，父亲明知女儿心性扭曲，却还是拼命
努力去爱她。
　只能感谢父亲深厚的爱，而自我本性无法回报
他的爱，仅仅只能表示歉意。

　虽然她极度扭曲，但对自己的扭曲却拥有正确的理解。
　被忌讳嫌恶也没有办法。她理解，既然贪享着邪异的
愉悦，那也是当然的报应。


　比起被人喜爱，更愿意沉溺在自己的欲求中
——这种家伙遭到嫌恶是理所当然的。
　参照着从父亲那里学到的伦理观，正确地做出结论，
得到正确的答案。她心中已经再无疑问。

　因此香奈枝在放逐后没有做出任何改变，
在欧州继续生活。
　从没有在一个地方停留太久。将难以理解的杀戮戏剧
如同足迹般留在身后，辗转于各国之间。


　视杀之王。
　复仇女神。
　暗夜潜行者。
　……并且让暧昧模糊的传说如迷雾般扩散。

　大鸟香奈枝作为受忌讳的恶魔而存在，并且对自己这
种存在方式不抱任何怀疑，在欧洲的人类社会中阔步而行。
　然后经过十余年的岁月，踏上了回到祖国大和的归途。


　仍是恶魔的恶魔踏上故乡的土地。
　
　可是就在那里，恶魔第一次直面了动摇自身根本的疑问。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝と景明。例のシーン
	Delete("絵背景31");
	CreateTextureSP("絵背景32", 10, Center, Middle, "cg/ev/ev171_香奈枝に跪く景明.jpg");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　——那个刹那。
　
　在大鸟香奈枝的心中，一个齿轮坏掉了。

　本应被忌讳嫌恶的自己，
　被欢迎、被尊敬、被感谢的那个瞬间。

　她在过去，粉碎过无数的憎恶。

　粉碎过无数的不逊，无数的激愤。
　也粉碎过无数的悔悟，无数的哀愿。<k>
　可是，只有感谢，她从未挥刀相向过。

　凑斗景明剥夺了新田雄飞的生命。
　此罪毫无怀疑余地。与其他累累罪行一样。

　可是香奈枝承认，他虽然有罪，但却无错。
　处于他的立场，除了这样做以外还有其他什么办法吗？

　所以香奈枝在看到他对复仇宣告露出恐惧神色时，
预测他接下来定会表现出抵抗意图，并且也认为
那才是正确的。
　香奈枝的宣告是暴虐的，那么就应该反抗。

　并未犯下过错的人，没有理由非接受处刑不可。
　香奈枝打算站出来承受凑斗景明的抵抗，与他生
死相搏。

　但预测落空了。
　他畏惧死亡的同时，跪拜欢迎给他带来死亡的香
奈枝。

　无法理解。

　他并不像香奈枝一样，有着承认连自己也在复仇对
象之中的复仇志向。
　他是有着正常感性的常人。

　若是常人，应该会抗拒对自己的复仇。
　况且如果作为复仇根源的罪行，
只是无可奈何的选择结果的话，
难以抑制内心的悲愤与怨恨更是理所当然吧。


　明明应该是这样的。

  ……事后再想，其实不该拘泥于这种疑惑。
　

  不用去想这奇怪的男人，直接杀掉就好了。
　反正大鸟香奈枝只是人类中的残次品。这种东西想
去推量人的心理，只能说是无意义到了极致。


　可不知为何，还是拘泥于此。
　陷入到名为凑斗景明的迷宫中。

　心中烦恼着他的事情。

　也想过他或许是对自己的罪行感到疲惫不堪，想快点
得到解脱。
　但是，那也没有道理。若是如此他早就自杀了。


　他发自内心地欢迎香奈枝的复仇。
　渴望着来自他人的报复，以处罚的形式降临的死亡。


　这样的想法与正常的生理上对死亡的恐惧并存。
　从伦理上看不可能并存的两者，不知为何并存着。



　——但。
　过了一段时间之后，香奈枝才意识到这一判断根本
就是错的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"mc04_036.nss"