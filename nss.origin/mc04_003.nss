//<continuation number="130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_003.nss_MAIN
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
	#bg087_���Bۡ���vǰa_01=true;
	#ev183_����֦�˴���Z����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_004vs.nss";

}

scene mc04_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_002vs.nss"

//���ݷ�ǰ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg087_���Bۡ���vǰa_01.jpg");
	Fade("�\Ļ��", 0, 1000, null, true);
	Delete("�ϱ���");
	WaitKey(500);
	SoundPlay("@mbgm36",0,1000,true);

	CreateSE("SEL01","se����_����_������L��01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,false);

	FadeDelete("�\Ļ��", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ͻ�����ź󾭹��ļ�����������ȣ�������ǰ
���լۡ������ΰ�ġ����̴Ӳ��ݵĳ�����լۡǰ����
ɲ����
����̥�����˴̶����������ս���ζ���������ҵı�ǻ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/0030010a00">
����ô������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0030020a03">
��һ���������


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0030030a04">
���뱣�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����Ǽ�̵�˵����
��֮��Ҫ�����£����Ѿ������ˡ�

����ȥѰ�������Ǻ��йصĶ�����
������֦��Ŀ���Ǵ���ʨ�Ӻ�ɴ���̴ӵ��ڴ��Ŵ���
����լۡ����ĵз�ս����

�����ǲ�������;�еĺ������ǻ���֧Ԯ��
���´μ��棬�������Ǵﵽ���Ե�Ŀ��֮��
�������լۡ��ʱ��

������˵������Ҫ�������鼫��<RUBY text="�ӣ�����">����</RUBY>��
������û�б�Ҫ����ȷ�ϡ�

���Һͳ����еĴ���һ�𣬴ӳ������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0030040a03">
���������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0030050a00">
���ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ô��ڵ���ֹ�����һع���ͷ��
��һɲ�ǣ�ʱ��ֹͣ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣��������`��
//��������С����ˤȤä����������������Хå��ˇ����Ȥ���

//inc�ñ��� EVCG�Υ��ߩ`������ޤ���
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 1, null);

	OnSE("se����_����_�ڸ���", 1000);

	CreateColorSP("�}ɫ��", 19900, "#FFFFFF");
//�����ߣ�ʹ���Ƥ��ʤ��褦�ʤΤ����Ƥ����ޤ�����
	CreateTextureSP("�}����׷��", 1000, Center, Middle, "cg/ev/ev183_����֦�˴���Z����.jpg");
	Fade("�}ɫ��", 1000, 0, null, true);
	Wait(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������������������

�����ºܽ���
����������ζ�������з��㶼�ܽ���

���Ӵ����ˡ�
������һ�㡣����ء�����ء������ǵ�ѩ��ĸо���


���촽������һ��
�����޶۵�ͷ����ע�⵽��һ��֮ǰ�����������롣

��û���κμ��ɡ�
��������Ƥ����Ƥ���ĽӴ���

������С���ӵĽ��ǡ�

���ر�׾�ء�
�����ִ�����Ͼ��

���ҽ�������������ֱ��Ѱ���ҵ���Ϊ��
����֪Ϊʲô��������ʧȥ�˳�Ϊ�ֿ����Ķ�����


�������Ҳ��������е����塣
�������ξģ���Ű������Ϊ��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0030060a03">
��������ȥȷ��һ�¡���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����촽�ഥ�ľ��롣
��������˵������仰��

��ȷ�ϡ�
��
����������ȷ��ʲô��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x��
	Fade("�}ɫ��", 200, 1000, null, true);

	Delete("�}����׷��");
	SetVolume("@OnSE*", 200, 0, null);
	OnSE("se����_����_�ߤ�05", 1000);
	FadeDelete("�}ɫ��", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ûʱ��ȥ������
���ͽ���ʱһ������ξ�÷������ٶȷ����뿪���ֳ�
��ǹ��������Ծ����լ֮ۡ�С�


������һ˲�䣬�Ҵ����ؿ�������
�������Ѿ���ʼս���ˡ���վ�����Ҳֻ�����˷ѱ���
��ʱ�䡣

��������ԥ��
�����ٻ��˽��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mc04/0030070a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`�󡣴���չ�_

//��װ�ץ��������
	CreateColorEXadd("�ե�", 10000, "#FFFFFF");

	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("�ե�", 300, 1000, null, true);

	PrintGO("�ϱ���", 15000);
	CreateColorSPadd("�ե�", 10000, "#FFFFFF");

	DeleteStL(0,true);

	OnBG(100,"bg087_���Bۡ���vǰa_01.jpg");
	FadeBG(0,true);

	StC(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStC(0,true);
	Delete("�ϱ���");
	FadeDelete("�ե�*", 1600, true);

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc04/0030080a00">
������ն��
�����߱�𡣡�


</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 2000);
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc04/0030090a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ס������`�󡣤��Ĥ��������䤿��Ǥ�����
	CreateColorEXadd("�ե�", 10000, "#FFFFFF");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

//���������Ǵ󤭤���
	CreateSE("SE011","se����_�z_װ��02");
	CreateSE("SE022","se����_�z_װ��03");
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	MusicStart("SE011",0,1000,0,700,null,false);
	MusicStart("SE022",0,1000,0,1250,null,false);


	Fade("�ե�", 300, 1000, null, true);

	DeleteStA(0,true);
	StC(1000, @0,@0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStC(0,true);

	FadeDelete("�ե�", 2000, true);
	WaitKey(1000);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc04/0030100a00">
������������


{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0030110a01">
������������


{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0030120a00">
������������
���ղ����º����ر��ۡ���


{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0030130a01">
���Ǵ���ɡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc04_004vs.nss"