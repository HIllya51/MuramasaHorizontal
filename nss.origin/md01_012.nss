//<continuation number="470">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_012.nss_MAIN
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
	#bg011_��������_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_013.nss";

}

scene md01_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_011.nss"

	SoundPlay("@mbgm16",0,1000,true);
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg011_��������_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md01/0120010a00">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120020a00">
���������𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120030a01">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������Ҋ��
	PrintGO("�ϱ���", 25000);
	CreateTextureSP("�}�ݱ���", 4000, -43, -100, "cg/bg/resize/bg011_��������_01am.jpg");
	CreateTextureSP("�}�����}", 4100, -220, -400, "cg/st/3d����֩��_���.png");

	Move("�}�ݱ���", 600, @0, 0, DxlAuto, false);

	Zoom("�}�����}", 0, 750, 750, null, false);
	Rotate("�}�����}", 0, @0, @0, @180, null,false);
	Request("�}�����}", Smoothing);
	Move("�}�����}", 600, @0, @100, DxlAuto, false);

	FadeDelete("�ϱ���", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������أ�Ӱ���������컨�塣
����֩�뱳���ţ��������ҵ�ͷ���ϡ�

���ó�Ǳ��Ǳ�еĽ��еĵ����������ޱ���ͻ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md01/0120040a01">
�����Ѵ�����������������
��Ѱ�����Ǻŵ���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120050a00">
����ô������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120060a01">
����֪�����е�΢�����
�������У��ֺ����Ǵ������

//��������
<voice name="����" class="��������" src="voice/md01/0120070a01">
��˵��������������ʲô�ط������ӽ�����
�����£���ȥѲ�ز�̽һ�Ρ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120080a00">
����������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120090a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120100a01">
����
������ʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120110a00">
��ûʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������װ���ϣ�����������ɳ��
������Ϊ�˱��˶�Ŀ����Ū��ġ�

����Ϊ������Ľ��У�
װ���ŶԸ����︽�ż������������ܡ�
�����̶ֳȵ����ۣ�û�������ɨ�ı�Ҫ��

�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md01/0120120a00">
���������ߵĻ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������ͳ�����ߣ���������������װ������
�����ᣬ��˼ĺ��ؽ���ά������������Ȼ�ġ�

������ս��������֪�����˻��ں�ʱ���֡�
���ȵ�����Ϯ��Ϊ�Լ�ƽʱ�����费�׶��㣬�Ǿ�̫���ˡ�

����Ȼ�����ڲſ��ǵ��������
������Ȼ�����������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md01/0120130a00">
����������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120140a01">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ꤿ��
	OnBG(100,"bg011_��������_01a.jpg");
	FadeBG(0,true);
	CreateTextureEX("�}������", 5000, Center, Middle, "cg/bg/bg011_��������_01a.jpg");
	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}��*", 300, @0, @-100, DxlAuto, true);
	Fade("�}������", 300, 1000, null, true);

	Delete("�}��*");
	Wait(1);
	Delete("�}������");

	CreateSE("SE02","se����_����_�z�i��04");
	StL(1000, @-30, @200,"cg/st/3d����֩��_���.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md01/0120150a01">
����ô�ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120160a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120170a01">
������������

//��������
<voice name="����" class="��������" src="voice/md01/0120180a01">
���ȵȡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣ãǣ�
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ã��ֱ��и�Ĩ����
�����ְ���ȡ�˹��������ְѴ���������ߡ�

���ู�ϵ����տ���ȥ�����ء�
�����ȴ��Ǹ�����ʼ���á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md01/0120190a01">
��������

{	SetVolume("@mbgm*", 2000, 0, null);}
//��������
<voice name="����" class="��������" src="voice/md01/0120200a01">
����������������������������������������
����������������������������������������
����������������������������������������
����������������������������������������

{	SetComic(@0,@0,17);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120210a01">
��ѽ��������������������!!��

{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120220a00">
��������ô�ˡ���

{	SoundPlay("@mbgm22",0,1000,true);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120230a01">
��ʲô��ô�ˣ�
���㡢�㡢�����Ķ���!!��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120240a00">
�����װ�ס�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120250a01">
��ѽ������
���������ϲ�ðɣ���̬����

{//���Ф��Ф���
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	CreateSE("SE01","se�M��_���ߥ���_֩����������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120260a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���ұ�����������֩���������������˰ɡ���
�������Ƿǳ���̬�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�z�i��03",500);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md01/0120270a01">
���ſ��ҡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120280a00">
���侲�㡣��

{	OnSE("se����_����_�z�i��03",750);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120290a01">
���ȵȣ����������Ļ�����
���޲���ȥ�ˣ���

//��������
<voice name="����" class="��������" src="voice/md01/0120300a01">
���𡢲�Ҫ�������ﲻ�У�
�������Ҷ��ӣ���

//��������
<voice name="����" class="��������" src="voice/md01/0120310a01">
������ĸ�װ���������

{	FwC("cg/fw/fw��������_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120320a00">
����˵�侲������
��Ҫ�����쳣������ˣ���

{	OnSE("se����_����_�z�i��03",1000);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0120330a01">
�������ˡ�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�Ф󡣥ɥ�ߵ��
	CreateSE("SE01","se����_����_ߵ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/md01/0120340e038">
�����İ˺ţ��ڳ�ʲô?!
���ҿ����ˣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120350a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ʧ
//���Ф���
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se�ճ�_����_�Ϊz���_��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DeleteStA(0,true);
	StR(1000, @0, @0,"cg/st/st����_ͨ��_����.png");
	FadeStR(0,true);
	DrawDelete("�}ɫ�\", 300, 100, "blind_01_00_1", true);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/md01/0120360e038">
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120370a00">
������������

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/md01/0120380e038">
����ô��
������ֵ������ǣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120390a00">
��ֻ������������Ϸ���ˣ����ش��ˡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/md01/0120400e038">
������ʲô��Ϸ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120410a00">
������һ�����֩����������Խ�����

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/md01/0120420e038">
������������������������������������

//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/md01/0120430e038">
�������⡭������������
���������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���
//���ǡ��⤦һ�Ȥ�����
	CreateSE("SE01","se�ճ�_����_���_��07");
	$�Еr�g=RemainTime("SE01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", $�Еr�g, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);
	WaitKey(500);
	DeleteStA(0,true);
	CreateSE("SE01","se�ճ�_����_�Ϊz���_��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}ɫ�\", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md01/0120440a00">
��������ô�ˣ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/md01/0120450e038">
���ǡ��Ǹ�ѽ���������֧�ֲ�ס��ʱ��
����̸̸�İɡ�
����Ȼ���ܲ������ܴ������
���������߻��ǿ��Եġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0120460a00">
����л���Ĺ��ġ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ء�
<voice name="����㣯����" class="����������" src="voice/md01/0120470e038">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"md01_013.nss"