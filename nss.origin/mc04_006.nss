//<continuation number="160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_006.nss_MAIN
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
	#bg090_���Bۡͨ·a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_007vs.nss";

}

scene mc04_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_005vs.nss"


//������������
//���X�������ݷ��ڡ��ӣ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 100, "BLACK");
	CreateTextureSP("�}����11", 12, Center, Middle, "cg/bg/bg088_���Bۡ�۩`��_01a.jpg");
	CreateSE("SE01","se����_����_���ڤ���᤭_��");
	MusicStart("SE01",0,1000,0,700,null,false);

	Wait(1000);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm36",0,1000,true);

	StR(1000, @60, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	CreateSE("SE02","se����_����_�z�i��04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��լۡ�ڲ�ͻȻ���ʮ�ֻ��ҡ�
����������֦���úܹ��֡�

�������������۵����װ�״���������ҵ�ʿ��û�н�
������֯��ӭ����
���������֯�ڵ��鱨û����ȷ�����Ե�ʰɡ�

����ֻ������������ʿ�������һ������Ҷ����ŶԷ���
�ȵ�ʱ����˹�ȥ��û�н�ս��
�����л���Щ�˴����Ϊ���Ǽ��е����ߣ�ֻ�ǿ�����
һ�۾ͻ�æ�ܿ��ˡ�

������ѵ���ϸ����������˵�����ǲ����ܷ��µ�����
ʧ��
��Ҳ����˵����ǰ������֮߱����Ů����Ϯ����¶�
���ǲ�����������صĳ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc04/0060010a01">
����������ʹ��ˡ�
���Ҽ�����һ��<RUBY text="��">����</RUBY>��������������˶���
������֦����֦����֦����֦������


//��������
<voice name="����" class="��������" src="voice/mc04/0060020a01">
��û��Ҫ��˶�ҡ�ɣ�
������˵�������ʿ�����ҳ��������񣿡�



{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0060030a00">
�����ԡ�
�����������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������˶��ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc04/0060040a00">
������ֻ���ڿ־塣
���Դ�������֦�Ŀ־��������޷����ܡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0060050a01">
����������˵����
˵��������ܿ������ǵ������Ƶġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0060060a00">
�����ܿ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ûʲô�ġ�
��ֻҪ�����Լ������ľͿ����ˡ�

�����ǳ�Խ�߼��ľ�η�Ϳֲ���

����������˵���Һ�����վ��ͬһ�������ϡ�
����һ�죬����<RUBY text="���">�ǣȣ�</RUBY>�ķ����У�����˴�������֦��
ɱ�⡣ͬ���ģ�����Ҳ������ĳ�����顪����֪����ͬ
���£���ô��Ȼ����������ͬ���ĸ��ܡ�

��<RUBY text="����������������">����������֦����</RUBY>��
������ɱ�ⶢ�ϵ����֡������顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("�}����11");
	DeleteStA(0,true);
	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg090_���Bۡͨ·a_01.jpg");
	DrawDelete("�\Ļ��", 1000, 1000, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc04/0060070a00">
�������أ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0060080a01">
�������û��
����������Ǻ���������


//��������
<voice name="����" class="��������" src="voice/mc04/0060090a01">
�����Ũ�ܵ�<RUBY text="��Χ">����</RUBY>�ҵ�һ��������
�����׷�����ʲô�¡�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0060100a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������ڽ���S����ʱ��Ͷ϶��ˡ�
�����Ǻ���<RUBY text="����">����</RUBY>��

������ȷ�ظ����˴���ұ�ۡ�ķ���;��롣
��
��֮ǰ��δ�й������¡�

��������ǰ��������˵�����Ǻŵ�����ʮ��Į
Ȼ��
������ʱ˵����Ȼ�����۾����ܹ�ȷ����������֮ǰֻ
���ҵ����Է��򣬶�����Զ��Щ���Ҳ����ˡ���

������������������ƺ����쳣��
�������ƺ����������ҵú�׼��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/mc04/0060110a01">
�����������������档��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0060120a00">
�����棿��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0060130a01">
���ǵ��¡�
�����������ž�����������һ�㡣��


//��������
<voice name="����" class="��������" src="voice/mc04/0060140a01">
��������ô�죿
�����������û���������û��¥�ݻ��ǻ�
���Űɡ���


//��������
<voice name="����" class="��������" src="voice/mc04/0060150a01">
���ѵذ忳���𣿡�


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0060160a00">
�����ǲ�֪�����Ǻ�������ʲô״̬��
����ϣ���ܹ������շ�Σ�յľٶ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����l
	CreateSE("SE01","se����_����_���S03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, -630, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -630, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc04_007vs.nss"