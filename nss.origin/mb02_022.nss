//<continuation number="1020">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_022.nss_MAIN
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
	#bg062_���ӘS�Ǵ��ֵ�_03=true;
	#bg070_���ӘS�����A�Υ۩`��_03=true;
	#bg069_���ӘS���ڎ��g_01b=true;
	#bg069_���ӘS���ڎ��g_01c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_���\=true;

	$PreGameName = $GameName;
	$GameName = "mb02_023vs.nss";

}

scene mb02_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mb02_021.nss"

//���Ƅ�
//������
//���ڲ�
//����g
	SoundPlay("@mbgm16",0,1000,true);
	PrintBG("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg062_���ӘS�Ǵ��ֵ�_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	DrawTransition("�}��ܞ", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);

	WaitKey(1000);

	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	WaitKey(1000);
	FadeBG(0,true);
	DrawTransition("�}��ܞ", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);

	WaitKey(1000);

	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(100,"bg069_���ӘS���ڎ��g_01b.jpg");
	FadeBG(0,true);
	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	WaitKey(500);

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220010b20">
���������˴����Ǽ��ޡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������ȣ������������ݡ�
�����￴���������۵Ĵ�������ͷ��̽ͣ�½Ų���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220020b20">
��������ǰ����������©����
����Ҫͨ����ػ���ѡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220030a00">
�������ˡ�
����������·���أ���


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220040b20">
���Ӿ�ͷ�Ľ������������ʵ����㡣
����ע�ⲻ�����ϲ㡣��


//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220050b20">
�������ﾶֱ�������ȣ��ڵ�������·��ת��
����ǰ����ȥ����Ŀ�ĵء���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220060a00">
����������
��Ҳ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��Ҳ����˵���ǳ�ð�ա�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220070a02">
��ι����̽��
���Ǹ����䣬����߿�ȥ���ļ䣿��


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220080b20">
��������
�����롭��Ӧ�������Ϸ�����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220090a02">
���ն�������
���ɴ�<RUBY text="��������">ֱ��ͻ��</RUBY>�ɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220100a00">
��������


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220110b20">
��������


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220120a00">
��������һ�а�����


