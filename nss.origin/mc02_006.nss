//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_006.nss_MAIN
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

	$GameName = "mc02_007.nss";

}

scene mc02_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_002.nss"


//���ե��`�ɥ���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	OnBG(11, "bg030_�ǣȣѱO������_01.jpg");
	FadeBG(500, false);

	SoundPlay("@mbgm35",0,1000,true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1000,true);

	WaitKey(1000);

//�������㡣�ɥ��_��
	OnSE("se�ճ�_����_���_��01",1000);

//������֦܊����Ԫ�������ǈ�

	StL(1000, @-500, @0, "cg/st/st����֦_ͨ��_�Ʒ�c.png");
	Move("@StL*", 300, @500, @0, Dxl1, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0060010a03">
������ѽ���������ˡ�
����������������û���̹�𡫣���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ϥ��龰���������}���̩`�äȡ����򤭤�

	StR(1000, @0, @-550, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(0, false);
	Rotate("@StR*", 0, @0, @180, @180, null, true);
	Move("@StR*", 100, @0, @50, Axl1, true);
	WaitKey(1000);
	Move("@StR*", 150, @0, @-10, Axl1, true);
	Move("@StR*", 1000, @0, @250, Axl1, false);

	Shake("@StL*", 1000, 5, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw����֦_����å�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0060020a03">
��ѽ����������������������������!!��

{	OnFwC("cg/fw/fw����_ͨ��a.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//��������
<voice name="����" class="����" src="voice/mc02/0060030a00">
����ξ���¡�����

{	StCL(1000, @-70, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStCL(300, false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0060040a04">
����ѽѽ�ն����ˡ�
��û�뵽��������컨��¶������
����λ�Ѳ�֮��ѽ���ǺǺǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0060050a04">
�����ԣ�������أ���

{	OnFwC("cg/fw/fw����_�a��.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//��������
<voice name="����" class="����" src="voice/mc02/0060060a00">
�������Ļ������Ǵ�����Ϣ�ġ���
����ȴ�侲����������������ƽʱ�ھ�����
����һ�㣬�˶��������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0060070a04">
��ƽʱ����

{	OnFwC("cg/fw/fw����_Ц�a.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//��������
<voice name="����" class="����" src="voice/mc02/0060080a00">
��������ϸ�ڡ���


{	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0060090a03">
����Ų����⡪����
�������˶���ʱ�򣬾ͻᵹ����
�컨�����𣿡�ƽʱ������!?��


{	OnFwC("cg/fw/fw����_Ц�b.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//��������
<voice name="����" class="����" src="voice/mc02/0060100a00">
�������ڽ���Ŷ����������ΪѪҺѭ��
ͨ���ˡ���


{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0060110a03">
����û������Щ����

{	OnFwC("cg/fw/fw����_����.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//��������
<voice name="����" class="����" src="voice/mc02/0060120a00">
�����һ��ܶ����Ⱥ͸�������


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0060130a03">
���Ҹо��Լ��������ں͵����˶Ի�!!��


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�룺�����������ϣ���090930��
//�����衿
<voice name="����" class="����" src="voice/mc02/0060140a04">
����С�����侲��
���ѵ��������ˣ��������Ѿ�����̵�����
��ʹ���˴��컨��������������Ҳ���ܻ����𣡡�


{	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0060150a03">
����ʲô�����Ҹ���û���ܹ�������
����ԵĽ�������

{	DeleteStL(300, false);
	DeleteStCL(300, false);}

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������
	OnSE("se�ճ�_����_���_��01",1000);
	WaitKey(1000);
	
	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���ܥ������ե��åĥϥץ˥�D�D��What's happening?
//������㣯�ǣȣ�Ҋ���꡿
<voice name="����㣯�ǣȣ�Ҋ����" class="����������" src="voice/mc02/0060160e000">
����ξ���£��������¡�����


//���ܥ������ޥ����`�`�`�`�`�`��!!��
//������㣯�ǣȣ�Ҋ���꡿
<voice name="����㣯�ǣȣ�Ҋ����" class="����������" src="voice/mc02/0060170e000">
����ɶ����������������������!?��

{	OnFwC("cg/fw/fw����_ͨ��a.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//��������
<voice name="����" class="����" src="voice/mc02/0060180a00">
��������
������������������𣿡�

{	OnFwC("cg/fw/fw����_�a��.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//��������
<voice name="����" class="����" src="voice/mc02/0060190a00">
���ղ����Ǿ������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0060200a04">
������������Ҳ��Ȼ�ھ������ˡ���
��ι������������������������С���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ΤΥե�����Ǥ�ͬ��BGM��ʹ������ֹͣ���Ƥ��ޤ��� inc�Ѿ�
//�����`���Ф�

	ClearFadeAll(1000, true);
}

..//������ָ��
//�Υե����롡"mc02_007.nss"