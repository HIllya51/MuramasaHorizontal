//<continuation number="350">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_035.nss_MAIN
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
	#bg072_��Ĥǵ����������L���B_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_036.nss";

}

scene mb02_035.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mb02_034.nss"

//�����ڥ�����
//���������������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg072_��Ĥǵ����������L���B_03.jpg");
	CreateSE("SEL01","se����_����_��������_L");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SEL01",2000,1000,0,800,null,true);
	FadeDelete("�}��ܞ", 2000, true);

	SetFwC("cg/fw/fwͯ��_嶤�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350010a09">
�����������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350020a09">
������
������������������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350030a02">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350040a09">
��������޵��������ٻ���
������������֮�����������������������Ѿ�
���⸱���ġ�������ɥ��֮�ա���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350050a09">
������δ̤�Ƽ�����֮����
��ȴ��;����������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350060a09">
������������ա�����


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350070a02">
������������Ȼ��
����Ϊ���ó��ס���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350080a09">
����Ҳ��
����Ҳ������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350090a09">
�������ܵ��Ʋá�
���������ж񱨡���


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350100a09">
�������������д桭����


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350110a02">
������������


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350120a09">
���Ǻǡ���


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350130a09">
���Ǻǡ��Ǻǡ�������������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350140a02">
��������ʲô��Ц�ġ���


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350150a09">
����������
������������������������


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350160a02">
������Ц��
����ʲô��Ц�ģ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350170a09">
���ţ�����Ȼ������Ϊ�������а���
�����������塭�������Աؽ����¶������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350180a09">
�����б��������ʹ������𡭡���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350190a02">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350200a09">
����Ϊ�β�Ц��
�������Ľ�֣�����������׷����𡣡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350210a02">
�������⡭����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350220a09">
����߾��������ģ�
�����а֮������ͯ��ս������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350230a09">
��ȡ����ʤ������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350240a09">
���˽����ҵ���������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350250a02">
��������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350260a09">
��ֻ���Ժ���
��ֻ�ܳ�Ц����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350270a09">
��ֻ������������ߣ�ֻ������س�Ц����

{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350280a09">
��<RUBY text="������������">���Ǳ�������</RUBY>��
��<RUBY text="������������������">�����������ɱ���ҵ�</RUBY>
<RUBY text="����">�԰�</RUBY>!!��


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350290a02">
��������


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350300a09">
����������������
������������������!!��


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350310a02">
���������졭����


{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350320a09">
��������������������!!��


{	FwC("cg/fw/fwһ��_����b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0350330a02">
�����ұ���!!��


{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350340a09">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������夶���夶���塣�ζȤ�ͻ���̤���
	CreateSE("SEL02","se���L_����_��_�ҥå�02");
	MusicStart("SEL02",0,1000,0,1000,null,true);


	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	CreateVOICE("ͯ��","mb02/0350350a09");
	MusicStart("ͯ��",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("ͯ��");
	WaitKey($�Еr�g);

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������̨�~���ܥ����Τߡ��ƥ����ȳ�����
{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0350350a09">
���Ǻǡ��ǺǺǡ���
����������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_036.nss"