//<continuation number="140">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_006.nss_MAIN
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
	#bg034_���Lլ����ga_01=true;
	#ev158_һ��������=true;
	#bg072_��Ĥǵ����������L���B_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_007.nss";

}

scene mb03_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_005.nss"

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureEX("�}��ѣ��", 500, Center, Middle, "cg/bg/bg034_���Lլ����ga_01.jpg");
	SetShade("�}��ѣ��", HEAVY);
	OnBG(100,"bg034_���Lլ����ga_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm27",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������Ǵն������ļҡ������𳤵Ĺ�ۡס����
�о������������ʺ������е����塣
�����ס���Լ��Ǽ���˵Ĺ�Ԣ�����˵Ļָ��ٶ�Ҳ��
�������

������ø�л�ն������ɣ������İ������Ҳ���������
��Ϣ��
�����ø�л��ҵ����ˡ��Լ���Ȼ������ȴ�ǳ��ܵ���
Ӷ�ˣ��ǽ�����ɡ�

��ÿ�ζ������嶼��ǣ�������˿ڣ���ʹ���ӹ�ȫ��
����Щ������ν��
�������ͥԺ��ֲ�����������˿�����

���������԰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0060010a02">
�������������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������������ĳɹ�����ǰ����ʹ���С�¾������ˮ
һ�㡣Ҫ��Զ�ж�Զ��
�����ɵ�����������±�����ȴ�ˡ�

���ܾ��ý�������������
������ֽŶ����е������Ļ����������⸽�����ⱼ�ܡ�
�ú÷�йһ���ˡ�����ֱ�������糿�����ѵ�������˵��
����������ⲽ���Ǽ��ޡ�

��Ȼ���ⲽҲ�����ᷳ��û�а취��ֻ�����š�
���������в�ס���������������ȭͷ���ſ�������Ե��
���쳤˫������������

��������ּ����������˿���ֻ��������Ǿ�ֹ���ɰɡ�
�������ǵ�Ȼ�ġ�

����Ϊ�ң������ˡ�
���Ҵ�����������Ĵ󹫷�֮һ������ͯ�ġ�

�����Ѿ������ǿ�������û��ʵ����ͽ������֮���ˡ�
����Ϊ�����ս����<RUBY text="��������">����ս��</RUBY>������
ͦ��������ô˵�ˡ�

����Ϊ�������֣�����а��
����Ȼֻ��һ���ˡ��ܲ����˵�һ���ˡ�ֻҪ�Ǻ�����
������ר�����һ�գ���Բ�С��������ͬ�������˾�
һ���᲻�����ࡣ

��������ֹ����һ�еķ�������
��
��˼���ˣ��Ҿ͸��ˣ��Ժ���

�������Լ����ڲ����ڸ��׵Ľ̻塣
������˵����Ӧ����а�񣬾���������������ԭ�¡�

����ν���壬��Ϊ����ȷ������֮�������˵�ԭ����
������
����νа�������������֮����˵������롣��а
����

��ֻ����а�񣬲�����ȷ����������䡣
�����Զ�����������񡣷����ǣ�����ս��������
�������ǡ�

��������ݶ������޿ɿ��ܵ����ɣ�Ҳ�����ɿ�ˡ��
����������Ҫ�񡱵Ĵ��ڡ�һ������а��϶�����֮
������

������սʤа������첻�����١�
������������˻�ԴԴ���ϡ�

��������������
����񡣲���Ե�ɡ�һ�С�

����������������ͯ�����֣�Ϊ����ж�Ļ쵰��
����Ӧ���ϳ������䣬������������ĵ�����

������һ����佱�ҵġ�
��һ����������úá�<k>
��
��������ʱ������һ�γͶ��ʱ��һ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���̤���åɥ�����
//����åɥ���
	CreateSE("SE01","se����_�Υ���01");
	MusicStart("SE01",0,500,0,1250,null,false);
	CreateColorEX("�}ɫ��", 5000, "#CC0000");
	Fade("�}ɫ��", 200, 850, null, false);
	Fade("�}��ѣ��", 200, 1000, null, true);
	Wait(50);
	Fade("�}��ѣ��", 200, 0, null, false);
	Fade("�}ɫ��", 200, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������˷ܣ��ƺ��������ͷ�ԡ�
����Щ����ѣ���ҷ�ס��ͷ��

�������о���Щ�̡�
��˵������Щ΢΢���ȡ�

�����Ѿ��ָ������̶ֳ��ˣ�Ҫ�����쿪ʼ��Ϊ��ð��
���Դ����ҿɲ����⡣
��Ϊ���պ�����������ľ���Ϊ�á����Ҵն�����
Ҳ˵���Ͻ��ҳ�ǿ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0060020a02">
������Ҫ���ȿ��±�ֽ�ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ͻȻͣ��������ǰ�ĽŲ���
����������뷨�治��

���һ�û�п����Լ������ɵ��µ��ϱ�ֽ��
����Ȼÿ�춼�ῴ��ֽ������û����ر�����


  �ն�����˵�������Ա��������ƣ�����������ɡ�
����Ȼ�������������˴�ܣ�������ʧȥ�Լ������䣬
�������������޿϶������ɱ���ס�

�������Ļ����ͳ�����������ơ�������ε��¼���ֽ
����ס��ġ�
����ʱ��Ҳ�����ĳ�ұ�ֽ�����ˡ��������糿���Ǹ�
������˵��

���������ܣ�����������������������ſڡ�
����δ������֮ʱ�������ͱ�Ա�Ĵ������ͱ���ʱ��
��λӶ������������и�ɻ���

���Ҽ�æ����ֽ��
����Ȼ�������ѣ������缲鳴�İ�����ֱ����

�������б�����Ҳ�������Ǽ���ʵ�����а��ˡ�
�������ܺ��ж��Ұ����Ĵ�ǡ�����Ҳ�����ἰ��

���������ס��������������ڴ���
������������������֮�µ�<RUBY text="����">�Ͽ�</RUBY>��
��������ʹ����֮��Ϊһ���ȶ�����ʵ��

�����������ԣ���ͬ�Һ����ڵĴ��ڡ�
��˵���˾��������ڱ��õĶ�����������ʲô��������
���ò�������Ͳ���ʤ����

{	CreateSE("SE01","se�ճ�_��_�����ä�");
	MusicStart("SE01",0,1000,0,1000,null,false);}
���Ҵ��ż������ϱ���̨������飬���˱�ֽ��

����ֽ�ϣ�������<RUBY text="����">��ʵ</RUBY>��

��
���������źӹ�������ͯ���н�<k>
{	SetVolume("@mbgm*", 1000, 0, null);}
������������������������������ɱ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ����֤ǡ�������
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreatePlainSP("�}��д", 5000);
	Wait(10);
	CreateColorSP("�}ɫ�\", 3000, "#000000");

	SetFont("@����", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֚���",30411,Center,Middle,auto,auto,"�� ��");
	Rotate("�}���֚���", 0, @0, @0, @90, null,true);
	Request("�}���֚���",NoLog);
	Move("�}���֚���", 0, @20, @0, null, false);

//	CreateTextureSP("�}���֚���", 3100, Center, Middle, "cg/sys/Telop/tp_ꑰ�.png");//���ߩ`ע��
	FadeDelete("�}��д", 50, true);
	Wait(10);
	CreatePlainSP("�}��д", 5000);
	Delete("�}ɫ�\");
	Delete("�}���֚���");
	WaitKey(100);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0060030a02">
������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ͷ�����š�
����ƪ����ռ��������һҳ���������档����������ƣ�
�м�İ���Ҳһ��ȫ���������صı�����

�����Ǳ�����������ݣ����ѿ�����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ����֤ǡ�������
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,750,0,1000,null,false);
	CreatePlainSP("�}��д", 5000);
	Wait(10);
	CreateColorSP("�}ɫ�\", 3000, "#000000");

//	CreateTextureSP("�}���֚���", 3100, Center, Middle, "cg/sys/Telop/tp_ꑰ�.png");//���ߩ`ע��
//	CreateTextureSP("�}���֚�����", 3200, Center, Middle, "cg/sys/Telop/tp_ꑰ�.png");//���ߩ`ע��

	SetFont("@����", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֚���",30411,Center,Middle,auto,auto,"�� ��");
	Rotate("�}���֚���", 0, @0, @0, @90, null,true);
	Request("�}���֚���",NoLog);
	Move("�}���֚���", 0, @20, @0, null, false);

	SetFont("@����", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֚�����",30411,Center,Middle,auto,auto,"�� ��");
	Rotate("�}���֚�����", 0, @0, @0, @90, null,true);
	Request("�}���֚�����",NoLog);
	Move("�}���֚�����", 0, @20, @0, null, false);

	FadeFR2("�}���֚�����",0,750,250,0,0,10,DxlAxl,false);
	FadeDelete("�}��д", 50, true);
	Wait(200);
	CreatePlainSP("�}��д", 5000);
	Delete("�}ɫ�\");
	Delete("�}���֚���*");
	WaitKey(100);
	FadeDelete("�}��д", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����֡�
������Ϊʲô���һ���˶�ҡ��

����ƪ����ֻ�ǽ�һֱ�̾������Ժ��е���ʵ���ֻ���
�ѡ�
����������������˵���ƾ��춯�ص����ݣ�������˵��
������֮����

�����ǣ�Ϊʲô��

��Ϊʲô�ҵ���ָ��<RUBY text="��������">��ͣ����</RUBY>����

���µ�����һ��ھ���ʲô��
����������д����ʵ�Ҳ������֪������

���������Ҵ�������ͯ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//����ɫ�ե����
��
����������������������<FONT incolor="#CC0000">���ԡ�</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���ǵġ�
��һ��̰ʳ�������๷������Ļ쵰ȴ��Ȼ�Եõ�Ʈ��
��ʣ����Ұ������䵽����������ĵ��档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//����ɫ�ե����
��
����������������������<FONT incolor="#CC0000">���ԡ�</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����û�����ǣ�Ҳû���ƿ����ߡ�
��������������ͨ�����˵�����֪�����ѣ���ʲôֵ��
���ȵġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//����ɫ�ե����
��
����������������<FONT incolor="#CC0000">���ԡ�
��������������������<RUBY text="����">��</RUBY>��
����������������Ҳ����<RUBY text="����">����</RUBY>��</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//����ɫ�ե����
����������������<FONT incolor="#CC0000">�ң�
�������������������Ǹ��ˣ�<k>
��
����������������<RUBY text="����">ɱ��</RUBY>��

//����ɫ�ե����
��
������������������������ɱ�ˡ�</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ�������
	CreateSE("SE01","se����_�Υ���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}����", 5000, Center, Middle, "cg/ev/ev158_һ��������.jpg");
	SetTone("�}����", Monochrome);
	Fade("�}����", 0, 1000, null, true);
	Wait(50);
	Delete("�}����");

//�����롤�[��ͯ��
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}����", 8000, Center, Middle, "cg/bg/bg072_��Ĥǵ����������L���B_03.jpg");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 600, 200, null, true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb03/0060040a09">
����߾���������ġ�
�����а֮������ͯ��ս������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb03/0060050a09">
��ȡ����ʤ������

{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb03/0060060a09">
���˽����ҵ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ѫ�wĭ
	CreateSE("SE01","se����_Ѫ_Ѫ���֤�01");
	SL_centerdamN(@0, @0,1200);
	CreateColorEX("�}ɫѪ", 20000, "#CC0000");

	Fade("�}ɫѪ", 500, 1000, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerdamfadeN2(10);

	Wait(500);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}ɫ�\", 100, "#000000");
	FadeDelete("�ϱ���", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��
�����������źӹ�������ͯ���н���ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ãǣ����֤ǡ�������
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainSP("�}��д", 5000);
	Wait(10);
	CreateColorSP("�}ɫ�\", 3000, "#000000");

//	CreateTextureSP("�}���֚���", 3100, Center, Middle, "cg/sys/Telop/tp_ꑰ�.png");//���ߩ`ע��
//	CreateTextureSP("�}���֚�����", 3200, Center, Middle, "cg/sys/Telop/tp_ꑰ�.png");//���ߩ`ע��



	SetFont("@����", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֚���",30411,Center,Middle,auto,auto,"�� ��");
	Rotate("�}���֚���", 0, @0, @0, @90, null,true);
	Request("�}���֚���",NoLog);
	Move("�}���֚���", 0, @20, @0, null, false);


	SetFont("@����", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("�}���֚�����",30411,Center,Middle,auto,auto,"�� ��");
	Rotate("�}���֚�����", 0, @0, @0, @90, null,true);
	Request("�}���֚�����",NoLog);
	Move("�}���֚�����", 0, @20, @0, null, false);

//	Zoom("�}���֚���", 0, 1200, 1200, null, true);
//	Zoom("�}���֚�����", 0, 1200, 1200, null, true);


	FadeFR3("�}���֚�����",0,750,250,0,0,30,DxlAxl,false);
	FadeDelete("�}��д", 50, true);
	Wait(200);
	CreatePlainSP("�}��д", 5000);
	Delete("�}ɫ�\");
	Delete("�}���֚���*");
	WaitKey(100);
	FadeDelete("�}��д", 300, true);

//��ͯ��
	CreateTextureEX("�}��", 4000, Center, Middle, "cg/ev/ev158_һ��������.jpg");
	CreateTextureEX("�}����", 4100, Center, Middle, "cg/ev/ev158_һ��������.jpg");
	StR(1000, @0, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb03/0060070a09">
��ֻ���Ժ���
��ֻ�ܳ�Ц����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb03/0060080a09">
��ֻ������������ߣ�ֻ������س�Ц����

{	FwC("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb03/0060090a09">
��<RUBY text="������������">���Ǳ�������</RUBY>��
{
//���ãǣ�������
	WaitKey(2200);
	OnSE("se����_�Υ���01",1000);
	Fade("�}��", 0, 1000, null, true);
	FadeFR2("�}����",0,500,300,0,0,30,DxlAxl, true);
	Delete("�}��*");
}
��<RUBY text="��������������������">�Ļ��������ɱ���ҵ�</RUBY>
<RUBY text="����">�԰�</RUBY>!!��


{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb03/0060100a09">
����������������
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Lլ������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg034_���Lլ����ga_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	Wait(50);
	FadeDelete("�}��ܞ", 50, true);

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0060110a02">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ɤä���Фä������ӤȤ������Ƥ�褦������
	CreateSE("SE01","se����_����_���ڱ����");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��Ϊ�Ρ�
��Ϊ�Ρ�

��������ʲô��
��Ϊʲô����������

��Ϊʲô�һ����ʡ�
��Ϊʲô����������<RUBY text="��������">һ����Ż</RUBY>�ء�

��Ū�����ס�
��������ʲô��

����û�����κοɳ�֮�¡�
���ұ������壬���ս��ȡ����ʤ����

����ô����߳ܣ��������Բ��ø��װ��������顣
��֤�ݾ��ǡ���<k>�ҿ����������׵�������

�������ڱ����ң��������úá�
�������������ˡ���ʱ����˵�Ļ���

����ʱ��˵�ġ���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ�������
	CreateColorSP("�}ɫ�\", 3000, "#000000");
	CreateTextureSP("�}��", 4000, Center, Middle, "cg/ev/ev158_һ��������.jpg");
	CreateTextureSP("�}����", 4100, Center, Middle, "cg/ev/ev158_һ��������.jpg");
	OnSE("se����_�Υ���01",1000);
	FadeFR2("�}����",0,500,300,0,0,30,DxlAxl, true);
	Fade("�}ɫ�\", 0, 1000, null, true);
	Delete("�}��*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��
�����������������������ܺá�
�������������������������ͺá�

��
���������������������úð���
����������������������һ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	FadeDelete("�}ɫ�\", 600, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0060120a02">
���ء�����������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0060130a02">
�����������ն�������������

{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0060140a02">
���ն�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_007.nss"