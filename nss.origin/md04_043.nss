//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_043.nss_MAIN
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
	#bg103_���ӘS������ٛg����_01=true;
	#ev002_�y�Ǻ��¼�����`����=true;
	#bg002_��a_01=true;
	#bg001_��b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_044.nss";

}

scene md04_043.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_042.nss"


//�������x
//�����ǽІ�


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg103_���ӘS������ٛg����_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm37", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md04/0430010a01">
����ô�ᡭ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ƿ����ԣ����ͬʱҧ��������������
��������ϰʲô�漼��������Ȼ��Ȼ�ġ�

���������ڹ��Ǿ���ʼ���ˣ����ڵõ�������ڵĻ��ᡣ
��������ʵ�Ѿ�ʵ��̤������ˡ�

����ȴ���̱������˳�����
��
����Ϊ��̤����Ȼ��Ϊ����֮������֯���޾�ǹ�ֵ���
�ĳ��У��ǲ����ܵġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ�顢�o��e�L��

	CreateTextureEX("��ʿ", 15000, @0, @0, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
	Fade("��ʿ", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md04/0430020a01">
��Ϊʲô������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������ǰ������������ζ��ʲô��
�Ȼ�Ϊ��ͽ�����Ǳ���Ҫ��⡣
�����Ǻŵĳ��֣�����˾�����Ⱦ������֮��
���޿��ܡ�

������Ϊ�δ˿�Ӧ����������ܥԽ�Ĵն��⡪��
���ǺŻ�����������ֳǣ�
�������������������� 

��������˵Ļ���������Ŀ������ʲô��
�����������зų��ƻ���ɱ¾�Ļ����к����塪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ұ�ʿ
	FadeDelete("��ʿ",500,true);

	OnSE("se����_�n��_ܞ��02",1000);

	StL(1000, @-60, @110, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	FadeStL(300, true);
	Move("@StL*", 500, @60, @-100, AxlAuto, true);
	OnSE("se���L_�|��_ȭ�|����01", 1000);

	OnSE("se����_�n��_ܞ��04",1000);
	Move("@StL*", 500, @-10, @-10, AxlAuto, true);




	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md04/0430030a01">
����û���㣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	OnSE("se����_����_֩������¤�01",1000);

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	DeleteStL(0,true);
	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	DrawDelete("�}�ե�", 100, 100, "beam_03_00_1", true);

//�������`��
	CreateSE("SE01","se���L_����_���nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}����20",300,true);

	OnSE("se����_�n��_ܞ��03",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ǧ��һ���أ��������ǹ�ķ���ʿ���ų�˿��
����ס��ȫ�����Է�ק���ڵء�

��ʿ������Ұ��һ��ĺ��У��ڵ��ϴ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md04/0430040a01">
�����ڲ����������µ�ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ȼ��֪��������ʵ��ͼ���������ǲ����ļƻ���
��ôһ���ѵ���<RUBY text="��������">���׶�</RUBY>��
����ʲô������ʼ�����ǽ�����

�������޷���ص���̬��

�����޷�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md04/0430050a01">
�����������������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������ӿ����ͷ��
��������ˣ�����ô�Ĵ����������������ܣ�
Ҳ�޷��ҵ�ͻ�ƿڡ�

������һƬ���ҡ����ҡ����硣
����˵ǰ���ˣ�Ҫ�ǲ������ˣ��Լ�Ҳ�ᱻ����
���У��ʹ������ɡ�


����ô��źá���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ұ�ʿ����

	OnSE("se���L_�|��_�}��������01",1000);

	StL(1100, @-60, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	StCL(1000, @160, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	Rotate("@StR*", 0, @0, @180, @0, null,true);

	FadeStL(300, false);
	FadeStCL(300, false);
	FadeStR(300, true);

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md04/0430060a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ˡ�
��
���ع��������Ѿ���һȺ��ͽ����

��Ҫ�ӵĻ��������Ѿ�̫�ӽ���̫���ˡ�
���ó�ʵ����ս�Ļ����Է�����̫�ࡣ

�����ǵ�ǹ����һ�뿪�𣬼������ҽ���֮��Ҳ����


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md04/0430070a01">
���ϵ�����?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	OnSE("se����_����_֩������¤�01", 1000);

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	DrawDelete("�}�ե�", 100, 100, "beam_03_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����ǰ������������˿��
��������Щ˿���赲Ƭ��Ҳ�á���<k>��
��������<k>���У�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���鏈��
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	OnSE("se����_����_֩������¤�01", 1000);


	CreateTextureEX("�}����20", 4900, Center, Middle, "cg/ef/ef035_֩��W���@.jpg");
	Request("�}����20", Smoothing);

	Fade("�}����20", 0, 1000, null, true);
	DrawDelete("�}�ե�", 100, 100, "beam_03_00_1", false);
	Zoom("�}����20", 1500, 1200, 1200, Dxl2, false);

	Wait(1500);

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430080a03">
��<RUBY text="������">������ʥ</RUBY>
����<RUBY text="�ģ��������� �ӣ����">ɢ��</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ɢ���
	OnSE("se���L_�Х���_��ɢ���", 1000);

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);

	Wait(1000);

	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef033_��ɢ���.jpg");
	CreateTextureEXadd("�}����30", 4900, Center, Middle, "cg/ef/ef033_��ɢ���.jpg");

	SetVertex("�}����30", 0, 0);

	OnSE("se���L_�Х���_�ܩ`�������01", 1000);
	FadeF4("�}����30", 500, 800, 1000, 0, 0, Axl2, false);
	Zoom("�}����30", 1000, 1100, 1100, Dxl1, false);
	DrawTransition("�}�ե�", 100, 1000, 0, 300, null, "cg/data/slide_03_00_1.png", true);

	Wait(700);
	DrawTransition("�}�ե�", 200, 0, 1000, 300, null, "cg/data/slide_03_00_0.png", true);
	Delete("�}����*");

	Wait(300);

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="��������" src="voice/md04/0430090a01">
�������ף���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_Ź���B��02_L",1000);
	Wait(800);
	SetVolume("OnSE*", 200, 0, null);

	OnSE("se���L_����_⟱ڴ����w�Ф�",1000);

	FadeDelete("�}�ե�",1000,true);

	OnSE("se����_�n��_ܞ��05",1000);
	Wait(200);
	OnSE("se����_�n��_ܞ��04",1000);
	Wait(200);
	OnSE("se����_�n��_ܞ��03",1000);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���ᱻ��ɷ��ѡ�����������ŵ�˲�䡣
����֧����������ʿ���ǵ������������ֱ�һ��
�����̴��ˡ�

������ʮ��ǿ����
��ʿ��Ⱥ����ɢ��һ�����ص��¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х���
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("se����_�z_�l����01", "se����_�z_�l����01");
	MusicStart("se����_�z_�l����01", 0, 1000, 0, 400, null, false);
	Wait(200);
	StC(1000, @-120, @0, "cg/st/3d�Х���_����_ͨ��.png");
	FadeStC(300, false);
	Move("@StC*", 300, @100, @90, Dxl1, false);
	Wait(200);
	SetVolume("@OnSE*", 0, 0, null);

	Shake("@StC*", 500, 0, 3, 0, 0, 600, Dxl2, true);
	Wait(300);
	OnSE("se����_�z_�l����01", 1000);
	Wait(200);	// ����500��Wait��;��SE�Υ����ߥ󥰁㤻���{��
	Move("@StC*", 800, @15, @-40, Dxl3, true);
	Wait(200);
	CreateSE("se����_�z_�l����01", "se����_�z_�l����01");
	MusicStart("se����_�z_�l����01", 0, 1000, 0, 600, null, false);
	Move("@StC*", 800, @-5, @-50, Axl1, true);
	Wait(200);

	SoundPlay("@mbgm18", 0, 1000, true);

	SetFwR("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430100a03">
��<RUBY text="֩��">����</RUBY>�������£���û�°ɣ���

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430110a01">
�����ǡ�����������֦?!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�������������װ���Ľ����Ҳ�û��ӡ��
�����ǣ����������˼��䡣

���Է����ж�ʱ������һͬ�ж�����Ů�ӡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���r�g�U�^�� inc�Ѿ�
//	CreateColorEX("�\", 3000, "BLACK");
//	Fade("�\", 1000, 1000, null, true);
//	Fade("�\", 500, 0, null, true);
//	Delete("�\");

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/md04/0430120a01">
���������ˡ��Ǹ��޴��������
���Ҿ�˵�����е���֡���

{	FwR("cg/fw/fw����֦_Ц�.png");}
//�룺�������h�����ƣ���090930��
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430130a03">
��û��
�������������ϸ˵���ء���

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430140a03">
���������ƺ�����ʱ���ء���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430150a01">
�������ǰ������ź���
�����������ҵ�л�ɡ���

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430160a01">
����л�ˡ���

{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430170a03">
��ûʲôûʲô��
��ֻ����֮�������ѡ���

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430180a03">
�������š��������֮������
��������ʵû�иþ���ĵ��������ǵģ�
���ڸ�ʲô�ء���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430190a01">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����ȷ���Һ����Ĺ�ϵ�������ر����ܡ�
�������ܸо����������������ﲢ����������˼��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/md04/0430200a01">
�����ˡ�
����ô������������ʲô�أ���

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430210a03">
����Ȼȥ�������¡�
�����ǡ�����

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430220a01">
������һ���� 
��������Ȼȥ�������£�ȴ����ת��תȥ
������Ҳ�ǡ�����

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430230a03">
���ţ���š���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������״�B

	CreateTextureEX("��ʿ", 15000, @0, @0, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
	Fade("��ʿ", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����Ȼ����æ��������ߵ�Σ�գ���״�����޸ı䡣
���Ĵ�����������ʳ�⶯���������磬������������
�ӽ���


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("��ʿ",500,true);

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/md04/0430240a01">
���������������߰ɣ�
������������û���ˣ���

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430250a03">
�������㲻֪���� 
�����翴һ��������������ʲô���ӣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����У�
��
�����ߴ��ţ���̧ͷ������ա�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����b���y�Ǻť�
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	DeleteStC(0,true);
	OnBG(100, "bg001_��a_01.jpg");
	FadeBG(0, true);

	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");

	CreateTextureEX("����飱/������01a", 500, @200, @-200, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureEX("����飱/������02a", 350, @400, @-0, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureEX("����飱/������03a", 200, @400, @-300, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureEX("����飱/������04a", 100, @500, @-200, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
//	CreateTextureEX("����飱/������01b", 500,  @200, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������02b", 350,  @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������03b", 200,  @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������04b", 100,  @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");

	Fade("����飱/������01a", 0, 1000, null, false);
	Fade("����飱/������02a", 0, 1000, null, false);
	Fade("����飱/������03a", 0, 1000, null, false);
	Fade("����飱/������04a", 0, 1000, null, false);

	Zoom("����飱/������01*", 0, 600, 600, null, false);
	Zoom("����飱/������02*", 0, 500, 500, null, false);
	Zoom("����飱/������03*", 0, 300, 300, null, false);
	Zoom("����飱/������04*", 0, 250, 250, null, false);

	Move("����飱/������01*", 0, 41, -218, null, true);
	Move("����飱/������02*", 0, -268, -45, null, true);
	Move("����飱/������03*", 0, -429, -206, null, true);
	Move("����飱/������04*", 0, -257, -304, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M03", 1000);
	OnSE("se���L_����_��ͻ�M06", 1000);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 2000, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@����飱/������01*";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02*";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@����飱/������03*";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@����飱/������04*";
$��`�ץ�`�֥����ࣴ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving3");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving4");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	MoveCamera("@����飱", 0, -100, -100, @0, null, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	MoveCamera("@����飱", 500, 50, 200, @300, Dxl1, true);
	Delete("�\Ļ��");

	SetBlur("����飱/������0*", true, 1, 500, 100, false);

	Wait(500);

	OnSE("se���L_����_��ͻ�M01", 1000);
	OnSE("se���L_����_��ͻ�M02", 1000);

	SetBlur("����飱/������0*", false, 1, 500, 100, false);
	MoveCamera("@����飱", 300, -1000, -300, @500, Axl2, true);

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�����*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	CreateTextureSP("���b02", 1000, OutLeft, Middle, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureSP("���b04", 1000, OutLeft, Middle, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureSP("���b03", 1090, OutLeft, Middle, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	CreateTextureSP("���b01", 1090, OutLeft, Middle, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");

	Move("���b02", 0, @0, @-180, null, true);
	Move("���b04", 0, @0, @-60, null, true);
	Move("���b03", 0, @0, @60, null, true);
	Move("���b01", 0, @0, @180, null, true);

	Zoom("���b01", 0, 500, 500, null, true);
	Zoom("���b03", 0, 500, 500, null, true);
	Zoom("���b02", 0, 250, 250, null, true);
	Zoom("���b04", 0, 250, 250, null, true);

	SetBlur("���b*", true, 2, 200, 50, false);

	SetVolume("ͣ��", 1000, 0, null);
	OnSE("se���L_����_��ͻ�M02", 1000);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	OnSE("se���L_����_��ͻ�M01", 1000);
	$�ʤ�Ȥʤ�������=Random(10)*100;
	$���Ƅӂ���=1300+$�ʤ�Ȥʤ�������;
	Move("���b01", 300, $���Ƅӂ���, @0, Axl1, true);
	$�ʤ�Ȥʤ�������=Random(10)*100;
	$���Ƅӂ���=1300+$�ʤ�Ȥʤ�������;
	Move("���b02", 300, $���Ƅӂ���, @0, Axl1, true);

	OnSE("se���L_����_��ͻ�M03", 1000);
	$�ʤ�Ȥʤ�������=Random(10)*100;
	$���Ƅӂ���=1300+$�ʤ�Ȥʤ�������;
	Move("���b03", 300, $���Ƅӂ���, @0, Axl1, true);
	$�ʤ�Ȥʤ�������=Random(10)*100;
	$���Ƅӂ�=1300+$�ʤ�Ȥʤ�������;
	Move("���b04", 300, $���Ƅӂ�, @0, Axl1, true);

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/md04/0430260a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�������Զԡ�

�������������������ҫ��
�������ġ���ӵ���ֽźͳ��͵��е����ǡ�

���������ŷ��ĸ�ҥ������������衣
��ǰ����ս�����ߡ���������ͼ���ߵ����ߣ�
����Ϊ����һ������ܲ�������׹��

���ⲻ�ǣ��Ǹ����Ǻš�
���Ǳ�Ķ�����

�����ǣ�����ĳ���������������ơ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("���b*");

	OnBG(100, "bg103_���ӘS������ٛg����_01.jpg");
	FadeBG(0, true);

	StL(1000, @0, @0, "cg/st/3d�Х���_����_ͨ��.png");
	FadeStL(0, false);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");


	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/md04/0430270a01">
������������?! 
����ô������ô�࣡��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430280a03">
����ǰ���������˸��߹��ҡ�
�����Ǻ���ͨ�����ѡ���ֳ�ġ�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430290a03">
����Ȼ��������ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����ƿ����ԣ�ֻ�ܵ�ͷ��

����Ҳ�ǡ�����������ģ� 

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430300a03">
����ձ����ֶ���ռ�죬ʵ�����޷������졣
������ֻ��һ���ﻹ���Զ㣬������ίʵ̫�ࡣ��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430310a01">
�������ǡ��ǰ�������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430320a03">
����˵��ˣ�����Ҳ���⸱���ӡ�
����Ϊ���е������Ϊ���ߵ��ң�
��ֻ�ܽ��˲��ã��������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���Ҷ��ˡ�
����Ȼ���ˣ�ȴ��û��ȡ��ʲô�����Եĳɹ���

��ֻ�Ƿ���������ͬ��Σ�����˶��ѡ�
�����˻���ͬ�����⣬ʲô����������

�����ң�������Ҳһ����û������ʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430330a03">
���������ǡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430340a01">
��ʲô����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430350a03">
�����ǽ���һ���ͽ����У�����ܰ쵽��
�����Ұ�æ�Ļ�������

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430360a01">
���ף�
����������𣿡�

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430370a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����������֦������һ�ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430380a03">
�������ǰ�����
����һ�룬��ʵ�ں��Ѱ쵽������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430390a03">
��������˳ǣ�����״����Ҳ�޷������װ��
������ʽ���д�Ų����ܿ������ϵ��°ɡ�
�������첻���ġ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430400a03">
����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���������۾������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430410a03">
�����Ŀ�ģ��Ǽ����������ˣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430420a01">
�������ǵġ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430430a03">
����ô����Ϊ�Ҵ�������
��������פ������ʹ�þ�ս���������׵�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430440a03">
�����������������Ͽ�Ͷ��֮ʱ�����е��˻�
ȫ��ɡ�
������˵������������Ҳ���⵽��������

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430450a01">
��������?!��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430460a03">
�������ˣ���Ҫ���ɣ������ң�����Щ��
ԭ�ⲻ���ظ��߾������ˡ�
��������ֹ�ⳡ����ķ�������<RUBY text="����">����</RUBY>
<RUBY text="����������">������Ļ��</RUBY>�����˶��ѡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430470a03">
����Ϊû�е��˾��޷���Ͷը���ˡ�
���ؼ����������ɰ��ϡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430480a03">
������Щ����
�������𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430490a01">
���ţ��š���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430500a03">
����ʵ�ұ������Լ�����ȥ�ġ����ǡ�������
����û�����ˡ�
���Ͱ�����;��������ˡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430510a03">
��Ϊ���Է���һ����ȥ�����ֵ����Ǳ��Ѱɡ�
���������º��𳤰�æ�����������ܺ��ߡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430520a01">
��֪���ˡ�
�����ǣ���Ҫ������ҽ����أ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430530a03">
����ų��ղŵ�˿����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430540a01">
������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430550a03">
�������ǣ�������֧���ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
����������ָָ֦����������������������ʯ����
���м�װ���Ŵּ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="��������" src="voice/md04/0430560a01">
������ȥ�����ˣ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430570a03">
���š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430580a01">
��������

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430590a01">
��������ԭ����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���Ҷ��ˡ�
���������������ַ�����

����Ȼ���ڲ��ʡ���³����ȴ����Թ�ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430600a03">
��׼�������𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0430610a01">
�����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_�Х���_�ܩ`���󘋤�02",1000);

	StL(1000, @0, @0,"cg/st/3d�Х���_����_���L.png");
	FadeStL(500,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
����������ڳ���������ơ�
���ҷ������壬�ȴ��ż���������˲�䡣

���������������в��ܵ������С�
������ӵ������Ǻ���һ��Ķ�����̬�������ۡ�
ͨ����������ٿ��ߺ϶�Ϊһ��Ϊ����ʱ�����ܻ��
�����������

���������ڵ��Ҳ��ܷɡ�
��
��ֻҪ����<RUBY text="��������">�������</RUBY>�Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k��

	OnSE("se���L_�Х���_�ܩ`�������02", 1000);
	CreateColorSP("��Ļ", 25000, "WHITE");
	DrawTransition("��Ļ", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	DeleteStL(0,true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ef/ef038_�������.jpg");
	Request("�}����100", Smoothing);
	Rotate("�}����100", 0, @0, @0, @180, null,true);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetBlur("�}����100", true, 2, 300, 70, false);

	Zoom("�}����100", 500, 1010, 1010, Dxl2, false);
	DrawTransition("��Ļ", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("��Ļ");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�����������ɿ���

����ʸ�ƿ��磬������м��ۡ�
��������˿����������ҡ�

����ͨ�ļ��첻�������¡�
���������ߵĸչ�����ļ��򡪡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��
	CreateTextureEX("�}����250", 100, Center, Middle, "cg/bg/bg001_��b_01.jpg");
	Request("�}����250", Smoothing);
	CreateTextureEXadd("�}����200", 100, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Request("�}����200", Smoothing);
	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M04",1000);

	Shake("�}����200", 700, 3, 5, 0, 0, 1000, Dxl2, false);
	Fade("�}����200", 150, 1000, null, false);
	Shake("�}����250", 700, 3, 5, 0, 0, 1000, Dxl2, false);
	FadeF4("�}����250", 150, 1000, 2000, 0, 0, Dxl2, false);
	Zoom("�}����250", 2000, 1500, 1500, Dxl1, false);
	Zoom("�}����200", 700, 1100, 1100, null, true);

	Wait(500);

	Delete("�}����100");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
�����ӹ�������Ⱦ����ɵĻ������
����Ȼ��Χ���㣬�������ڵļ���Ӧ���ܹ����ɴ�Խ��

��Ȼ��Խ����ǽ��
�����۲��۵أ����ɡ������С���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����b���y�Ǻš��Ϥ����u��
	CreateColorSP("��", 25000, "WHITE");
	DrawTransition("��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("�}����*");

	OnBG(100, "bg001_��a_01.jpg");
	FadeBG(0, true);

	CreateTextureEX("���b01", 1090, center, @-600, "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
	Zoom("���b01", 0, 100, 100, null, false);
	SetBlur("���b01", true, 2, 300, 70, false);

	DrawTransition("��", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("��");

	OnSE("se���L_����_��ͻ�M08", 1000);
	Fade("���b01", 100, 1000, null, false);
	Zoom("���b01", 500, 500, 500, Dxl2, false);
	Move("���b01", 500, @0, -400, Dxl2, true);

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="��������" src="voice/md04/0430620a01">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
��ͻȻ��
���Ϸ�Ϯ��һ������Ǻŵĸ����壡

�������ٶ�Ҳ�ܲ�׽��?! 
���������ˡ�

�����з����Եļ�������ҡ�
���ҵ�·������˵Ľ��������ཻ����Ҳ����
���⵽������

���㲻����
���޷���ܣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 500, 0, null);

	CreateColorEX("�\", 3000, "BLACK");
	Fade("�\", 0, 1000, null, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//���ãǄI��
��
�����������������������˶��ļ��䲻��ƻ����
��������<PRE>�ԣ�塡������������桡
���������������ԣ��졡���䡡�����塱.</PRE>

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��܉���仯
	SetBlur("���b01", false, 2, 300, 70, false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	OnSE("se���L_����_��ͻ�M01",1000);

	Fade("�\", 0, 0, null, true);
	Zoom("���b01", 600, 2000, 2000, Axl1, false);
	Wait(300);
	Move("���b01", 300, @-2000, @0, null, false);

	Wait(200);

	Fade("�}�ե�", 0, 1000, null, true);
	OnSE("se���L_�Х���_�ܩ`�������01", 1000);
	Delete("�\");
	Delete("���b");


	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	DrawDelete("�}�ե�", 100, 100, "beam_03_00_1", true);

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 0, 1000, null, true);
	OnSE("se���L_�Х���_�ܩ`�������02", 1000);


	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���b.jpg");
	DrawDelete("�}�ե�", 100, 100, "beam_03_00_1", true);

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 0, 1000, null, true);
	OnSE("se���L_�Х���_�ܩ`�������02", 1000);


	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���c.jpg");
	DrawDelete("�}�ե�", 100, 100, "beam_03_00_1", true);

	Wait(500);

	CreateColorEX("�\", 15000, "WHITE");
	Fade("�\", 500, 1000, null, true);

	Delete("�}����*");

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="��������" src="voice/md04/0430630a01">
�����������ס�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
��<RUBY text="����֮��">������</RUBY>Ť���ˡ�

����<RUBY text="������">������</RUBY>��
���ð���������ᴩ��գ���Ц����������

��������֪��ʲôԭ���ұܿ��˱�Ӧ�޷���ܵľ�·��
��
��Ȼ�����ڣ��������ֳǽ��䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ԫ�Έ���
//������֦

	OnBG(100, "bg103_���ӘS������ٛg����_01.jpg");
	FadeBG(0, true);

	CreateTextureSPadd("�}�ݹ��}��", 1011, Center, InBottom, "cg/st/3d�Х���_����_��x.png");
	CreateTextureSP("�}�ݹ��}", 1010, Center, InBottom, "cg/st/3d�Х���_����_���L.png");
	Move("�}�ݹ��}*", 0, @-256, @0, null, true);

	FadeDelete("�\",1000,true);

	FadeDelete("�}�ݹ��}��", 2000, true);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0430640a03">
������˵��Ҫ�����¾ͷǵúú���ɲ��ɡ�
����Ȼ�ᱻ���ų�Ц�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"md04_044.nss"
