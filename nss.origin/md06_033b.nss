//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_033b.nss_MAIN
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
	#ev139_�y�򚢺�_a=true;
	#ev106_���w��Ҋ�¤�����_d=true;
	#bg023_��Դ̫�μ�_03a=true;
	#bg037_����������`��a_01=true;
	#bg043_���΍uɽ��_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_034.nss";

}

scene md06_033b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_033.nss"

//�񡭡������ʤ�
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\��", 1000, "BLACK");

	SetVolume("@m*", 100, 0, null);
	Delete("�ϱ���");

//BGM�ʤ��Ϥ虜�ȤǤ��� inc�Ѿ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ޡ�

����޶�ɱ��

�����Ǹ���

�����������������ɱ��

����ɱ����Ҫ����������

������������Ȼ��

����ˣ�ɱ������

����ˣ�<k>
����ˣ�<k>
��
��ֻ�ǣ�

���ң�
  �����˭��ȥ��������������Ȼ�ĸ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺���N����ӛ��
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 15000, @0, @0, "cg/ev/ev139_�y�򚢺�_a.jpg");


	EfRecoIn2(300);
	
	WaitKey(1000);
	
	EfRecoIn1(18000,600);

	Delete("�}����*");
	CreateTextureSP("�}����100", 15000, @0, @0, "cg/ev/ev106_���w��Ҋ�¤�����_d.jpg");


	EfRecoIn2(300);

	WaitKey(1000);
	
	EfRecoIn1(18000,600);

	Delete("�}����*");
	CreateTextureSP("�}����100", 15000, @0, @0, "cg/bg/bg023_��Դ̫�μ�_03a.jpg");
	StL(16000, @0, @0, "cg/st/st�դ�_ͨ��_˽��.png");
	StR(16100, @0, @0, "cg/st/st�դ�_ͨ��_˽��.png");
	FadeStA(0, true);


	EfRecoIn2(300);

	WaitKey(1000);
	
	EfRecoIn1(18000,600);

	Delete("�}����*");
	DeleteStA(0,true);
	CreateTextureSP("�}����100", 15000, @0, @0, "cg/bg/bg037_����������`��a_01.jpg");
	StL(16000, @0, @0, "cg/st/st��·_ͨ��_˽��.png");
	StR(16100, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	FadeStA(0, true);


	EfRecoIn2(300);

	WaitKey(1000);


	EfRecoIn1(18000,600);

	Delete("�}����*");
	DeleteStA(0,true);
	CreateTextureSP("�}����100", 15000, @0, @0, "cg/bg/bg043_���΍uɽ��_03.jpg");
	StR(16000, @0, @0, "cg/st/st���`���å�_ͨ��_�Ʒ�a.png");
	FadeStR(0, true);


	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoOut1(300);

	DeleteStA(0,true);
	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������˭��һ��ɱ����
��Ϊ��Щ���߶���ʹ���ˣ�Ӧ�������������ļ����ɡ�

�����ж����ˣ�ϣ�������ֱ�����

����ȴ��һ�ˣ���������Ը��
���Ҿ�����������ġ�

���޷������������Ѱ���Լ�ȴ��Ϊ����
��ɱ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md06/033b0010a00">
����ɱ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����˼ڤ�롣
�����ߴ�����������ˣ���ʵ�ɺޡ�

��Ȼ������ɱ�˴����ģ�<RUBY text="��������">Ψ�д���</RUBY>��

����ĳ����������˵��ѩ�����������ֻ�Ǹ���
������ɱ�˵��ң�����Ҫ���ұ�����

���Ҳ�������

�����ҵ���������ˣ�ɱ���˴�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md06/033b0020a00">
��ɱ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������˼����
����ɱ��������ˡ�

������Ϊ���������������֮�֣�

��ɱ��
��ɱ������

�������Ƿǡ�
���ұ������Ǹ���Ѫ��ɱ��ħ��

������Ů���ٶ�ɱ��
���µ���񣬾͸�û�����ɲ�ɱ����
�������䶼ռ�ط�����å��

��ɱ������
�������ɻ��ɱ������

��һ�������

��ɱ������<k>
�����ǡ�<k>
��
����ȥ����֮����ɱ�ˡ���

����Ϊ�˷���ֻ���

����Ϊ����ɱ����ǰһ�ˣ��Ϳ��Է�������ġ�
������δȻ��

���������Բſ���ɱ�䡣

�������۷ɡ�<k>ʀ���֡�<k>
����·׿��<k>������������������ˡ�<k>
��
{
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 15000, @0, @0, "cg/ev/ev256_�y�ǺŤ�����_b.jpg");
	EfRecoIn2(300);
}
������Ȼ��

�����Բ�ȥ��ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md06/033b0030a00">
���ǰ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/033b0040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������Ǹ�ԭ�㡪��
�����Լ�ѡ��ĵ�·��

��<RUBY text="������������������">����ɱ����Ѱ���ƽ</RUBY>��
����������˵���

�������ڣ�����Σ�

��ɱ��������ˣ�����˭�ܻ�ȣ�

��˭��û�����ȡ�

��ֻ�������ҵĸ����ġ�

������������˻�Ҫ��ɱ��

���ң�<k>
����ֻΪ��������֮����<k>
��Ϊ��������<k>
������ȡ������

����ȥ��ȡ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md06/033b0050a00">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/033b0060a00">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ʯ������¤�
//����������������

	OnSE("se���L_����_Ұ̫�����01", 1000);

	WaitKey(1000);

	OnSE("se����_�n��_ܞ��05", 1000);

	WaitKey(1000);

	ClearWaitAll(1500, 1000);

}

..//������ָ��
//�Υե����롡"md06_034.nss"