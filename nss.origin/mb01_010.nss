//<continuation number="230">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_010.nss_MAIN
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
	#bg015_�`�}·���Y_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_011.nss";

}

scene mb01_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_009.nss"

//��ҹ���`�}�Yͨ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg015_�`�}·���Y_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���դΠ�����
<voice name="����㣯���դΠ�����" class="����������" src="voice/mb01/0100010e278">
���š����Ź��Ұɡ���


{	NwC("cg/fw/nw���������.png");}
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mb01/0100020e233">
����Ź���ġ�
��ֻҪ���Ǹ����������ǡ���


{	NwC("cg/fw/nw���������.png");}
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mb01/0100030e234">
�����൱���������Ⱑ��
�����Ǻö����ء�Ǯ�������ǳԵģ���


{	NwC("cg/fw/nw���������.png");}
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mb01/0100040e235">
����Ǯ�ͺ�����
����ʯ֮���Ҳ������


{	NwC("cg/fw/nw����.png");}
//������㣯���դΠ�����
<voice name="����㣯���դΠ�����" class="����������" src="voice/mb01/0100050e278">
���⡢�����Ҽ��洫�Ĳ��롭��
��Ϊ����������ˣ���Ҫ�õ�����ȥ��Ǯ������


{	NwC("cg/fw/nw���������.png");}
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mb01/0100060e233">
��Ŷ����������
�������ɡ���������ȥ������


{	NwC("cg/fw/nw����.png");}
//������㣯���դΠ�����
<voice name="����㣯���դΠ�����" class="����������" src="voice/mb01/0100070e278">
�������Ұɣ�
�������������ҵĻ�·������


{	NwC("cg/fw/nw���������.png");}
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mb01/0100080e234">
���ٷϻ����Ͻ�����������


{	NwC("cg/fw/nw���������.png");}
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mb01/0100090e235">
��Ŷ��
������һ����ĸ��а�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	CreateSE("SE01","se���L_����_Ź��02");
	CreatePlainEX("�}��д", 500);
	CreateColorEX("�}ɫ��", 5000, "#FFFFFF");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Fade("�}��д", 0, 600, null, true);
	Wait(10);
	Fade("�}ɫ��", 100, 0, null, true);
	Shake("�}��д", 300, 3, 0, 0, 0, 1000, null, false);

	SetNwC("cg/fw/nw���������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mb01/0100100e235">
����!?��


{	NwC("cg/fw/nw���������.png");}
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mb01/0100110e234">
����������
��ι����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�
	CreateSE("SE01","se���L_����_Ź��01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(10);
	Fade("�}ɫ��", 100, 0, null, true);
	Shake("�}��д", 300, 0, 6, 0, 0, 1000, null, false);

	SetNwC("cg/fw/nw���������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mb01/0100120e233">
���㡭��
������һ�!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��Ф�
//���Фä��ꡣ
	CreateSE("SE01","se���L_����_Ź���B��01_L");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(50);
	Fade("�}ɫ��", 100, 0, null, true);
	FadeFR2("�}��д",0,600,1000,0,0,20,DxlAuto, false);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯���դΠ�����
<voice name="����㣯���դΠ�����" class="����������" src="voice/mb01/0100130e278">
��������!?
����ѽѽѽѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ�ȥ��
//��һ��
	CreateSE("SE02","se����_����_�ߤ�03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SetVolume("SE*", 2000, 0, null);
	WaitKey(2000);

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0100140a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm17",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����֪���Լ�����ô�ߵģ��ߵ��˺δ���

���ع�������һ�������Լ�̤����һ��ҹ����
�������а��۵Ķ��������ָ��ߣ�����ǰ�С�

��û��Ŀ�ꡣҲû������Ҫ�졣
��ֻ�ǣ�����ؼҶ��ѡ�

�����з��ڲ�����

�������쵰��

�����������ֻ��һ����
���Ǹ����ˡ�

���ն�������

��һ��ʼ��Ϊ���Ǹ���Ȥ�����ҷϡ�
��֮�󣬿�������������ս������̬��

����������
��˼Ľ����

�����졣
������������ˣ���ȫ���Ǵ����

������Ϊʲô����

��ǧ˼������������Ϊ��һ�仰��

��������ô������
��������ôҫ�ۡ�

����Ϊ�����﷢��һ�߹�â��

��������һ�еĴ𰸡�
���ش���������������û���ҵ������ʡ�

�������ޡ����Ǻš���
�������Ӧ����Щ�޷������ǿ���������

�������������������<RUBY text="����">��Э</RUBY>�𡪡�
��Щ��˵û�а취������Ϊ����������Ϊ����
�����ǳ��׷��𡪡�<RUBY text="����">ֻ��</RUBY>����

��������˵�������̶�Ĵ��ڣ�ȴ���޷��мܵľ޶�
�Ų��ʣ�ֻѡһЩ�ܹ���Ӯ��С�񵱶��֣��������㡣
����������֮ǰ��һ������������
����Ȼ�����Բ��������㡣

��������Щ���գ���ɫ�������ߴ����˹�â��
������ȥս����á�

���޷�ԭ�µĻ�����ȥս����

�����ֹ���ǿ��
��������ζ��޷�ȡʤ��
����Щ������޹�ϵ��

����û�п��ǹ���Щ���顣
�����������ǹ�����<RUBY text="��������������">�ھ���ս��֮��</RUBY>��

��������ò�ս���Ļ�����ȥս����
��ʤ����Ϊ��Ρ�

������ʾ�ţ�������á�
��ƾ������Ȼ��ս���������ߵ���̬��

������Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0100150a02">
��Ϊʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����˼���룬����һȦ�ֻص�ԭ�㡣
������һ����һֱ��ͬһ���ط���ת��˫�ȡ�

��
�����������ն�����ֻ�Ǹ�ɱ�˷���
���������������ƶ�ͳͳɱ����

���޷����š�
���������š�

����ȴ��ӹ���ɡ�
�������԰ף���˵�ǻ���δ��̫�����ء�

��������ʵ��
��
������Ī�����

���������Խ�һ�������Ժ�
�������������С�ȥ���ʲô�ط����³�����

��������ô����Ҳû���ܹ�ָ���Լ���

����ô����
����������

�����һ����
����������

�������ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0100160a02">
�����ǡ������һ����Ů����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ǵø��׵�<RUBY text="����">ζ��</RUBY>��
���ǵø��׵�<RUBY text="����">��Ц</RUBY>��

�����һ���˽����һ����
���˽���ΪŮ�������塣

������ˣ��;������ӱܡ�

��Ҫ�벻��ԭ�µĶ�ս����
��Ҫ׷�����塣

������Ҫ��ն�������

�����Ǹ�Ϊһ���ĵ�·���¹�â�����˶Ծ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0100170a02">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0100180a02">
�������ն�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������á�����
	CreateSE("SE01","se����_����_�᤺����01");

	SetVolume("@mbgm*", 200, 0, null);
	Wait(300);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(300);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0100190a02">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(500,true);


	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0125]
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0100200a11">
��ԭ���������ﰡ��
�����Һ��ҡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0100210a02">
�����ǡ�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0100220a11">
���������־�������𳤡��ҽоճء�
����������Ϊ�л������˵����


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0100230a02">
���������á�
����Ҳ���������㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb01_011.nss"