//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_014.nss_MAIN
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
	#bg001_��a_02=true;
	#bg013_�`�}���a_02=true;
	#bg094_�m��ͥ_01=true;
	#bg002_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_015.nss";

}

scene md01_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_013.nss"

//���`�}�н�
//�����j���w�ִ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateSE("SE01","se����_����_���S01");
	OnBG(100,"bg001_��a_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	WaitKey(300);

	CreateSE("SE01b","se����_����_���S03");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnBG(100,"bg013_�`�}���a_02.jpg");
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	FadeBG(0,true);

	Zoom("@OnBG*", 150, 1000, 1000, DxlAuto, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);
	SoundPlay("@mbgm31",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ݶ����ݶ���
�������ҵ����ҡ�

��û���κ�Ŀ�ꡣ
��ֻ�ǲ���ͣ�½Ų����ѡ�

�����ھ�����ĺ����һ��ʱ�䡣�������ҵ��ж������
�ᱻ�˿����ɡ�

��������������ν��

��������ֻ���������ܣ�˦ȥ�������ϵ�ĳ�ֶ�����
��������Ȼ���Ѿ����������ֶ��������������ҵ����棬
�����������ҵ��ڲ࣬�����������ܶ��޷���ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md01/0140010a01">
�����������������Ͽɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����˵�������Ͽ�������־��
��ϣ������ͬ�����Լ�����־ս���������Լ������Ρ���
���ڽ���ϣ��������<RUBY text="����">�ٿ���</RUBY>���һ�����ȫ�ľܾ���

��������˵���Ͽ��ҵ���־��
���Ǹ��������˵���һ����̵ļһ���ǡ�

���������������Ҳ�޷��Ͽɡ�

���ں��཭�Ľ�ս�У��������������ҵĹ�ȥ��������
Ҳ���������յ�����
��������֪����

����������ƽ����������С��ׯ�е��ˡ�
����ȥ����������ģ����Һ�ĸ�ס�������������

�����û�д����Ĵ��ڣ�������ƽ�ȵ��ճ��л���
�ɡ�
��������������ǰ��û���������޴�����Ը��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md01/0140020a01">
����Ӧ������ĸ�׵ġ�
���ұ���Ҫ�������İ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}����", 8000, Center, Middle, "cg/bg/bg094_�m��ͥ_01.jpg");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������������ϳ�������Ը���������ƻ��ͺ��ˡ�
���������Ƕ�ô���裬��ô�ź�����ΪϺ�ĵĽ��ж���
��˵��ô�����Խ��ܡ�

��Ѫ��֮���ӽ��Ӵ���
������ʦ����ָ��ù��Ե���

���������Ҳ����������<RUBY text="ĸ��">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md01/0140030a01">
������Ϊû����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����Ǻš������ˡ�
���ϱ��������Ķ��Σ�������¡��ʱ���и����ˡ�

���ҵ�һ�������Ϳ��Խ��������δȻ��
������ǰ���������ģ��������ֻ�������������������
����

�������Ǻŵ�ս����Ҳ���Ǻ���֮ǰ�Ĵ��������˽ᡣ
����<RUBY text="��">����</RUBY>ȴ˵Ҫ������Ϊ�Լ��Ķ�����������
����־��������Ͽɡ�

����ֻ�Ǳ���������ǧ�Ӵ���һ�������֮�У�
Ϊʲô�ڲп�Ķ�����ʹ�࣬
����궼�ܵ��˺���Ϊʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md01/0140040a01">
�����ǲ������Ͽɵİɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���������µĴ������⻹�С�

���ƶ���֡��Ǹ����ɡ�
���Ǹ����䡪��<k>�ҳ��ϣ�����������Σ���ʵ����ֻ��
���䣡����<k>��ΪʲôҪ�̳�����

���������û���Ǹ����䣬���ھ������е�������ֻ��
Ҫ<RUBY text="����">һ��</RUBY>�ˡ�
��ʹ��Ҳ��õ����Ͱɡ�

���Һ�ʼ�桢������ͬ��������Ϊ�ֶ�İ�����ʱ����
ֻ��Ϊ�˽���ѹ�Ʋŵ����Ľ��С�
���Ǹ�������ʵ���游����Ĺؼ�������������˵ȴ��
û�б�Ҫ�ġ�

����ʹ����һ��Ǽ̳��ˡ���<k>����������

���ƶ���ֵĹ��򣬲����Ǵ���������еĸ�¼��
�����Ǹ�ֲ�������еĶ�����Ҳ���Ǹ������

�����ȥ������һ�㣬�����г̾�Ҫ<RUBY text="����">��ȫ</RUBY>����ȷ����
���游��ĸ�ף�������ĸ�͸��ס�һ��̽�����ܽᣬ��
�����������ȫ���¹�����

�����ǲ����������ġ�

����ʹ�����ˣ������������ͨ�Ľ��У�Ҳ�޷��ֿ���
�����������������ᱻ���ѡ���Ⱦ��
������Ҳ�޷��ﵽĿ�ġ�

����ǧ�Ӵ������Ķ��취��Ϊ���У��̳��ƶ���ֵĽ�
�ɣ������޷�������¡�

��������ʵ�������ǡ�

�����Ǽ�ʹ�׿���Щ���⣬�Ҵ�������Ҳȷʵ������Ҫ
�̳н��ɵ����顣
������Ҫ�̳н��ɣ��̳�һ������롣

���游���ǿ���֮���ҵ������룬����Ϊ���ǲ���ƾ��
ʧȥ�ġ�
�����𡰶��ơ�������û�����������磬�����������
��������ɡ�������������ġ�

������������ĸ��顣
������������˽���뷨��

��������Σ��������Ҳû��ѡ�����ء�
�������ڱ�����Ҳ�����������Ը����������
����֮�С�

�����Բ���ԭ�¡�

�����ܸ������䣬����Լ����кøк;�������ǵ���
�����������ܵĿ��ơ���������ÿ�η����ҽУ���
��������ֿ����Թ����Ӷ��������������Լ�ƽ�ȵ���
�С����������Ҳ�޷�ԭ���������Լ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md01/0140050a01">
�����ԡ������٣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������Ϊ�Լ�����ȥ�Ͽɡ�
����ս������ɱ¾������������־�����е��£��Ҿ���
�����Ͽɡ�

������ֻ�������Լ���ս������

�������ҵ���־���µģ����Լ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��
//�����`�󡣤ʤ󤫹��Q�äݤ��ݳ�
//����ֹͣ
	OnSE("se����_����_���S03",1000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(0,true);
	DrawDelete("�\Ļ��", 150, 100, "zoom_01_00_1", true);

	CreateSE("SE01b","se����_냇��_���Q01");//���ߩ`ע��
	MusicStart("SE01b",0,1000,0,1500,null,true);
	CreateEffect("�}�֥�`��", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("�}�֥�`��","�}�֥�`��");
	Request("�}�֥�`��",Passive);
	SetBlur("�}�֥�`��", 3, true, 400, 100);

	Fade("�}�֥�`��", 0, 500, AxlDxl, true);
	Zoom("�}�֥�`��", 300, 1500, 1500, Dxl1, false);
	FadeDelete("�}�֥�`��", 300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md01/0140060a01">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`��
	CreateSE("SE02","se����_냇��_���Q01");//���ߩ`ע��
	MusicStart("SE02",0,1000,0,1200,null,true);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������<RUBY text="���ڸ�">����</RUBY>��
�����Ǻţ������䡰�ѡ��ļ����塣���ж�������֮��
�Ĵ��ھ��ڸ�����

����ǿ������Ũ��
�������ڸо����Ĵ����ر�Ũ�����������Ҿ�������
���ⷢɢ�����ġ�

�������б�Ҫ�����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md01/0140070a01">
����������

//��������
<voice name="����" class="��������" src="voice/md01/0140080a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 3000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ת��ͷ����Ҫ�ص�������<RUBY text="��">����</RUBY>����ߡ�
��������ȴ�������Ѿ���������ȥ���ˡ�

���Ҳ����ٺ���һ��ս����
�����޷��Ͽ�������־����Ҳ�޷�֧���������������ң�
�Ѿ��������������ˡ�

�����Ҫȥ���ұ������ǰ����

����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="��������" src="voice/md01/0140090a01">
��һ���˾͹��ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ϸ���룬�ѱ��˾���ֻ�����ҵ�ս��֮�У��Ȿ��
���Ǻܴ�Ĵ���
�����۽��ж�ô��Ҫ�ٿ��ߡ�

�����̶ֳȵĳ�ʶ��ƴ�ϴ���֮�����ɵ߸���
���߸������߸������ǿ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 0, 600, null, true);
	WaitKey(10);
	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�ų�չ��<k>�ۼ��γ�<k>�ض�ָ��<k>�ض����<k>����չ��<k>����չ��<k>
ָ������<k>�ۼ��γ�<k>������װ<k>����<k>����<k>����<k>����<k>�ۼ��γ�<k>
����װ<k>����<k>ȫ��ɾ��<k>����װ<k>����<k>����<k>����<k>ָ������<k>
������װ<k>����<k>����<k>�ۺ�����<k>ȷ��<k>Υ���ﻯ���̸������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/md01/0140100a01">
���ҡ�������һ��Ҳ��ս������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��
��������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���`������
//�����ߡ�����
//���w��
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	CreateTextureSP("�}���}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��.png");
	Move("�}���}", 2000, @128, @0, DxlAuto, false);
	FadeDelete("�}�ե�", 1000, true);

	WaitPlay("SE*", null);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�å����", 5000, "#FFFFFF");
	Move("�}���}", 300, @-512, @0, Axl2, false);
	Fade("�}�ե�å����", 200, 1000, null, true);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_015.nss"