//<continuation number="690">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011b.nss_MAIN
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
	#bg037_����������`��a_01=true;
	#bg036_������ͨ·_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_011b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_011.nss"

//��һ���Θ��Ӥ�Ҋ���Ф�

//��ͨ·
	SoundPlay("@mbgm16",0,1000,true);

	PrintBG("�ϱ���", 25000);
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SetVolume("@mbgm*", 1500, 0, null);

	CreateColorSP("�}��ܞ", 1000, "#000000");
	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);

	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��һ��Ӧ�������⸽�����顭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���ܥ����o��
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0010a02">
��������������

//���ܥ����o��
{	NwC("cg/fw/nw����T.png");}
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma03/011b0020e140">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������֪�ǲ��Ǵ����
��ԶԶ������΢�����������ƺ���Ԥʾ��ĳ�ֲ���
����̬��

�����������������ķ���С�ܹ�ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q

	CreateColorSP("�}��ܞ", 15000, "#000000");
	DrawTransition("�}��ܞ", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStR(0,true);

	WaitKey(500);

	DrawDelete("�}��ܞ", 500, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0030a02">
��˵�������Ǹ����

{	NwC("cg/fw/nw����T.png");}
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma03/011b0040e140">
����ʲô��Ц����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������������һ����
��վ��ĳ������Ļ���ǰ����ò��������Ա�Ĵ󺺶�
���ţ��������Ͼ����ſ��µı��顣

����һ���ı��󣬻���һ�����ڵ��ϵ��к���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma03/011b0050e140">
�������ֹ��ϵ��Ա������˽��룡��û������
��д����
����������������С��Ĵ�!!��

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0060a02">
���Ǿ�������ץ�����Ӱѱ��˶���ȥ����
��һ�����˾�Ȼ�۸�С���ӣ�
��ʲôֵ�ø��˵�!!��

{	NwC("cg/fw/nw����T.png");}
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma03/011b0070e140">
����˵ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����������û��Ѱ����̬˵���ı�Ҫ��
��״����Ϊ�򵥡�

����û��ͣ�½Ų�����ֱ�ߵ�����֮�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0080a02">
���ն�����!?��

{	NwC("cg/fw/nw����T.png");}
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma03/011b0090e140">
����С������λ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0100a00">
���ǳ���Ǹ��
�����Ǳ��˵�ͬ�顣��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0110a02">
���ն���������һ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0120a00">
�����졣��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0130a02">
��������

{	NwC("cg/fw/nw����T.png");}
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma03/011b0140e140">
��ͬ�飿��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0150a00">
���ǵġ�
������ʲô���Եģ����ɱ��ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���Ź��
	CreateSE("SE01","se���L_����_Ź��02");
	MusicStart("SE01",0,1000,0,1250,null,false);

	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	WaitKey(10);
	Delete("�}��ܞ");

	CreatePlainSP("�}��д", 1000);
	FadeFR2("�}��д",0,1000,300,0,0,30,DxlAuto, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma03/011b0160a00">
��������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0170a02">
�������������!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0180a00">
��˵��������졣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_����01",1000);
	DeleteStA(200,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��ץס������ֹ������ȥ��һ���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma03/011b0190e140">
������æ��Ҫ����
�������������ĵ����鷳�ң���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	DeleteStA(0,true);
	CreateSE("SE01","se���L_����_Ź��02");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	WaitKey(10);
	Delete("�}��ܞ");

	CreatePlainSP("�}��д", 1000);
	FadeFR2("�}��д",0,1000,300,0,0,30,DxlAuto, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma03/011b0200a00">
���������鷳�ˡ���

{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0210a02">
����������������

{	NwC("cg/fw/nw����T.png");}
//������㣯����T��
<voice name="����㣯����T" class="����������" src="voice/ma03/011b0220e140">
���Ͽ������ʧ����һȺɵ�ӣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0230a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���������ͷ�����޵����˿���ĭ���߻ػ��⡣
�������ֽ�������ϵ��ۻ࣬ת��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma03/011b0240a00">
���߰ɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0250a02">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0260a00">
��û�°ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����С���ʵ���
����վ�������������Ҳ�м��˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�Ф���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������㣯�Ф��ӡ�
<voice name="����㣯�Ф���" class="����������" src="voice/ma03/011b0270e200">
�����ҷϡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0280a00">
��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0290a02">
��ι�����С������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0300a00">
��ס�֡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170a]
������һ������һ�����к����������ܿ���
�����±���ӡ�ŵĶӱ꽥��Զȥ����<k>�ʹ󺺹���
���ϵı�־һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

	CreateSE("SEL01","se����_����_�i��03_L");//���ߩ`ע��
	MusicStart("SEL01",0,1000,0,1250,null,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170b]
��������Ȼ�Ѿ�����ɧ�������޷�ָ�����⸽������
���顣
���ҳ��ź�С���෴�ģ�ͨ���㳡�ķ�����ȥ���Ժ�
һ��Ҳ׷�˹�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0310a02">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0320a00">
��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0330a02">
�������Ǹ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0340a00">
����ô����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0350a02">
����������
���ң��������𡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0360a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);

}


//���x�k���g�`�äƤ��룯�g�`�äƤϤ��ʤ�


..//������ָ��
//���g�`�äƤ��롡"ma03_011ba.nss"
//���g�`�äƤϤ��ʤ���"ma03_011bb.nss"


//���x�k֫���`��
scene ma03_011b.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x

	SoundPlay("@mbgm17",0,1000,true);

	PrintGO("������", 30000);
	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);
	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice02("����","û��");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
//�g�`�äƤ��롡"ma03_011ba.nss"
				$GameName = "ma03_011ba.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�g�`�äƤϤ��ʤ���"ma03_011bb.nss"
				$GameName = "ma03_011bb.nss";
		}
	}
}

