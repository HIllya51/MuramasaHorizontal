//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_005.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_006.nss";

}

scene mc02_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_004.nss"

//�������β���

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm16",0,1000,true);

	CreateColorSP("�\Ļ��", 25000, "BLACK");

	OnBG(11, "bg030_�ǣȣѱO������_01.jpg");
	FadeBG(0, false);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������һ��δ֪֮��������

������һ�䴿�׶��������еķ��䡣
�����������ǿ���������״�С����������
�ܿտ���Ҳ������Ϊû�ڷ�ʲô��Ʒ��

  ֻ���Ҹոպ����ŵ����ش��̣��������д��ڸ�
�����塣
�����⻹��һ�����ӡ��������

������һ����ǽ����������û�С�
����֮���Ի���ô���������һ������Ϊ�����
��Ȼ��ͨ��ڣ����ݲ�̸���巽�棬��������ԣ�
������ȫ�����ġ�

����ת���Խ�֮ǰ������Ǧ����صĴ�����һ��Ҫ
���뿪���
��
�����ڷ����һ���ҵ������飬��������ȥ��

���ҽ���ǰ��������ȴ�������ġ�
����֪Ϊ�Σ��Ҹе��ֽ���ľ��

���·�����ϸ�߲��������˵�����һ�㣬
�ò������ߵ��űߡ�
����ץס�Ű��֣���ת��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������_���ʤ���
	OnSE("se�ճ�_����_���_����",1000);
	WaitKey(1500);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc02/0050010a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����������ơ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������_���ʤ���
	OnSE("se�ճ�_����_���_����",1000);
	WaitKey(1500);
	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc02/0050020a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ðɡ�
���ҷ�����һ���������

���Ŵ򲻿���
�������ˡ���Ȼ���Ǵ��������ϵġ�

�������°���������Ӱ��֣�������
��û��Կ�׿ף�Ҳû�а�ť��������
�����������ܴ򿪡�

��Ҳ����˵���ұ�����ˡ�

����������
���½��ۻ�̫���˰ɡ�

��˵��������ֻ��ҽԺ��Ĳ�����
��֮���Ի���������Ϊ�˽�ֹ�޹������ڡ�
�����ݻ��ߵ��������ʱҲ���뽫�䰲����
�޷����ڲ࿪�ŵķ�����ɡ�

���ǡ�����֮����ֻӦ��һ���¡�
���Ȱ��Լ���������һ��ʵ��֪���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Υå������󤳤�
	OnSE("se����_����_�ɥ��Υå�01",1000);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc02/0050030a00">
������һ�¡�
�������������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(1000);

//�����󤳤�
	OnSE("se����_����_�ɥ��Υå�01",1000);

	SetFwC("cg/fw/fw����_ͨ��b.png");
	
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc02/0050040a00">
�����ʡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ����á��ɥ���֤�Ź����
	OnSE("se����_����_ߵ��02",1000);
	CreatePlainEX("�}��д", 15);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");
	WaitKey(1000);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���ܥ������ө`�����������åȣ���Be quiet!
//������㣯�ǣȣ�Ҋ���꡿
<voice name="����㣯�ǣȣ�Ҋ����" class="����������" src="voice/mc02/0050050e000">
�����Ұ���һ�㣡��


//���ܥ������������`������OK.
{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0050060a00">
�������������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������ҵ�ȷ�Ǳ�����ˡ�

��������˵�������ղ���������
���������ʣ����������Ӣ�

��ʹ��Ӣ����ˣ�Ҫ���ҹ�����һ�䷿���
��
������Ҳ����˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mc02/0050070a00">
���ұ���פ���н�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���������������ˡ�

���벻ͨ����ҵ�ԭ����ڡ����������������ô˵��
���»ᱻ�����֢���ɡ�
�����ڻ���δ�����㹻�õ�ʱ�䣬�������ڽ�֮��
��ǣȣѵĽ�У�Ƕ���ʱ�ļ��䱻�绯��

���Ǵ��������Ǻŵĵǳ�����ʹһ�ж��ڻ����״̬
�������Ļ�����ǣȣѲ����ܸı����⣬�ʹ˶�����
֮����
��������˵���ǵ�Ȼ������һ���塣

������̫ͻȻ�ˡ�
����Щ��������˵����Ϊ�κ���Ԥ�׵�
������˾��ء�

��������Ԥ�ף�
��
��Ԥ�ס�

����Ϊ�ȳ��������˶�ǰ�������¡���

��û�����Խ����µ�Ϯ����
��Ҳ����˵�����ǡ�����פ���ġ�����

����ô����Ҳ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ե�å���Хå����Х��������L�䚢

	EfRecoIn1(18000,600);

	CreateTextureSP("���ٽ}10", 11, Center, Middle, "cg/ev/ev170_�Х������L���䚢_a.jpg");

	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoOut1(300);

	Delete("���ٽ}*");

	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc02/0050080a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������ͷ�۵���Ҫ�ѿ�һ�㣬��ʹ���ѡ�
��������ͣ��˼����

���ȱ�����Щ����<k>
��
����˵������������ô�ˣ�

�������ɲ�����������
����һĿ��Ȼ���Ҳ���Ҳ֪����
�����ߺͽ��й���һ��δ��̫���޴���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mc02/0050090a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc02/0050100a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������������������������������������������������

���ҳ���������������û�н��д����Ļش�
����֪����û����������������ȴ�޷���Ӧ����

������������ټ���
����Ȼ���Ǵӻ��ķ�����˵��

��������Ե�Ĳٿ����뽣�У����˳�Ϊһ�����ߡ�
������˵�Ǻ�Ϊһ�壬����������
<RUBY text="������">������</RUBY>����ɢ�ġ�

����ʹ�����Զ���������˴ˣ�
Ҳ���������߰�Ի���
��
�������ȴ��������

�����Ŀ����Ծ��ǣ���ʧȥ��
�Ի���������

��Ҳ����˵�����������ƻ��ˡ�

�����˲���˵����
����ʹ����һ�Ž����ж�λΪ���
������Ҳ������һ���ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mc02/0050110a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����������֮�⣬��ֻ���뵽�������ܷ��ͨ������װ��
�ˡ���һ�ֿ����ԡ�
���ǣȣ��Ƿ��Ϊ��������Ϊ�ϰ��ﲢ��Ҫ��ʰ���Ĵ�����
����˴�����£����ֵ�����ǡ�

��ֻ�ǡ�������Ϊ�綾���ֵ����廹�����š�
�����Ǵ������һָ��ģ��Ǿ�˵�����ٵ���ɽⶾ
Ϊֹ���������ڡ���

�����ǣ������޷�ȷ�����ࡣ

��ֻ�ܾ�����䡣
����Ȼ�ұ��������ɣ����޷�ȡ�����ɣ�
�������Ψһ��ѡ�

��������Ȼ�Ҳ��������Ϊѡ�
��
����Ըһ�ľ�����Ϊ�����Է��ش��ϣ�
������Ա���ƣ�����������¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//���ե��`�ɥ�����
//����������

}

..//������ָ��
//�Υե����롡"mc02_006.nss"