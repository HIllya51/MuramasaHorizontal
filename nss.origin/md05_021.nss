//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_021.nss_MAIN
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
	#bg109_������g=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_022.nss";

}

scene md05_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_020vs.nss"


//�������¡���˥��`չ�_�r�ϸ߶�Ӌ�򣰤ǹ̶�������
//�����g�ʤΤǡ�
//���\


//�o���Τۤ��������� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("���\", 90, "BLACK");
	CreateTextureSP("����", 80, @0, @0, "cg/ev/ev238_�����̫ꖤ��¤Ƚ���_b.jpg");


//	CreateTextureSP("�����ԥå�", 10000, @0, @0, "cg/cp/mura/�ե�`��.png");
//	Zoom("�����ԥå�", 0, 950, 950, null, true);
//	Move("�����ԥå�", 0, @-50, @-50, null, true);





	FadeDelete("�ϱ���",1500,true);
//	FadeDelete("�\",1500,true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������

��������������������������������������

�����塭�����ȡ�

������ȼ��һ�㡣

������ΪƤ���Ķ����ѱ����á�

������Ҳ��ʹ�࡭��

�����������

���������

���ҡ�������������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ա��Ĥ�����ʤ������

	CreateTextureEX("����", 900, 0, @0, "cg/bg/bg204_�����ر���_04.jpg");
	CreateTextureEX("����2", 900, 0, @0, "cg/bg/bg204_�����ر���_04.jpg");

//	CreateTextureEXadd("����3", 900, 0, @-200, "cg/bg/bg204_�����ر���_04.jpg");
//	CreateTextureEXadd("����4", 900, 0, @-200, "cg/bg/bg204_�����ر���_04.jpg");
//	Zoom("����3", 0, 1100, 1100, null, true);
//	Zoom("����4", 0, 1100, 1100, null, true);
//	Rotate("����3", 0, @0, @180, @0, null,true);
//	Rotate("����4", 0, @0, @180, @0, null,true);


//	Move("����", 20000, @-400, @0, null, false);
//	Zoom("����", 0, 1500, 1500, null, false);

	CreateSCR1("@����","@����2",40000,-300,@0);
//	CreateSCR2("@����3","@����4",40000,-800,@0);

	Wait(2000);
//	Fade("����", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ڰ���

����ڣ��谵��

����Ȼ�ǵ�����

�����ǣ�ȴ��Щ�����⡭��

���е���ǹ⡣

����������ȫ�ĺڰ���

�����������ǣ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������g��Ư������
//��������K_�T��_ͨ���򣱣������������Ȼ�ܞ������
//����ʾ������Ǥɤ��ˤⲻ��Ȼ�ʤ褦�ʤ���Ҏ����


//������äݤ����Ƥߤ褦�Ȥ�������ɥ������� inc�Ѿ�

	CreateTextureEX("muramasa", 1000, @-100, @-250, "cg/st/3d������K_�T��_ͨ��5.png");
	Rotate("muramasa", 0, @0, @0, @120, null, true);
	Request("muramasa", Smoothing);


	Move("muramasa", 13000, @100, @0, AxlDxl, false);
	Fade("muramasa", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md05/0210010a01">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0210020a00">
�����������𣿣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������������������
����ʹ��ˣ�˼��Ҳ�����š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md05/0210030a01">
���š�
��������Σ���ֻ����Ӧ��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0210040a00">
����Ȼ��ʹ����
�������������޷�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ȷ���˼���������
��û����ȫ����֮��������Ҳû�в�ʹ���������ж�
֮����

���ر����ؿڸ����������ء�
���عǺ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md05/0210050a01">
����Ȼ�ڱ��ߵ���ǰһ���ſ��˴������ϡ���
��Ҳ������ȫ��ס����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0210060a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������Ϊ�д������ϵķ���Ч������ֻ��������
�̶ȵ��˰ɡ�
����ʹ������Ҳ����֡���һ�߾��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md05/0210070a01">
�������أ���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0210080a00">
���ţ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0210090a01">
���������ߣ��ټ��ϴ������������иղŵĿ�
��Ť��Ҳ�о����ǹ��죬�����ƺ����ߵ�
�˺�Զ�ĵط�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0210100a00">
���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0210110a01">
�����š��������Ǹ����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0210120a00">
���Ǹ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���������ڽ��д���ָʾ�ķ���ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("���\", 0, true);
	Fade("����*", 2000, 0, null, false);
	Fade("muramasa", 2000, 0, null, true);
	Delete("����*");
	Delete("muramasa");


}

..//������ָ��
//�Υե����롡"md05_022.nss"

