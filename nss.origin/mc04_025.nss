//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_025.nss_MAIN
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

	$GameName = "mc04_026.nss";

}

scene mc04_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_024.nss"

//��Ԫ�Έ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}�\Ļ", 25000, "BLACK");
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg022_ɽ��a_03.jpg");

	CreateSE("SEL01","se��Ȼ_�L_Ұԭ01");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	Wait(2000);

	Delete("�ϱ���");
	FadeDelete("�}�\Ļ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ع�����ʱ�������ǹ���һ�ˡ�

��Ů�Ե���Ӱ�Ѿ��޼���Ѱ��
������ʧ�ˡ�

���ղ��໥�����ļ����ϣ�����������ů�����ϡ�
�����ʲôҲû�С���

����������
������һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦
	SetVolume("SEL*", 1600, 0, null);

	OnSE("se����_����_�i��04_L", 1000);

	WaitKey(1200);

	StR(1000,@0,@0,"cg/st/st����֦_ͨ��_˽��d.png");
	FadeStR(300,true);

	SoundPlay("@mbgm26",0,1000,true);
	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250010a03">
���������ˣ�
���㻹�����ֵط�������


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250020a00">
��������ξ���¡�
����û�°ɣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250030a03">
�����ǵġ��Һù���ȷ����һ�¡�
���Ͽ쳷�˰ɡ�Ҫ�Ǳ��S����ץס
�ǿɾ��鷳��Ŷ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250040a00">
���ǡ�
����Ǹ������ν�ص����ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250050a00">
����ô���������̰ɡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250060a03">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250070a00">
����ξ��
����ô�ˡ�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250080a03">
��ûʲô����
���������ӣ����ǺŲ�������ɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250090a00">
���������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250100a03">
����������
�����𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250110a00">
���ǵġ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250120a03">
����ô��������ʲô�ˣ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250130a00">
�������ˡ�
��ȫ����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250140a00">
��ȫ������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250150a03">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250160a00">
����ξ���£���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250170a03">
��û��û�¡�
�������Ǹ����������ˡ���


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250180a03">
������˵������Щ����ʱ�ˣ����ǡ�
��������ˣ��о���Щ̫��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ͨ����
	OnSE("se����_����_�i��04_L", 1000);
	WaitKey(1200);

	StL(1200,@0,@0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����衿
<voice name="����" class="����" src="voice/mc04/0250190a04">
�����������Ƕ�λ����
����û�������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0250200a04">
���⸽����Ҫ���Σ�յش��ˡ�
��Ҫ���ɵĻ�������ú�ѡ��������


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250210a00">
�������̴Ӹ��¡�
�����Ͷ�λ��û�����ˣ�ʵ���ٺò�������


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0250220a04">
���ն����˲��ǡ�
����ѽ��ѽ����Ҷ����˺�ͨ����̫���ˡ���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0250230a04">
��Ϊ�˲��˷�����������Ǿ����뿪�ɡ�
����죬��С�㣡��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250240a03">
�������š���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0250250a04">
���ն����ˣ���������ߡ�
����С�Ĳ�Ҫ��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250260a00">
����л���ģ�
���̴Ӹ��¡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0250270a04">
��ûʲôûʲô��
����������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0250280a00">
����ô�ˣ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0250290a04">
��ûʲôûʲôûʲôûʲô��


{	SetVolume("@mbgm*", 2000, 0, null);
	SetComic(@0,@0,13);
	FwC("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0250300a04">
�������ǡ�����

{	DeleteComic();
	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250310a03">
������������


{	SetComic(@0,@0,16);
	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0250320a03">
������Ī����Ī�ǡ�����

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���L�����٤����ޤ�
	ClearWaitAll(1500, 1500);


}

..//������ָ��
//�Υե����롡"mc04_026.nss"