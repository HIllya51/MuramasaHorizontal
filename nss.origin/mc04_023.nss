//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_023.nss_MAIN
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

	$GameName = "mc04_024.nss";

}

scene mc04_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_022vs.nss"

//�����L�����٥��
//������ե饰���ĤȤ��Ф���ϤΤ�

//��ɽ�֣���ҹ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	OnSE("se��Ȼ_��_��ĵ���", 600);
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg022_ɽ��a_03.jpg");
	Delete("�ϱ���");
	Fade("�\Ļ��",2000,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ע�������𽥻�Ϊ�ҽ���լۡ��
�������˶���ء�
��������֪�Ӻ�ʱ�𣬲����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����󥰤���
	StL(1000,@0,@0,"cg/st/st������Ѫ_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw������Ѫ_��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����衿
<voice name="����" class="����" src="voice/mc04/0230010a04">
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230020a00">
������������


{
	SetVolume("@OnSE*", 1000, 0, null);
	FwC("cg/fw/fw������Ѫ_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0230030a04">
�������ʱ����뿪�����ˡ�
�����쵽���ľ��ӿ��ܼ����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230040a00">
������������


{	FwC("cg/fw/fw������Ѫ_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0230050a04">
��������

//�����衿
<voice name="����" class="����" src="voice/mc04/0230060a04">
����������ʲô���𣿡�


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230070a00">
��������


{	FwC("cg/fw/fw������Ѫ_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0230080a04">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230090a00">
���������á�����


{	FwC("cg/fw/fw������Ѫ_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0230100a04">
���ǡ���


{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230110a00">
�����ã�ȥ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��Ϊʲô�ء�
���ҽ�����¸������������ƽ����Ů�ӡ�

���������һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw������Ѫ_��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����衿
<voice name="����" class="����" src="voice/mc04/0230120a04">
������������


{	FwC("cg/fw/fw������Ѫ_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0230130a04">
�����𡭡���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230140a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	SoundPlay("@mbgm31",2000,1000,true);
	WaitKey(1500);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc04/0230150a00">
������Ϊʲô������


{	FwC("cg/fw/fw������Ѫ_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0230160a04">
����������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230170a00">
��Ϊʲô����
��û�ܾ�������


{	FwC("cg/fw/fw������Ѫ_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0230180a04">
������������


{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230190a00">
��Ϊʲô�����ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����ù���ȥ�ء�

����������֪������
��û�ܾ���������Ϊ������<RUBY text="����">û��</RUBY>�����ķ�����

������ǰ��������˵������ǰ�����ҵ����˾�
��ע����Ӧ����ɵ�ʹ��Ҳע���ˡ�
����������Ѿ�ע���Ľ�֡�

������֪���ġ�
��
�����������޲��ɼ������ʣ���ʵ���������ҵ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/0230200a00">
��Ϊʲô����


{	FwC("cg/fw/fw������Ѫ_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0230210a04">
��������ʹ��ɡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230220a00">
��ʹ�ࣿ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������������ϵĻ����Ҹе�һ������
��������ô��ת�Լ����سٶ۵�˼ά��Ҳ�޷�
���Ϊ�λ����˶��Լ�˵�����Ļ���

����ʹ�ࣿ
������û���ǻ��¡�

����Ϊ�ն�����û�����ˡ�
���ܵ��˺�������ȥ�����ģ����ǳ���������ˡ�

����Ϊ�ҹ᳹��������ս���б�նɱ�����ǡ�
��������Ϊ��������Ϊ������ߣ��ͱ�նɱ�����ǡ�

��ʹ��������ǡ�

���ն���������ʹ�ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc04/0230230a00">
���Ҳ�ʹ�ࡣ��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0230240a00">
��ʹ��ʲô�ġ�����


{	FwC("cg/fw/fw������Ѫ_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0230250a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(1000);

//����������

}

..//������ָ��
//�Υե����롡"mc04_024.nss"