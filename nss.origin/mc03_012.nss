//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_012.nss_MAIN
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
	#���٥�ȥե�������=true;
	#ev178_ѩ܇ȥ��å������`��܇�u��_a=true;
	#ev178_ѩ܇ȥ��å������`��܇�u��_b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_013.nss";

}

scene mc03_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc03_011.nss"

//���Ƅ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	OnBG(100, "bg085_��܇��܇_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm34", 0, 1000, true);
	CreateSE("�����󤴤Ȥ�", "se�\��_��܇_����01_L");
	MusicStart("�����󤴤Ȥ�", 1000, 1000, 0, 1000, null,true);
	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 200, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���г����ֹ��죬��������������������
���ز��㡣
��ֻҪֱ��ǰ��׷�ϣ�Ӧ�þ���׽ס��

�������û�п���Ļ���
��
������ҿ����ˡ����Ͳ�������κ��ˡ�

����������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����ʤ�
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120010a12">
�������������١���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ�
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	SetVolume("�����󤴤Ȥ�", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);
	
	SoundPlay("@mbgm35", 0, 1000, true);

//��ѩ܇�

	StC(1000, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStC(0, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����һ�����ˡ�
���ر��³��������������顪���ԣ��ͺ���Ѱ�����
�����������ﶼ�������ĵĶ�������Ū���ҳ������У�
��չ������˶��صķ��顣

������վ������ǰ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc03/0120020a00">
��ѩ���һ��!!��


{	FwR("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120030a12">
������������������
�����������������ն�С�硣��


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120040a12">
�������μ���ѩ֮���𡭡���
�������Ǻܿ�ϧ������������׼�˿͹٣���
��������Ϳ����˪������


{	FwR("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120050a12">
��ֻ��Ϳ���˿ں죬��Ҫչʾ�Լ��ķ�������
���٣��٣��������˶԰ɣ���


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������˵�ţ�������èһ���������޷��������Ľ���
���硣
���ұ�������׷��ȥ������ֻ������˫����ʱͣ������


�����룬�����<RUBY text="����">�����ļ�</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 10000);

	StL(1000, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStA(0, true);

	FadeDelete("�}��д", 200, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc03/0120060a00">
����Ϊʲô�������


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120070a12">
������Ϊ������ֻ���Լ��𣿡�


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120080a00">
����װɵ����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120090a12">
���٣��ٺ١�����
�������¸���û��Ҫ���ʰɡ�����



{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120100a12">
������˭��������˭������������˸��ɾ�Ư
�����ǵ������п�ԭ�����԰ɡ���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120110a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������ˡ����ԡ��ǣǣȣѹ�Ӷ�ļ����
�����ң����η����ˣǣȣѵļƻ�������Э�������ξ
��Ҫ��ֹ�����׵���Ͷ�£����ڶ���������˵�����ǵ�
�ԵĴ��ڡ�

��ԭ����ˣ����������˷Ѵ���ȥ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mc03/0120120a00">
��Ҳ���ǣ��Թ�����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120130a12">
���١�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120140a00">
��<RUBY text="����������ũ">�ǣȣѲ�ı</RUBY>ѡ�����㡣��������
������Ϊ����ˣ�ֻҪ�ܳɹ����ֻ��֮��
�ж������������ر�����S�����Ĵ��ڡ�����



{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120150a00">
�����Ǽ�ʹ��ˣ���������״����û�����֤
������Խ��Ӧ���ǲ����ܵİɡ�
������������֮������˳̶ȵ������𣿡�



{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120160a12">
�����ǲ����ܵİɡ���
�����ֶ�������������а�������Ч�����ﲻ
���ˡ���

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120170a12">
���ţ���Ȼȫ�����˵�ĺܿ��ţ���Ҳ������
������һȦ��ǽ��ֻ������ʿ������ǹѲ�߶�
�ѡ����԰ɡ�
��©��֮�࣬��һ�¾��ܷ��֡�����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120180a12">
��������û�У�<RUBY text="��������">��һ��</RUBY>�Ϳ����ˡ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120190a00">
����������
����Ĺ������������𡣡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120200a00">
���ѵ�û����˵����Ӻ��޹���Ա����



{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120210a12">
��˵�˰�����
��������ע��˵�������ܵء���


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120220a12">
����������ܣ��Ǿ�û�취�ˡ�����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120230a00">
��������


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120240a12">
�������٣�
����ũ������֪����Ŷ����������������
��һ����������������


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120250a12">
����֪�������������
�����԰����Ǹ�����������֮�󲻻��ڱ�̾
������


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120260a12">
��<RUBY text="������������">����ɲ�һ��</RUBY>����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120270a00">
��������������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120280a00">
������˵ء���
����Ҫ���ҡ�����

//��������
<voice name="����" class="����" src="voice/mc03/0120290a00">
�������ҪĨɱ�Һʹ����ξ��
�������Ǻ����ִ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������
���ⲻ��ִ������⡭����

����Ȼ���Ǹ��ˡ�
�����ǣ����������ξ������Ϊ��������İ�ȫ������
�������������Ԥ�ϵ��˴����ξ�����Ը��ܴ����Ľ�
��������������������жϰɡ�

������֦�ڻ��Ӧ�û��������ǣȣѵ��ж�������ȷʵ
���ڡ�����Ϊ����ֹ����¡�
���Ű������ɫ�ѿ������������İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mc03/0120300a00">
������Ŀ�겻���ң����Ǵ����ξ�ɣ�
��ѩ���һ�ء���


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120310a12">
���������Դ���Ĺ�Ѫ����Щ�˰���
���٣��١�����ϲ�ɺء���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120320a00">
������
����ô���Ҳ��������ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se�ճ�_���_�²���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 1000, @60, @0, DxlAuto, false);
	DeleteStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����û����������Ƶ�á��ҷ���ϥ�ǣ�΢΢������
������
����Ԥ���ŵ��˵Ĺ����ֶΣ�������׼����

��ѩ������ŵ����ȡ���������һ�λӻ����ѡ�
��û�н��С���ô������ȥ�ֿ�������Ȼ�����ѣ���ȴ
���ǲ����ܡ�

��������󻹿����ô�������æ��
�����������������ȥ������ʿ���������������㶼
�㲻�ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120330a12">
����ô�����ٺ١�
����Ҳ����˵��������ҹ�ȥ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120340a00">
����������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120350a12">
��˵��Ҫ�Ƚ����λ��С��ġ���
����<RUBY text="��Щ�һ�">��פ��</RUBY>�����档
��<RUBY text="������">�����</RUBY>Ҳ������ߵ����氡����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120360a12">
�����Ҫ��˭����Ҫ�����԰ɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120370a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//���ե�å���Хå�
//������Ԓ�Σ֣�ѩ܇�


//������inc�Ѿ�

	EfRecoIn1(18000,600);
	CreateTextureSP("���ٽ}10", 1001, Center, Middle, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");


	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��
����������������������ӵĻ쵰������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);

	Delete("���ٽ}*");

	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mc03/0120380a00">
���㡭����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120390a12">
����������


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120400a12">
�������������ٺٺٺٺ١�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե�å���Хå�
//������Ԓ�Σ֣�ѩ܇�

	EfRecoIn1(18000,600);
//������inc�Ѿ�
	CreateTextureSP("���ٽ}10", 1001, Center, Middle, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");

	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��
������������������������ʧ��

��
��������������������������ʧ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������


	EfRecoOut1(300);


	Delete("���ٽ}*");

	EfRecoOut2(600,true);

	SoundPlay("@mbgm12", 0, 1000, true);


	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc03/0120410a00">
��ѩ���!!��


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120420a12">
���ն�!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W
	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1100,null,false);
	CreateTextureEXadd("�}����", 11100, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	CreateTextureSP("�}��", 11000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	Zoom("�}����", 0, 10000, 10000, null, false);
	Fade("�}����", 0, 450, null, true);

	DeleteStA(0,true);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Delete("�}��");

//���ܤ���
	CreateSE("SE02","se����_����_���S01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreatePlainEX("�}��д", 9900);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 20, 0, 0, 0, 1000, null, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc03/0120430a00">
������!?��


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������һ��֮��ܿ��˶Է����ٵ�һ����
��Ȼ������׼��ӭ��������һ������

�����ҿ����Է��Ѿ������ˡ�
��
��������Ҫ������


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120440a12">
������������!!
��������Ȳ�����ս����


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120450a12">
����Ϊ�и�<RUBY text="����������">���ʵĶ���</RUBY>�ڵ����㰡!!��



{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120460a00">
������ʲô!?��


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120470a12">
��������ļһﰡ!!
��ȥ�������Ǻ��޼�ֵ��������û�б��Ǽһ�
�����ʵ���!!��


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120480a12">
�������ʵ���Ű�!!��


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0120490a00">
��ѩ���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���ҵĺ���û����ֹ�Ǹ����ݼһ�ĽŲ���
���������������Ǹ���ɫ����Ӱ����ش���խ��ͨ��
���ܿ���

����׷�������
��һ������˵�壬�������Ҹе������Ԥ�в�ʳ���ҵ�
���ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��׷��
	OnSE("se����_����_���S01", 1000);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�\Ļ��");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��ѩ����ٶȳ������ˡ�
����������ɫ�����������ķλ���һ���ǲ���ȫ�ġ���
��Ϊʲô���ܴﵽ�����ٶȣ��Һ�����⡣

����Ҫ���������ľ��룬ʮ�����ѡ�
����ȻҲ��û�б���˦��������������ȥ�ܲ��

������ǰ���кS�����������������ĳ�����
����������֮�󣬾��޷���׷�����ˡ�


��������������̴���˵���Ƕ���Щʿ�����µĺ���
Ա����ô�Ҳ���Ϊѩ�����ͼ�����Һ����ǳ�ͻ��
����������������£�һ������鷳��


��Ӧ�ó�����ץס���������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStC(300, true);

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mc03/0120500a00">
����������


{	FwR("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120510a12">
�������١�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����Ų���������ת��������ߡ�
�����ĽŲ�Ҳͣ���ˡ�

����Խ�������������ߵ���ǰһ�ڳ����С�
��ѩ���û�м������ܣ��������ҡ�

���ؿ��е�ս����ø������ء�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/mc03/0120520a00">
�����У�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����ֹ��
��Ҫ��ֹ��

��������ֹʲô��
��
�������������޹ؽ�Ҫ��

����֮��Ҫ��ֹ<RUBY text="����">�Ǹ�</RUBY>��
���������̣�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120530a12">
����������


{	FwR("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120540a12">
��������������������!!��

{	DeleteStA(300, false);}

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä����ؤ���Щ`��Ӥ�������
	OnSE("se�ճ�_�Cе_��Щ`�Ӥ���", 1000);

//�x���Τ˕r�g����������������g��ȡ�롣 inc�Ѿ�
	WaitKey(400);

//��܇�I��һ�ȓe���
	CreatePlainEX("�}��д", 101);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/mc03/0120550a00">
������ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01L","se�\��_��܇_����01_L");
	MusicStart("SE01L",2000,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��������ʲô��

��ѩ������⶯�˰���һ���Ķ�����
������������һ����صĽ���������

�����ǣ�û���κα仯��<k>
��û���κΡ���<k>����<k>����!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mc03/0120560a00">
��ѩ���!!��


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0120570a12">
��������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01L*", 2000, 500, null);

	CreateTextureEX("�}�ţ�", 5100, InLeft, -470, "cg/ev/resize/ev178_ѩ܇ȥ��å������`��܇�u��_al.jpg");
	Request("�}�ţ�", Smoothing);
	Move("�}�ţ�", 8000, -512, -288, null, false);
	Zoom("�}�ţ�", 16000, 500, 500, DxlAuto, false);
	Fade("�}�ţ�", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����ֵ�Ц���𽥱�Զ��
��������ֹ��������

��������ӰҲ�ǡ�
����û�к��ˡ�����ǰ��������ѩ���ȴ���ϱ�Զ��


���г���Զ�롣
��ѩ������ڵĳ��ᣬ����Զ�������ڵĳ��ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mc03/0120580a00">
���������Ͽ���!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}�ţ�", null);

	PrintGO("�ϱ���", 15000);
	CreateColorSP("�\Ļ��", 9, "BLACK");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/ev/ev178_ѩ܇ȥ��å������`��܇�u��_b.jpg");
	SetVolume("SE01L*", 4000, 0, null);
	FadeDelete("�ϱ���", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���������������״��
�����Ҹе��˸���ǿ�ҵ�����

���Ҳ�֪��������������ͼ��
���Һʹ������ӳ����ĳ����ӻ����Ϸ��룬�ٶ�����
����������������ء�

����Ȼ���������ǲ���������ȫ�޷�˵��������������
��Ϊʲô����Ҫ����������С���Ӷ�����һ����£�


�����������ʻ�ڶ��͵��µ��ϣ����Һ�����������
������ʻ������ô�����г��Ļ���������ҵ���ײ��
�ʡ�����״����������״����

�������г�����ʻ��ƽ���ϣ�ǰ��ܿ콫�ٴ�ʻ��һ��
�š�ѩ������ڵĳ���ʻ��ǰ�档�������Ϊ˦����
������ߵĳ��ᣬǰ����г�������ٶȣ�
�Ѿ�ʻ���˰����š�

���������ǰ�ȫ�ġ�
����������״�����Ǹ��ˣ���������֤����һ�㡣


�������ǡ������Լ����г�ʻ��֮�����ƻ������ɡ�
����Ӧ����Ҫ�൱������ը������������Ҫ���ڣ�����
���������ֶ�������Ӱ��


���޷���⡣
��������Ȼ�Ҳ���⣬�����ܹ���������ĽŲ�������
�Ŀ�����

��ǰ��ĳ���ʻ�����š�
�����ţ�<RUBY text="���">��</RUBY>�������š�

��ʲôҲû�з�����
��ѩ���ʲôҲû������

����ֻ�ǣ������̧�����֡�
��������ա�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���u�������å������`
	CreateColorEX("�\Ļ��", 25000, "BLACK");
	CreateTextureEX("��", 500, @0, @0, "cg/bg/bg001_��b_01.jpg");
	Fade("��", 1000, 1000, null, true);

	OnSE("se���L_����_��ͻ�M08", 1000);

	CreateTextureEX("�}�����}", 1000, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Move("�}�����}", 0, @0, @-160, null, true);
	Zoom("�}�����}", 0, 50, 50, null, true);

	Move("�}�����}", 600, @0, @200, Dxl2, false);
	Fade("�}�����}", 600, 1000, null, false);

	Wait(300);

	Move("�}�����}", 10000, @0, @120, null, false);

	Wait(1000);

	Move("�}�����}", 300, @0, @-40, Axl2, false);
	Zoom("�}�����}", 300, 550, 550, Axl2, false);

	Wait(120);

	Fade("�\Ļ��", 0, 1000, null, false);
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	WaitKey(400);

	ClearFadeAll(0,true);

}

..//������ָ��
//�Υե����롡"mc03_013.nss"