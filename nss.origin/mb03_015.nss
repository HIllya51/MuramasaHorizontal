//<continuation number="980">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_015.nss_MAIN
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
	#bg074_�˲��ε���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_016vs.nss";

}

scene mb03_015.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_014.nss"

//��˲��
//���������ȥ쥹���R���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg074_�˲��ε���_01.jpg");
	CreateSE("SE01","se�ճ�_����_���_��05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm22",0,1000,true);

	StL(1000, @30, @0,"cg/st/st�R��_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�R��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150010b15">
����ӭ���٣���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������װ�������������˵���ƣ�������������
������Ȼװ�꾫�����������һ�ˣ�Ҳֻ������������

����Ա��ˬ������������ޱȵĲ�Э����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�R��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150020b15">
����������λ�𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150030a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������Ա���ˣ�ȴ��ȫ����ô��Ϊ����λ�����Ů�ӣ�
��֮���ӣ����������������ı��顣
���������Ĵ���΢Ц�����Һ�һ��������

�����Ÿ����ǵ��Ǵ��ߵ���λ��
���羰������Ȼ��ʱ������Ҫ����������������λ
�������Զ�����һ��ֻҪС���Ի����Ͳ��ص��Ļᱻ
͵����

���ھ���ά�޹������������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�R��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150040b15">
������Ҫ��Щʲô����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150050a00">
�������������衣��


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150060a02">
����Ҳһ������


{	FwC("cg/fw/fw�R��_ͨ��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150070b15">
���������衣
������Щ�𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150080a00">
������������


{	FwC("cg/fw/fw�R��_ͨ��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150090b15">
�����Եȣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	DeleteStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ա�������Ĳ��������ˡ�
���Ҳ���������Ŀ�������ı�Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -600, -690, "cg/bg/resize/bg074_�˲��ε���_01l.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16200, -292, 0, "cg/ev/ev989_���һ�i.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Fade("�}ɫ100", 500, 500, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(1000);

	Move("�}�ݷ���/�}�ݱ���", 2000, @0, @-50, AxlDxl, false);
	Move("�}�ݷ���/�}���}", 2000, @0, @-100, AxlDxl, true);


	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150100a02">
���ն�������
���Ѳ����㡭����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150110a02">
���ڿ������β��𡭡�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150120a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}�ݷ�*", 200, 0, null, true);
	FadeDelete("�}ɫ*", 200, false);

	Delete("�}�ݷ�*");
	SetFwC("cg/fw/fwһ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0075]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150130a02">
��Ϊʲô����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150140a00">
��<RUBY text="����������">ҡ�ڵ�����</RUBY>�������⡣��


{	SetComic(@0,@0,16);
	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150150a02">
����ô����һ��������˵���ֻ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��һ��Ϊʲô��˷߿��ء�
����ʲô�������ò�����

�����ڳ�һ������ҧ��һ�ڵı��顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150160a02">
��ϲ���������͵��𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150170a00">
�����ͣ�������ʲô����


{	SetComic(@0,@0,15);
	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150180a02">
��Ů�����ͣ���


{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150190a00">
����������ô��ɡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150200a02">
����������û�ڲ١�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����һ����Թ�����������ţ��������ŵ�Ա����Ӱֱ
������ʧ�������ߵľ�ͷ��
��Ȼ���ٶ�ȷ�ϵ��������û�б�Ŀ��˺͵�Ա����
��������������м����ˡ����Ըо�����

������ǰֻ���Һ�һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
{	SetComic(@0,@0,12);}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150210a02">
��������ʼ��ս���۰ɡ���


{	DeleteComic();
	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150220a00">
���á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��ת��������
��һ��������֪Ϊ����Щ���䣬�Ȳ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mb03/0150230a00">
�����ڽ���������ô��ȡ�ж���
�����ȣ�ǿ��ͻΧΪʱ���硣��


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150240a02">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150250a00">
���ڵ��﹫����֮ǰ�����Ǿͻᱻ����
����������½·���ǿ�·���в�ͨ����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150260a02">
����������Ҳ�����𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150270a00">
������������Ҫ������ʱ�䡣
������նӵ����������޿ɱ��⡣�����ܹ�ͻ
Χ�������������ڼ�Ҳ�Ѿ�����ȫ��ӭ�е�׼
������


//��������
<voice name="����" class="����" src="voice/mb03/0150280a00">
�������������ڵ����������ɡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150290a02">
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150300a00">
��������Ǳ��ø���һ�㡣��


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150310a02">
��װ��������޵ı�ʿ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150320a00">
������һ���취��
�����ǣ������Ѱ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��Ϯ���б������̵�Ȼ���ȡװ��Ǳ�롣
��������Ȼ��С˵�����Ǿ����ŶΡ�����ʵʩ������ȴ
�������ء���β���չ��Ѹ�ٶ����ܵ�Ϯ������β���
����αװ�������޵��˶��������ɣ��ȵȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb03/0150330a00">
�������ϴΣ����ڲ���Ա�ĺ�Ӧ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150340a02">
���ǰ�������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150350a00">
������ķ�����
�����粻��Ѱ���������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150360a02">
��ʲô��˼����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150370a00">
��Ҳ���ǲ�ʹ�õ�·����˼��
��Ǳ��ɽҰ֮�нӽ�С������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150380a02">
��������������ȥҲͦ���ѵġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150390a00">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������û����Ϥ�������ĵ�����Э���������������
���졣
��һ�������ľͻ����ѡ�

�����ң���Ļ����ʿ����ʱҲ���ý��͡�
����ʱ��ֻ��ת��ǿ�����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150400a02">
�����һ���ʱ�䡣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150410a00">
����ȷ����Ҳ���ѵ�֮һ��
������ʲô�ð취�𣿡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150420a02">
�����������Ǳ����¾������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150430a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����ѯ��һ��Ǳ���ڸ����Ľ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb03/0150440a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb03/0150450a01">
�����£���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150460a00">
�����ǵ�֩���𣿣�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb03/0150470a01">
�����ǡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150480a02">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150490a02">
�����ڣ�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb03/0150500b40">
�����ʲô���һ���ɡ�
�������Ǹ��������Ǹ�ʱ����δ���ֵ�����
��е����


//�����ڡ�
<voice name="����" class="����" src="voice/mb03/0150510b40">
�����������Կ��ܷ�ͨ��װ�׸��黹ԭ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150520a02">
�������һῼ�ǵģ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������Ҫ���ƻ�����ʵʩ������ѵ㡣

��Ů�д��ӳ��������ˡ�
������Ҳ��˼ά�ݽߵ�ʱ�����ǳ�Ĭ�صȴ��š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @30, @0,"cg/st/st�R��_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�R��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150530b15">
������λ�õ��ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������һ�������Ц�ݣ���Ա�Ѳ豭�������ϡ�
����ʱ�������硣

����ͬ�ڻ��õ�ӡ��Ů��Ա�Ķ���������񣬽�����ϸ��
���մ���û�з��������������

������Ϊ���Ե���������ֿ���ȥ�ǳ�������
��
��ѩ�ס����⻬���֡�

{	DeleteStL(300,false);
	SetVolume("@mbgm*", 100, 0, null);}
��������Լ����֣���ס�������֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -600, -444, "cg/bg/resize/bg074_�˲��ε���_01l.jpg");

	CreateTextureEX("�}�ݷ���/�}���}", 16200, 60, -60, "cg/st/resize/st�R��_ͨ��_�Ʒ�l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Move("�}�ݷ���/�}�ݱ���", 40000, @100, @0, null, false);
	Move("�}�ݷ���/�}���}", 40000, @200, @0, null, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	SetFwR("cg/fw/fw�R��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150540b15">
����ѽ������


{	SoundPlay("@mbgm22",0,1000,true);
	SetComic(@250,@0,7);
	FwR("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150550a02">
���ա��ա��ն�����!?
�����޳�Ŷ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��Ů��Ա΢΢һ㶣�һ���Ǻ������������
���Ҳ��ܲ��ˣ�������������еĸд���

������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�R��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150560b15">
����λ�������ǵġ�
�������������ôһλ�ɰ���С�㡣��


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150570a00">
����һ��������������㡣��


{	FwR("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150580a02">
���ա����������ȡ�����!?��


{	FwR("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150590b15">
����ô������˵�ء�
�����ǵģ������絽��Ϊֹ����


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150600a00">
����������ġ���


{	SetComic(@250,@0,16);
	FwR("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150610a02">
��ʲô!?��


{	DeleteComic();
	FwR("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150620b15">
�����������������ŵĿ��ˡ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150630a00">
����Ҳ�����š�
����Ȼ�����ֵط�����������������������


{	FwR("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150640a02">
��������Ҳ�ǳ�������!?��


{	FwR("cg/fw/fw�R��_�o��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150650b15">
�����ˡ���
��Ϊʲô����


{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150660a00">
����������
������֡�����ȣ���������۾�����


{	FwR("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150670a02">
��������Ϊ������
�����ԣ����ⲻ���⣡��


{	FwR("cg/fw/fw�R��_΢Ц.png");}
//�룺����������ʤ��Ȥ򣩡�090930��
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150680b15">
�������κ��˶�˵�����Ļ��ɣ���


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150690a00">
������
��ֻ����˵������


{	FwR("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150700a02">
��Ϊʲô��ͻȻ�ͱ��˸���!?
������˵��ԭ��������������!?
�ұ���������!?
���Ҿ�Ȼ������һ�ֱ��ѵķ�ʽ����!?��


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150710a00">
������֡���
��������������


{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150720a00">
�����ҡ�����������


{	FwR("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150730b15">
���ѵ�����˵˫�ֱ������ˣ����ĺ���ů�𣿡�


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150740a00">
���Ҷ�����֮˵������Ȥ��
������֡�����


{	FwR("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150750a02">
������Ϊ�����Ǹ�����ˮ���ݹ����ѣ���


{	FwR("cg/fw/fw�R��_ͨ��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150760b15">
���ǵġ�
����Ϊ���ֲ��������Դ�ϴ�뵽׼�����϶���
Ҫ��æ����


{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150770a00">
��Ҳ���������ɡ�
���㲻��Ҫ���ͣ���Ҫ��æ�����Ĺ�������


{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150780a00">
�����ǣ�����ȴ��ȫ�������ѡ�
��𪡢�ྻ���⻬��
�����ǣ�ָ����ȴ��ǳǳ��<RUBY text="����">�ϼ�</RUBY>����


{	SetVolume("@mbgm*", 100, 1, null);
	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150790a00">
�����ǳ���ϰ��֮�˲��е���������


</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ*", 150, 0, null, false);
	Fade("�}�ݷ�*", 150, 0, null, true);
	Delete("�}�ݷ�*");
	Delete("�}ɫ*");

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0255]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150800a02">
������������


{	FwC("cg/fw/fw�R��_�o��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150810b15">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150820a00">
����Ĳ��������ˡ���
������ϸ�۲���ˣ�һ�ж�����
<RUBY text="��������">�����侲</RUBY>�ˡ���


//��������
<voice name="����" class="����" src="voice/mb03/0150830a00">
���·��ܹ�Ӧ����ʱ��ص�Ϯ����
���ⲽ������ȫû�������ĵõ������������ġ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150840a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150850a00">
�����⣬����۾�����
������ڵ������֣�Ҳ�ǵ��ؾ���Ŀ��ˣ�û
�б��ֳ��κ��ɻ󡣡�


{	FwC("cg/fw/fw�R��_�o.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150860b15">
������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150870a00">
�������ǡ������˷ѽ⡣
�����������Ҽ������Ȥ����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150880a02">
���ն�������
���ǣ���һ��ǡ�����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150890a00">
���ǰ���
������ֻ��һ������


{	SetVolume("@mbgm*", 100, 1000, null);
	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150900a00">
�������е������ĵã�������ſ�ʼ�����﹤
����Ů��Ա����


{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150910a02">
��������!?��


{	FwC("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150920b15">
���ǡ��������ģ���


{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150930a00">
����Ȼ���ǡ�
�����ȣ�������ڲ����ܻ��¹͵�Ա�����ң�
����Ǹտ�ʼ�����Ļ�������Կ��˵�̬��Ҳ
̫��Ȼ����ˡ���


{	FwC("cg/fw/fw�R��_�o��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150940b15">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StC(1000, @30, @0,"cg/st/st�R��_���L_�Ʒ�.png");
	Move("@StC*", 300, @-30, @0, Dxl2, false);
	FadeStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����Ա˦���ҵ��֣�����󷽡�
��ͬʱ����Ҳվ������

���������ǵ�����
����֪������Ӻζ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�R��_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/0150950b15">
���������Ҵ����ˡ�
��ֻ���Ǻ�ɫС�硭������


{	FwR("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150960a02">
���ߣ�������
���ն������Ų������������أ���


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0150970a00">
���ղ�����һ��˵ʲô���Ҵ����϶��ǵá���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ؤ���
	CreateSE("SE01","se�M��_���ߥ���_���`��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetComic(@250,@0,8);
	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0150980a02">
������������û���ҡ�����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

//��������`��
//�����������ڵǈ�
	CreateColorEX("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 100, 1000, null, true);

}

..//������ָ��
//�Υե����롡"mb03_016vs.nss"