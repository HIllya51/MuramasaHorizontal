//<continuation number="1990">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_005.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg027_���ӘS�u�h���g_01=true;
	#bg063_���ӘS��������_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_006.nss";

}

scene mb01_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mb01_004.nss"


//�����ӘS��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050010a07">
������������Σ���


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050020a08">
���Ų�Ҫ�ء�
���ռ�֮������ͦ�õ����


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050030a07">
������ʲô����̫ûƷζ�ˡ�
���Ǿ͡��������޵�֮��ġ���


{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050040a08">
���ܾ���ȱ��ʲô��
��������մ��֡���


{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050050a07">
���ۣ��治������
������Ҳ������ʯ֮�װɣ���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050060a08">
���š�����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050070a06">
������ͯ�Ĵ��ˡ�
������������ʲô����


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050080a09">
�����������ô˵�ء���
��ƶɮҲ���Ǻ��������


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050090a07">
���ţ�
�����������������Ŷ����


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050100a06">
�����֣���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050110a07">
���š�
����Σ��䲻�����������������ʧȥ��
���졣��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050120a07">
�������أ��Ȳ�����Щ��
����������������û��ᣬ���ſ����µķ�
�򡣡�


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050130a06">
���������ǣ���


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050140a07">
�����ȴ���ʽҲ�������ֿ�ʼ�ı䡣
�����������ƽ�����Ļ����ΰ�����


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050150a08">
���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050160a06">
�����ǵ��������͸��!!��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050170a09">
���侲���侲�㡣
����˵����λ�����Ȳ�Ҫ�����Ǹ��ˣ��Ƚ��
��ǰ��Ҫ����Ρ���


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050180a07">
����ʲôҪ���𣿡�


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050190a06">
��������̫���ˡ�
������һﵽ��֪��֪�����ڵ����������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050200a07">
�����֪����
����ү�����ˣ�Ļ�������̨Σ������


{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050210a07">
���ף�
���ǲ��Ǻ����ذ�����


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050220a09">
���š��൱���ء�
�����۹�����������������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050230a06">
�����ڲŷ�������
��ͯ�Ĵ���Ҳ�ǣ���Ц�������²��ؼ�һ��
������


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050240a07">
������Ц�������氡��
��Ȼ���أ����׵����Ǽ�������ˡ�������
���¼�һ�¡���


{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050250a08">
��������ȫû��չ��
��һ�ж��޴�֪�������׷�����ʲô������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050260a06">
���ߡ������ˡ�
����ش������������������ɵ���ʵ�ˡ���̬
����ϸ�������һ��ʵ������������Щ��ë��
Ƥ��С�¡���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050270a09">
���ǰ���
���������ڱ���ÿ������Ӧ����һ��ʵ����


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050280a08">
���ǰ�����
�����Ȱ�һ��¡�صĹ���ɡ���Ϊ����������
�ĸ��׵���������ø���͢���棬������
ϯ������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�{�Ӻ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050290a06">
������Ц��
������������������ν����


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050300a08">
����ô��������ν��
���ǿ��Ǹ��׵�����Ŷ!?��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050310a06">
�������أ�
�������ǰ�ʬ��𻯡�������
���������ǵ��¶����÷ѡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050320a07">
����Ϊû��ʬ�����


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050330a08">
���㡢�㡢��������֮ͽ��
�����ڿ���������Ч�Ҹ��ף����ֻ��㶼˵��
������������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050340a06">
��������Ч�ҵ��ǻ��ŵĴ�����ˡ�
��������ȥ�Ĵ��ˡ���


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050350a06">
��˭���Ǻ����ô��Ķ�����
���ֽ����Σ������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050360a08">
�����������ô��Ķ���������
���㡭����Ȼ������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050370a09">
��������������
���׵����ˡ�����


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050380a08">
��ͯ�Ĵ��ˣ����ղŵĻ���ɶ�������!?
����֪��ڵļҳ�������˷��ϵĴ���������
��������أ���


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050390a08">
����Ȼ�Ѹ��׵�������һ�����£���¶������
�����޳ܵı��ԡ�����
����Ȼһ��ʼ��֪�������Զ��ӣ�������Ŀ��
���Ȼ���ǲ���ԭ�¡���


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050400a06">
���ߡ�������ô˵��
���������ּһ���ô�����ҵ������أ���һ��
����Ȥ��û����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050410a06">
����ֻ�����Լ�Ӧ��֮�¡�
�������߶����ҹ����׵����������������Ϲ
����֮������飬��һ���ô���ľ������ǻ�
����ڵ��Դ�����


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050420a08">
������������


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050430a06">
��ԭ�������Ҿ�û���Ĺ������¡�
����˵��<RUBY text="����������">��֪Ϊʲô</RUBY>û���ϴ���
����ߵĴ�����ү������������ôһ���㵨��
�Ļ����Ͳ�����������״�ˣ�û��ɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����㥭�������Ϥ��ä�̫�����֤�줱���׵�
//��ꤸ�����Ī{�Ӻ�

	StR(1000, @120, @30,"cg/st/st�׵�_ͨ��_�Ʒ�.png");
	CreateSE("SE01","se����_�n��_ܞ��05");
	CreateSE("SE01b","se���L_����_������02");
	StL(1000, @-120, @30,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	CreateSE("SE02","se����_����_�����Ϥ���_��");

	MusicStart("SE01",0,1000,0,1250,null,false);
	Move("@StR*", 300, @-30, @-30, DxlAxl, false);
	FadeStR(300,false);
	Wait(200);
	MusicStart("SE01b",0,1000,0,1000,null,false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @-30, DxlAxl, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fwͯ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050440a09">
���׵����ˡ���


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050450a08">
��������


{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050460a09">
��������ǽ�������
�������ε����磬�����̱�����ı������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050470a08">
��������


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050480a09">
����Ȼ��ʨ�Ӻ���ˡ���
��������������������������������е���Ҳ
�ⲻ�˱���ڵ����


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050490a06">
������������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050500a09">
����λ�������¡�
������������˼��һ�����Ե�������Ρ���


{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050510a08">
��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050520a06">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01","se����_����_�����Ϥ���_��");
	CreateSE("SE01b","se����_����_�����Ϥ���_��");
	MusicStart("SE01",0,1000,0,800,null,false);
	Move("@StR*", 300, @0, @30, null, false);
	DeleteStR(300,false);
	Wait(150);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StL*", 300, @0, @30, null, false);
	DeleteStL(300,true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050530a09">
���ܺá�
����ô���ۼ������С���


{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050540a07">
����ѽ����ү�ӵļ����������廳��
���������Ž����һֻ��ʧȥ����ܷ���
����������ļ�ֵ����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050550a07">
������ӿ���ϵ�׷��֮�������ػ����������
�裬��������������Կ�Ե�����������ˮ����


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050560a08">
������氡������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050570a09">
�����������ء�
�����˵�����Ȼ�Ǵ���һ�����¹�������һ
����������⡣��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050580a06">
�����ҵ��ǲ����ϡ�����


{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050590a08">
���ߣ�������ɣ���������
��������ͯ�ĸ�ɮ���Ҿ�֪��������ֵͼ���
�һﲻһ�����Ǹ�������������


{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050600a09">
�������������׵����ˡ�
��ϣ��������ƶɮ�ѻ�˵�ꡣ��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050610a09">
�����������ȷ����Ҫ��
��������Ҫ�̶�Ҳ������֮�֡�Ҳ����˵��˳
�򡣡�


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050620a08">
��˳�򣿡�


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050630a09">
������һ�롣
�������������������¾�����ķѴ�������
�����Ĺ��ᣬ���룬����������ء���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050640a09">
�����ź�������Ļ���ĸ����ڶ�ҡ��
������ӹ���ɣ�Ļ����Уǣȣ��Լ�Ǳ���ڸ�
�صĵ�Ļ�����߶��ڻ�������ض���Ļ���Ķ�
ҡ����


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050650a08">
�����ǣ�������ˡ�������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050660a09">
����Ȼ����Ȼ��ƶɮ��Ȼ�����׵����˵�����
���ġ���Ϊ����ȴ���ò������׵������Ӻ�
���뷨����ֱ�������澡ʧ��
�����������ô������갲Ϣ����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050670a09">
��ƶɮ��Ϊ���ֽ��׵����Ӧ��Ļ���ɶ��Ĺ�
����š����Ψ�����¹����԰��Ϲ�Ϊ���ĵ���
�ƣ�����ʹ��Ȫ֮�µĴ��˰��ġ���
����Ρ���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050680a08">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050690a09">
�����ڵ���֮���Ƿ���Ӧ�ȶ�Ա��͢����گ��
�����Ϲ����δ��졭����
��Ȼ�����´���֮������й��ᣬ����Ϊ��
������


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050700a07">
���á���û�������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050710a06">
�������������Ȼ�Ĳ��衣
��ֻҪ��ɵ����˭�����뵽����


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050720a08">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050730a09">
���׵����ˡ���


{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050740a08">
�������ᡭ����û�����顣
����ȷ����������Ϊ���ơ���


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050750a08">
�����ƺ���Щ�ļ��ˡ�
������ʵ�ڱ�Ǹ��ͯ�Ĵ��ˡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050760a09">
�����������Ҫ����Ϊ���׵�ɥ������һ��
��Т�ĵĶ�����˵��������Ȼ�ġ�
�����ᳫ���Զ����������ƶɮ������������
������֮������


{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050770a08">
���������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050780a07">
�����ź��أ��㼪����
���������ȱ�ܴ�����ˡ��������ų�������
ʤ�����������


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050790a08">
��!!
���ᡢ��ɲ�֪������˵Щʲô����


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050800a06">
�������ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�������ʤ�
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050810a09">
���������ˡ���


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050820a07">
���ٺ١���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050830a08">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050840a09">
�������̽��Ļ㱨����͢������������
üĿ�������Ҵ��಻���������ʽ���ˡ�
��ֻҪι��Ǯ�����Ͼ��ܶ�Ա��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050850a06">
�����Ϲ�����Ϯλһ�£�����չʾĻ������
�������������ٱ�������������
������񣬴�����ΪҪ������


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050860a07">
������˵��ֻҪ�Ƚ������ֲ�������������Ҳ
����֮�ָ��𡣵�ȷû��
��������ֻҪû�а�ᦹ���������������Ӧ��
���˳���ɣ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050870a06">
�������ǽ�����������
���ߡ�����ֻ�߹�Ŀ�ȸ����ʲô����������
������������ı��ƣ����޽��丶���ж�����
�󣬾͹������κ���в����


{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050880a08">
�������ǰ�����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050890a09">
�����������Ժ��Ҳ��죬��Ǯ�����룬������
��ƨ�ɺݺݵش����¾����ˡ�
����������ϴ�ĸ���ľ��ġ�ֻҪ�лƽ�͸�
����һ�оͶ�����ˡ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050900a07">
����ɲ���һ�����и�˵�Ļ�����


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050910a06">
���µ����˵�⻰���á�
�����ǡ�����ǰ�ķ���Ͷ�Ϊ����ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050920a06">
�����Ǹúδ�������


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050930a09">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050940a06">
��Ҳ����һֱ���������ֳǡ�
��һ���׻������㽫һ�����С��뷵�ظ��Ե�
��������ƽ�������ڵĻ��ҡ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050950a07">
���ƺ����������м��Ҵҡ�������ҩζ�ļһ�
�ء�
�����������Ż��˰ɣ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0050960a09">
��������̬��չ����֮ǰ��ȡ��ʩ��
�����ǣ��ֲ��ܰѰ��Ϲ�һ����
���������������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0050970a06">
���š�
�������������Ļ����������գ����Ϲ����׼�
�ͻ��Ϊ�ǰﵹĻ����ϯ�ϵ����вͰɡ���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0050980a07">
��Ҫ���Ѵ��׸����н�������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0050990a08">
��˵ʲô��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051000a09">
����������������Եģ��������
ι������ҡͷ��β�عԹԹ����𡣡�


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051010a06">
��������ӡ�
���Թض�Ϊ��̨���������Ǽһ��ս������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051020a07">
�����Ǻ���Ȥ�𣿡�


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051030a08">
�����֪����Ȥ����
����������ֶ����𱨵�С�˹�����
ֻҪ�ᱲ֮��ѡһ�����²������ˡ���


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051040a09">
���ţ����Լ��ǡ�
�����ǣ�Ӧ��˭��������������أ���


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051050a08">
������Ҫ˵�᲻�����������״�������Ǽٵġ�
�������أ����˰����常����


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051060a08">
���������׽������ˡ�
������Ϊ���������ܱ������˸�����ϰ��ġ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051070a09">
������ԭ����ˡ�ԭ����ˡ�
����ȷ����ء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051080a07">
���ǰɣ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051090a06">
������������


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051100a08">
��������


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051110a08">
���õ�ͯ�Ĵ��˵���ͬ�Ҿͷ����ˡ�
����ô������������ô���ˡ�����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051120a06">
�������أ���


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051130a08">
��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051140a06">
��������μ�ˡ�
��������һ���˱������Ϲ��������������
��������ʵ�ļ໤�ˡ���


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051150a06">
����Ҫ��С����������ݸ��������
�������������ĵ�λ����


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051160a08">
���ǡ������¸�������ν�ɡ�
������Ҳ�ò�����������������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051170a07">
�����ǰ���ʨ�Ӻ�
�������Ƕ�������֮���پ����Ļ�������ʲ
ô��λ��������������Ŷ��������˼Ұ�����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051180a06">
������
�����ҵ�û�뵽����


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051190a06">
����Ǹ���׵�����


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051200a08">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051210a09">
��������ô���׵����ˡ�
�������ʲô�������𣿡�


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051220a08">
�������ǣ��ǰ���
����ȷ���Ͼ���Ҫ�������ϴ�������
��ȡ����֮��Ӧ�Ĺ�ְ�����ȽϺá���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051230a09">
�����Լ��ǡ����Լ��ǡ�
��Ȼ���أ���


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051240a08">
����������ܵõ��ض�����ĵ�λ��
�������������ܳ�ֵط��ְ����ˡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051250a09">
��Ŷ����


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051260a07">
������
����ô˵�����Ҹ���֮��������������ι���
��ְ���ء���һ��ʱ�䡣��


{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051270a06">
��û��
���ڷ��¹�������ʧ�ߵĹ�ʧ֮ǰ��ܥԽ����
ƾ�����λ����Ļ�󡭡���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051280a06">
����֮����ִ���١�
��������������ȱ�ı�����ƫƫҪ������ߣ���


{	FwC("cg/fw/fw�׵�_����.png");}
//�룺��������äƤäƣ���090930��
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051290a08">
��ƫƫ��ʲô��˼��
����������������ң������ϴ�������׶�
�������´�������常!?���㵹˵˵����
���б������ʤ�ιض�����֮λ������!!��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051300a06">
���Ҳ�֪��˭��ʤ�Ρ�
��������϶�����ʤ�Ρ���


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051310a08">
���㡢�㡢����쵰��������


{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051320a09">
����������������
��ƶɮ���׵����˾��ιض�����֮�£�������
��Ը���ʾ��ͬ�ġ���


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051330a08">
��ͯ�Ĵ��ˣ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051340a06">
���˷�ʲô�������š�
��û��<RUBY text="����">����</RUBY>��˵����ȥ������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051350a07">
���������Ե�ħ������
�����������µ�����޹�����
������Ϊ֮����Ϊ֮�㽡���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�׵�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051360a08">
��������Щ��!!��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051370a09">
�����š�
��ʨ�Ӻ���˷������𣿡����������˵����
�����˾��ι������ǺϺ�����֮������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051380a06">
�������أ�
��ԭ����ˣ�����챣Ǯ�����������ֹ�ܾ�
�ι��죬���������δ��춼�޿ɷ��顣��


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051390a06">
��������ͬ���ּ�ֵ��
�������������������
��ͯ�Ĵ��ˡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051400a09">
������������


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051410a08">
��ͯ��ͯ�Ĵ��ˣ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051420a09">
��������ô��
����������������Ρ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051430a07">
������и��������Ļ����ҵ��ǿ�����ͬ����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051440a09">
����������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051450a07">
���ض������в��㹻��
���׵�����������ΪĻ���Ķ����ң��͵þ�
�θ������Ĺ�ְ����


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051460a08">
��������!?��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051470a06">
�������һ����³�����ˡ�����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051480a09">
������ƶɮ�����³�����ˡ�����


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051490a07">
��û���׵���
������һ���ض����죬����ĲŻ�̫������ˡ�
�����𣿡�����û�����������ʵ������


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051500a08">
���衢����衭�������Ů�˰���
���ǡ���ô��ʲô���ĵ�λ�ź��ʣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051510a07">
���ض�����������������Σ���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051520a08">
�����Ƿ�����������!!��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051530a06">
�������޳ɡ���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051540a08">
���޳ɸ�ƨ!!��


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051550a09">
���š�
�������������Է�����������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051560a08">
��ͯ��ͯ�Ĵ��ˣ���ô����Ҳ������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051570a09">
����ѽ������Ц�����׵����ˡ�
�����������ϻ��ˡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051580a09">
��ƶɮû�����飬������������λ�ƺ�������
ʱ�����硣
�����˶�λ���ԣ���Ҳ����Ҳ��Ϊ�����ǹ�
���Ĺ���ͳһ����Ӧ�Թ��ѡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051590a09">
����Ρ�
���������ݻ�������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051600a08">
���������ǣ����ǰ���ͯ�Ĵ��ˣ�
��Ϊ�˵����������ϵ����Σ�ӵ����֮��Ӧ��
��λ������˳���ƶ����񰡡���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051610a06">
���ܶ���֮��
����������ϵ�λ�ĸ�ñ�Ӿ��޷���ְ�����
����˵���㱾���Ͳ��ʺ����ְ�񡣡�


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051620a06">
��Ҳ����˵����Ϊ��ʵ�����㡣��


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051630a07">
�����մ𰸳���������


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051640a08">
���������ҡ����ա�����!!
��ͯ�Ĵ��ˣ�ǧ�������Щ����ͼ�֮�˵ĺ�
����ѡ�ᡪ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051650a09">
�������Ǻ���Ҳ�ã�����Ҳ�ա�
����ʵ��ռ�Ĺ�������ϯλ����λ������ͬ��
�׵����ˡ����ѵ��������Ľ����𣿡�


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051660a08">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051670a09">
������ؽ��ơ�
��������˵������ʨ�Ӻ���ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051680a06">
�����¡���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051690a09">
������Ҳ�����׵��������ڳ�����
���Ǳ������Ϲ������Σ�Ӧ�ɺ����������أ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051700a06">
�����оͺܺá�
�����޷������ԺS�����ò��ܣ���˵�������
�費�����۷�Χ�ڡ���


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051710a07">
���������۷�Χ�ڰ������ɲ���Ŷ����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051720a06">
��ͨ���ų����ó����ۣ�Ψͯ�Ĵ��˿ɡ���


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051730a09">
�����š���
����������������Ρ���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051740a07">
���ܺ��
���ź�ò��û��ô��������������ʱ����ȥҲ
�����¡���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051750a08">
������������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051760a09">
���⡭�����Ѱ찡��
�������׵����ˣ���


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051770a08">
��������ô����


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051780a09">
�����������λ�ƾ٣����ҵ���������
���һ���ͺ�����ƶɮ�����׵����˵�λ�ӡ�
��ƶɮʵ����������ձ����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051790a09">
��������ζ�������׵����˵������
�����������졪�����Բ���˵
����������������л��ܾ�������Ρ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�׵�_���d.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051800a08">
�������ġ�������ҵ���
������ͯ�Ĵ��ˣ���Ҳ�ܷ��Ľ������и����㡣
ͯ�Ĵ����˳���Ϊ����Ч������ø���������
�������������������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051810a09">
���ǣ��׵�������������λ���˳���ͬ�۵㣿��


{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051820a08">
�����������ǡ�
��ͯ�Ĵ��ˣ��ͽ��������ˡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051830a09">
�����Ҿ͹�����������ˡ�ƶɮ��֪���˺ε�
���Ρ�
����ͯ�ĺ��У�ƴ������ҲҪ�������ϴ��ˡ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051840a09">
����λ��ظ��Թ�������һ����������Ϻ�
����ǳǡ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051850a06">
�����ס���


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051860a07">
���á���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051870a08">
������������


{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051880a08">
����ô�����۵��˽�����
�������𡣡�


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051890a09">
���ǰ���
�������ˣ��׵����ˡ���


{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051900a08">
�������
����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���׵���ȥ�롣�����Ĥ�
	CreateSE("SE01","se����_����_�i��09");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(2000);

	SetFwC("cg/fw/fw�{�Ӻ�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb01/0051910a06">
�������ߡ�
���������Ŵ����к����ߵ������İ������Ǹ�
������˵������˲����ˡ���


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb01/0051920a07">
����˵��������š�
���������Ǽһﲻ����������ֻ��һ����ʿ��
���������Ҹ��ɣ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb01/0051930a09">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 1000);

//������
//���׵�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg063_���ӘS��������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	StL(1000, @30, @0,"cg/st/st�׵�_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051940a08">
���ߣ�ʲô��������
���𶼲ȵ��ҵ�ͷ�ϣ���


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051950a08">
�����ڰ��Ͼ��δ���ǰ������֮�ֲٰ츸��
�����񡭡�����Ϊ������ʵȨ���ٵ�·��
��ȴ��������Щ�һ�����ˣ���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051960a08">
����Ȼ���ض����춼���У�
����Ѫͳ��˵��ȫ���������������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051970a08">
���մ���ȥ��Ļ���ͻ��Ϊͯ�Ĵ��˵�����֮
�
������ô�С�����


{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051980a08">
������������


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb01/0051990a08">
����Ȼ����
������ֻ�ܺ��ǰ�һ������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb01_006.nss"