//<continuation number="440">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_011.nss_MAIN
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
	#bg033_���ӘS�����h_01=true;
	#bg050_���ӘS�����hǰ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_012.nss";

}

scene mb02_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mb02_010.nss"

//�����h����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg033_���ӘS�����h_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110010a02">
����ô���������ϡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110020a00">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���Ҷ�һ����ȷ�ϱ�ʾ��ͬ��
�������������ܿ��ǵ��ķ�Χ�ڣ�������õİ취�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110030a02">
��ȡ���׼��𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110040a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���һ�æ���֡�
�������ǿ���Ц��ֻҪ�ҵ��ͷ�������п��ܵ����ͱ�
��ȥ�����ж���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mb02/0110050a00">
��̫���ˡ�
���ᵼ���������µĹ����෴�Ľ������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110060a02">
��Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����˵�����������ı������������������ǲ�����
�ɹ��ġ�
�����㱧�ű���ľ���Ҳûʲôϣ���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mb02/0110070a00">
��ֻ�辡���ܰ�Ϯ���Ķ����ֵô�һЩ�ͺá�
��ĳ�̶ֳ���ͻ�ƾ��������ʵ�����в�����ϵ�
��������������ѡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110080a02">
�������Ϳ������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110090a00">
���������㹻��������ͯ���ˡ�
���ⲻ�˴�Ԫ��֮�׵ı����ϵ��䡣��


//��������
<voice name="����" class="����" src="voice/mb02/0110100a00">
�������׵���Ȩ�ƻ������ǿ��
���������ֵĹ����µ�����Ӱ����Ҳ�����󡭡�
������ô���¡���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110110a02">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��һ����ͷ��һ����û������˵����ô�ŷ������ӡ�
�������Ը���ȫ���ʺϴ�����Ҳ�ѹ�����ⲻ�ˡ�

���Ҳ����ظ������˵����ת���˻��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mb02/0110120a00">
�����������Ǿ���ƻ��ˡ�
�����������ڡ�����


//��������
<voice name="����" class="����" src="voice/mb02/0110130a00">
����˵����������ܾ���ݡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110140a02">
���ܾ硭������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110150a00">
���ԡ�����ͯ�����졣
����˵�����������������á���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110160a02">
�������Ǹ���᳡�𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110170a00">
����˵�������ⲿ�ı��ͣ������ڲ����ݡ�
�����һ��������������ڲ����˳�ϯ�ɡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110180a02">
���Ǿͳô˻��᣿��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110190a00">
������˵������Щ�ֹۣ����������ܲ�������ϡ�
����Ȼ��ѡ���ܾ������Ϯ��ʵ���²ߡ�
��Ȼ������Ҫ���Ƽ���
�����ض�ʮ��ɭ�ϡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110200a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110210a00">
�����ǲ��翴׼���ݽ����󣬾�����Ա�������
��˲�䡪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//����������
	Wait(1000);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110220a02">
��������ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ڻ�˵��һ���Ȼ��ֹ���ң�һ������ؿ���ѯ�ʡ�
�������һֻ�֣���ס�����졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110230a02">
������!?��


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110240a00">
���нŲ�����
�����˹����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����öԷ����ö������������׵������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110250a02">
�����������Ǹ�Ů��̽�𣿣�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110260a00">
���������˵ĽŲ�����


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0110270a02">
��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110280a00">
������˵����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������һ���������ʾ��⣬����Ž��ֳ�ء�
����֮�����ȿ�������ɡ�

�������ұ����վ����ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0110290b20">
���ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������Ů�Ե�������
����ȷ�ǽ񴨼���̽��������û��

������<RUBY text="������������">ֱ���ҵ�����</RUBY>��
���������ȶ��µİ��š�

�����������ڳ�ʱ�İ��š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ�ǰ
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg050_���ӘS�����hǰ_01.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��������һ�����߳����ء�
�������Ʋ��һ��������վ������Ůʿ��һλδ��ı��
����΢�����Ů�ˡ�

���������ԡ�
���������һ�۾��ܿ�����λ���͵�Ů�١���������
������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb02/0110300a00">
���ⲻ����������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����������Լ���õģ������﹧����ӭ�˳�ȥ��
��Ůʿ�󷽵ص��˵�ͷ������Ϊ�����Ů���ÿ��ط���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0110310b20">
�������Ǹġ���


{	NwC("cg/fw/nwŮ��.png");}
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mb02/0110320e123">
���ߡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���ñ��Ӻ���һ��������ǰ����Ů�ˣ���Ī������������
¶�ǵش������ҡ�
����װ��һ���ϻ̳Ͽֵ�ģ������ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwŮ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mb02/0110330e123">
������������Ĺ����𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110340a00">
�������ǡ���


{	NwC("cg/fw/nwŮ��.png");}
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mb02/0110350e123">
���ϴ��Ƿ��ٶ�Ҳ����˶�����
������������


//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mb02/0110360e123">
�����ˡ�
������úý������¡���


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0110370b20">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�������������ˡ�
��������������������̷��Ů��֮һ��

������Ƕ��Ǵ��ҵ����񻳺����ģ��鵽�������Ĳ��ź�
ǰ�����Գ���ɡ�
������������Ļ��������������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mb02/0110380a00">
���ϴ�����ʧ��
�����ؽ��������У������ˡ����


{	NwC("cg/fw/nwŮ��.png");}
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mb02/0110390e123">
���ߡ�����
�����ϵ��¶������˵����飬�Ҹҳ������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��Ů�ٺݶ��طŻ����ƺ�����ͷŤ�˹�ȥ��
������ͷ���ҿ��������Ķ�����

����������������й���Ҳ�þʹ˻�ȥ�˰ɡ�
���ұ��������뷨������Ů�ٵ�˫�Ŵ��ҵ���Ұ��
��ʧ����Ȼ������ȴ��˿δ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/mb02/0110400a00">
����������


{	NwC("cg/fw/nwŮ��.png");}
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mb02/0110410e123">
���иĵġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110420a00">
���ǡ���


{	NwC("cg/fw/nwŮ��.png");}
//������㣯Ů�١�
<voice name="����㣯Ů��" class="������Ů��" src="voice/mb02/0110430e123">
����������
������Ҫ�ټ��㡣��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0110440a00">
������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_012.nss"