{	FwC("cg/fw/fw����_�@��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220130b20">
�����������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220140a00">
�����������ġ�
������̾��룬����Ҳ��������һ����ɧ�ҵ�
���롣��


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220150b20">
������Ŷ��
��������Ǿ����˵Ļ����Ҳ�����ֹ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220160a00">
���������������ǡ�
������ذɡ���


{
//���ӣţ��̄���Ͷ������������á��K�˴������ʤ�
	CreateSE("SE01","se���L_����_�ʥ���Ͷ��01");
	MusicStart("SE01",0,500,0,1000,null,false);
	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220170b20">
���õġ�����


{
//���ӣţ��̄����̤��������Ȥ��á��K�˴������ʤ�
	CreateSE("SE01","se���L_����_�ʥ���Ͷ��02");
	MusicStart("SE01",0,800,0,1000,null,false);
	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220180a02">
���������߰ɣ��ն�������
������������װ�׵İɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220190a00">
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220200a02">
���ն���������


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0220210b20">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220220a02">
��������
��ι����Ҫɵվ��ʲôʱ�򰡡���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220230a02">
���쳷������


{	SetVolume("@mbgm*", 200, 0, null);
	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220240a00">
��һ�������ص����ȣ���


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220250a02">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������Ĥ���һ˲�ۥ磻�ȥ����ȤϤ����뤬��𩡩
//���Ȥʤä���냇�ݤ����ʤ��Τǡ��ã��ϤϷǳ��Ƥ�
//���餤�������꤫��
//���������������_���\
//�����\��Ҫ����˥ե�᥿��˥󥸥㡣
//�룺��3d���\_����_ͨ�����ʤɤ�ʹ�ä��Ƥ���������09/14��
	#av_���\=true;

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se�ճ�_����_�������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 1500, "#FFFFFF");
	OnBG(100,"bg069_���ӘS���ڎ��g_01c.jpg");
	FadeBG(0,true);

	CreateTextureEX("�}���z��", 900, Center, InBottom, "cg/st/3d���\_����_ͨ��.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d���\_����_�i��.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d���\_����_���L.png");
	CreateTextureEX("�}���z��", 800, Center, InBottom, "cg/st/3d���\_����_�i��b.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d���\_����_ͨ��b.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d���\_����_ͨ��b.png");

	SetVertex("�}���z*", Center, bottom);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 970, 970, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 900, 900, null, true);


	Move("�}���z��", 0, @-420, @0, null, true);
	Move("�}���z��", 0, @-180, @0, null, true);
	Move("�}���z��", 0, @-10, @0, null, true);
	Move("�}���z��", 0, @120, @0, null, true);
	Move("�}���z��", 0, @360, @0, null, true);
	Move("�}���z��", 0, @520, @0, null, true);

	Request("�}���z*", Smoothing);

	FadeDelete("�}ɫ��", 1000, true);

	OnSE("se���L_�|��_�}��������01",1000);
	OnSE("se���L_����_������03",1000);
	OnSE("se���L_����_�z_̤���z��01",1000);

	Fade("�}���z*", 800, 1000, null, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ˡ�һ�ж����ˡ�
�������ܰ�Χ�����ߡ������ߡ������ߡ�

������������İ�Χ���ơ�
��ˮй��ͨ�����޿����ӵķ�϶��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220260a02">
��ʲ������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220270a01">
��������ô��!?
����ʱ!!��


{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0220280b37">
����Ϊ����˭������ӵ�е�����̽�鼼���Ǵ�
Ӣ�������֮���𣿡��������ţ�����ʷ��
ǰ�������¼�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220290a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������霔�

	CreateColorEX("�}ɫ100", 999, "BLACK");

	StR(1000, @0, @0,"cg/st/st��霔�_ͨ��_˽��.png");

	Fade("�}ɫ100", 500, 200, null, false);
	FadeStR(500,true);

	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fw��霔�_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0220300b37">
��һ�ɺ��ԡ�����<RUBY text="����">�ҵ�</RUBY>�Թš���
����֮ʱ��Ϊ�ƻ�ͬ�����ߵ�̽����о�
�����ġ�
��Ϊ����ª����������������֮�С���


//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0220310b37">
��Ϊ�˴���<RUBY text="����">����</RUBY>�������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220320a00">
��������ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��������ʱ�Ĺ�����ʿ��
����������̨�ϣ���������ͯ�ĵġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0220330b37">
����Ȼ��Ҳ�����Գ����Ӣ������ֽ�
����ƽ��
��ֻҪ�����ж�������ƭ�����еĺ���
��̽�⡭����㱾�»����еġ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220340a01">
������������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/0220350b40">
���š�
�����˵��������ʦ��˵������ɽ��ұһ
�������о�����֮��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220360a01">
����˵������û�õļһ��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220370a00">
����������û���ʸ�ָ�����ˣ�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/0220380b40">
���ߣ����ˡ�
����Դ�û��Ȥ����


//�����ڡ�
<voice name="����" class="����" src="voice/mb02/0220390b40">
�����Ų���Ҳ���˵�ˣ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220400a01">
�����ˡ�
���ҶԴ�û��Ȥ����


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220410a09">
�����������˳Ծ��ء�
����������������Ϊ�������ţ����ͷ�����׼��
���󰡡���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220420a09">
��û�뵽�����ǳ��н���֮�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͯ��
	StL(1000, @0, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220430a02">
���������У���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220440a00">
���źӹ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������ͯ�ġ�����ȻҲ�ڡ�
�������ֳǱ����֧���ߡ�����˳ƺ����ǲ��ܡ�
��Ϊ�����Թ�Ȼ�����Գ�Ϊ�������ǿ���֮ɮ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mb02/0220450a00">
�������ʾ���Ρ���


{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220460a09">
������ô�ʵĻ������ҵȿɾͳ����ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220470a00">
��Ϊ�Σ���


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220480a09">
���ǺǺǣ�
����Ϊ��˵�����ǲ��ó�����֮��������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220490a00">
����������̶�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���������˶�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_嶤�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220500a09">
���������������Ҳ���п�ġ�
��������и������ж�֮�ˡ���


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220510a09">
���׵�����������ͷ�ۡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����ɮ����΢΢������

{	CreateSE("SE01","se����_�n��_ܞ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
��վ����ʱ������Ůʷ��Ȼ���£�
������һ�̵ȴ��Ѿá�
�������������޵ֿ��ص��¡�

���ɾ���������һ�ѿ��ޡ�
��ֻ���ǵ��������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220520a09">
����Ȼ���ڴ˿�����������Ҳ̫<RUBY text="����">��ʵ</RUBY>�˰ɡ�
�������ĺ��˲��ʺ�ı�°�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220530a00">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220540a09">
��ֻҪŪ�����ǵı�����Ҳ�Ͳ��Ѳ²����ǵ�
��ͼ��
���������ǡ�����׼�˰��ϵ��°ɣ���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220550a09">
��Ϯ�����£�ֻҪ������һ���ˣ���ôĻ��֮
�о�û���ҵ�����֮���ˡ��������������
һ��<RUBY text="����">˵��</RUBY>�����ʨ�Ӻ����Ҳ����
���ָ�𣬵������̬��������Ը������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220560a00">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220570a09">
����ô������»ᱻϮ�������Ǻ�ʱ�ء��϶�
��ѡ���������֮ʱ����������ϯ�ոս�����
ʱ��ɣ���

{	FwC("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220580a09">
������������
��������Ȼ˵����ô�����ûʣ���ʵҲûʲô
��Ļ���԰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��˵�ɣ�ͯ�ĸ�ɮݸ��һЦ��
���������óϷ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mb02/0220590a00">
���������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ƺ�ԭ���Ͳ�������ʤ�ε�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220600a09">
�����ǣ�����һ������������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220610a00">
����������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220620a09">
�����ðڳ�һ���ɻ�ı��顣
����Ӧ��֪���Һ��²�������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220630a09">
�����ǵ����Ǻ��ˣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220640a00">
�������Լ����������޿ɷ�档
�����Ƿ��ţ����˲����������Ʋ����𣿡�


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220650a09">
����С�������������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220660a00">
���޿ɷ�档��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220670a09">
�����԰ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220680a00">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220690a09">
��С������֮��û�������������ˡ�
����û�м������������С���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220700a09">
�����ҡ���
�����ǲ����ǻ���������޵�����ɣ���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220710a02">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220720a09">
��˵�ÿɶԣ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220730a00">
���޿ɷ�桭����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220740a09">
���Ǻðɡ�
������������Ϊ��������һ�����Է�������
��������


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0220750b37">
�����ܿ��ʵķ�²������¶һ�����ܡ�
  �ź��н����ˡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220760a09">
��ŶӴ��ŶӴ��
��ԭ����ˣ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220770a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220780a01">
��ʲô����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220790a00">
�����⸽���ҳ���ǿ�ų�֮���ڣ�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220800a01">
�������������ס���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220810a09">
��ƶɮ��ª�����ˡ�
���ߺߣ�������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220820a09">
����������ߵ�С��Ӵ��
�����д������ܵļ�ֵŶ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ŭ��c.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220830a02">
��������������<RUBY text="����">����</RUBY>���۾����ң�
��������С���


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220840a09">
����������
��̫�����ˣ�̫���ˡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220850a09">
����а��ķ߿���������������������ˡ�
������ɫ�ɲ͡�
��������Ÿմ����ã������ǽ�����ȫ����
�巳������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220860a02">
������������˵С����!!��


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220870a09">
���ٺ١�������������ŭ����
����ѽ�����ǿ�ϧ�ء�Ҫ��ƾ�����ŭ��Ϯ��
��̨�Ļ����ǿɾ�ʡ�¶����ء���


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220880a02">
����Ҳ�������𡭡���
������쵰���������������<RUBY text="��������">��������</RUBY>����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0220890a09">
�����Բ��ԣ�ƶɮ��������һ��˫����ˡ�
���������ǲ��ڳ�����Ҳ������������ô����
�̵�ס�أ�����ô��Ȥ�����鰡����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220900a01">
���������ҵ��ˡ�����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220910a00">
���ܽ���˿���������𣿣�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220920a01">
�����ԡ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220930a00">
���ܺá����ж���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220940a01">
��Ҫ�ݻ��𣿡�


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220950a00">
�����ǡ�<RUBY text="����">����</RUBY>�ų���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0220960a01">
�����ס���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220970a02">
���������С�
��������ˡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0220980a00">
��һ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0220990a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0221000a00">
�������ˡ�
������װ�ף������ӳ�ȥ����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0221010a02">
������������


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/0221020b37">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������
//���餬��늡��Ӥ��`��
//���������^��늡�һ�Ť˸��롣�Ф�`��
//����霤�
//�����ɩ`���¤η��Ǳ�������e��

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se����_늓�_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	CreateTextureEX("�}����100", 5100, Center, Middle, "cg/ef/ef045_���ѩ`��.jpg");

	Fade("�}ɫ��", 200, 800, null, true);
	Fade("�}ɫ��", 200, 0, null, true);
	Wait(100);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(100);
	CreateSE("SE02","se�ճ�_����_�����Ɠp");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}ɫ�\", 0, 1000, null, true);
	Fade("�}����100", 0, 1000, null, true);
	Wait(50);
	Fade("�}����100", 0, 0, null, true);
	Wait(50);
	Fade("�}����100", 0, 1000, null, true);
	Wait(50);
	Fade("�}����100", 0, 0, null, true);
	Wait(100);
	CreateSE("SE03","se���L_�Ɖ�_���k01");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���������鼸��ͬʱ��ȴ�׶��Եط����ˡ�

�����������������������ը�ѡ�
�������ٴ�����ڰ���

�����������ˣ���������˵����С��һ����
������һʱ������ţ�Ҳ�����ϻָ��Ӿ���

{	MusicStart("SE03",0,1000,0,1000,null,false);}
����������֪���﷢����ը�����´��ҡ�Ρ������ֻ�
�Ҳ���һʱ֮����ܽ���ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);


}

..//������ָ��
//�Υե����롡"mb02_023vs.nss"