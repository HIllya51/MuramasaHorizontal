//<continuation number="1520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045a.nss_MAIN
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
	#bg105_���T�����ڂ�_02=true;
	#bg063_���ӘS��������_02=true;
	#bg071_���ӘS���ڏ������_02=true;
	#ev952_�׵�װ��_a=true;
	#ev952_�׵�װ��_b=true;
	#ev955_���ؾ���װ��_a=true;
	#ev955_���ؾ���װ��_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_����=true;

	$PreGameName = $GameName;

	$GameName = "md04_045aa.nss";

	//��ţĥ�`�볬�ٌ���
	PreSetRoll(4);
	TheEND(4);
}

scene md04_045a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



	PrintBG("�ϱ���", 30000);
	CreateColorSP("��", 2000, "WHITE");
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"md04_045.nss"


//��ΤƤ���

	SetFwC("cg/fw/fw�����AȾ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md04/045a0010a00">
���ܹ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md04/045a0020a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm19", 0, 1000, true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md04/045a0030a00">
�����׵úܡ�
�����ػ������õ�֮��ļ�����ȣ�
������ʲô����

//��������
<voice name="����" class="����" src="voice/md04/045a0040a00">
��������ô�����ܹ��ػ���Ļ���
���ұ���ô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md04/045a0050a01">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md04/045a0060a00">
����˵�������˹����⻹��������Ҫ�Ķ����ɡ�
��������˵�öԣ�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0070a00">
������Ҫ�������ǣ�

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0080a00">
����Ҳ�ǡ�������!!
�����ҵ�������ʧ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������I���Ɖ����ѳ�
//��Ԫ�Έ���������
	OnSE("se����_��x_�k��04", 1000);

	OnBG(100, "bg105_���T�����ڂ�_02.jpg");
	FadeBG(0, true);

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);

	DrawDelete("��", 1000, 200, "circle_01_00_0", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md04/045a0090a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ϥ��ͻ��

	OnSE("se����_�n��_ܞ��03",1000);
	DeleteStL(300,false);

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md04/045a0100a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ե��ն���ˡ�

�����ڵ��ϣ�����ͷ�����ν����Ѿ����Һ��޹�����
��
��ֻ��Ƴ����һ�ۣ���ת���ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0110a07">
����硭����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0120a00">
���㻹Ҫ����Щ���浽ʲôʱ�򣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0130a07">
�����ᣬ�ⶫ��̫�����ˡ�
����Ҳ����һֱ���ݱ���Ӭֽ�ס�Ĳ�Ӭ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0140a00">
�������𶯡���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0150a07">
���á���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̫��һ�W
	OnSE("se���L_����_�����01", 1000);

	CreateTextureEX("�}����200", 2000, Center, 0, "cg/ef/ef008_��������܉��.jpg");
	Fade("�}����200", 300, 1000, null, true);
	Fade("�}����200", 500, 0, null, true);
	OnSE("se���L_����_��ж�",1000);

	Wait(500);

	Delete("�}����200");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���γ�����ĳ�����һ�ӡ�
��Ч����Ȼ�����ĸ��ߣ����׵�ɢ���ڵء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md04/045a0160a00">
��������˰ɡ�
����վ��������

{	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0170a07">
���硪���磡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������å�

	DeleteStL(150,true);

	OnSE("se����_����_�����Ĥ�01",1000);

	StL(1000, @0, @1100, "cg/st/resize/st�衩��_ͨ��_�Ʒ�a_l.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 1000, 1000, null, true);
	FadeStL(150, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md04/045a0180a00">
������ΪʲôҪճ��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0190a07">
����ﰮ�⡣
���Ҿ�֪�������Ի�ѡ�ҵģ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0200a07">
���������Ҿ�֪������������Ρ�
��ƽʱ��Ѫ��̬�ȿ϶��������ת�ķ��ʡ�
����֮�������Ҫ���ģ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0210a00">
����������
����֪������˵ʲô����

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0220a00">
���Ҳ�����ѡ�����㡣��

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0230a07">
��һ�����
���Ҿ��������ͺá�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0240a07">
���硫�硫��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0250a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ò����ʱ�����뿪��
����Ȼ���ˣ�������ק��Ҳ̫�鷳�ˣ��޴����֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md04/045a0260a00">
���߰ɡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0270a07">
���š���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0280a00">
���������������ˡ���

//��������
<voice name="����" class="����" src="voice/md04/045a0290a00">
���Ǹ�Ҫ��ô�죿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��Ĵָָ�򲻶��Ľ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md04/045a0300a00">
���㲻��˵Ҫ�������𣿡�

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0310a07">
��Ҳ���ء�
����������ν�ˡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0320a07">
����Σ��Ǽһ������ʲôҲ�������ˡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045a0330a01">
������������

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0340a00">
������Ҳ�ǡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0350a07">
������˱���ˡ�
����������һ���Ƚ��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0360a07">
���߰ɣ���硣��

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0370a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("@mbgm*", 1000, 0, null);

	DeleteStA(0,true);

	OnBG(101, "bg063_���ӘS��������_02.jpg");
	FadeBG(0, true);

	Wait(2000);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	SoundPlay("@mbgm12", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������������������֮ʱ��
�����ڵĻ���Խ��Ũ�ء�

������У��Ѿ������ҵ�����ɫ֮������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md04/045a0380a00">
��������ֻҪ���Ŷ����׵��Ϳ����ˣ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0390a07">
���š�
���Ѿ�û��ʲô�ܷ������ǵ�Ŀ���ˡ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0400a00">
��������Ԥ�в�׼��
�����ˣ������¾ͺá���

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0410a07">
����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0420a00">
����ô�ˣ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0430a07">
�����������ǽ������о�������
����һ��ֻ�������������£����������أ�
��硣��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0440a07">
�����Ǳߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���ҿ�������ָ�ķ���

���춥������<RUBY text="���Ǻ�">����������</RUBY>����Ȼ���衣
�������Ǵ�����ս���ɣ���һ�������������ӽ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_��ͻ�M04",1000);
	CreateWindow("�}�ݷ���", 16200, Center, 0, 1024, 400, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16200, 0, -144, "cg/bg/bg002_��a_02.jpg");
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);

	CreateTextureEX("�}�ݷ���/�}���}", 16300, 400, 0, "cg/st/3dͬ��؞_�T��_���L.png");
	SetBlur("�}�ݷ���/�}���}", true, 3, 300, 70, false);

	Move("�}�ݷ���", 0, @0, @-350, null, true);

	CreateColorEX("����", 150, "BLACK");
	Fade("����", 300, 500, null, false);

	Move("�}�ݷ���", 500, @0, @432, Dxl2, false);
	Fade("�}�ݷ���/�}�ݱ���", 300, 1000, null, true);

	Move("�}�ݷ���/�}���}", 1000, -379, -192, Dxl2, false);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md04/045a0450a00">
��ʲô�ˣ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0460a07">
�����������ɵ��Ϻ��С�
���źӹ�������ͯ�ġ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0470a07">
��������ͬ����������������ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0480a00">
��Ŷ����

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0490a07">
����������ĳ����ˡ�
�������Ǹ������ļһ��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0500a07">
����֪������������ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0510a00">
�����������˲���С���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�������ʣ��Ҿ�֪������ͯ�ĵ�������
����˵������һ��մ�״��ʣ��������ӵĸ�λ������ֻ
��Ϊ�����ŵ�һԱ�������ԭ��������ƾһ��ǹ��ɨս
����������

��������������ȫԱ�У�����ʵ��Ҳ�������Ρ�
��
�����ǣ�������ս�������Ǻš�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ݷ���/�}���}", 500, false);
	FadeDelete("�}�ݷ���/�}�ݱ���", 500, false);
	FadeDelete("����", 500, true);
	Delete("�}�ݷ�*");

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0520a07">
��ֻ��ͯ�ĺ��о�û���⡣
���������¶Ը������԰�ս��ʤ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0530a07">
�����ǡ����㿴����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����������ָ��΢�ƶ���
������ָ�����ƶ�������ǰ���������ظ�

������¶̨�ϣ�վ��һ�������Զ������������Ҳ�Ե�
�쳣�Ӵ�����ˣ�������һ�������������Ǻ���źӹ�
���Ķ��š�
�����ǡ���С��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md04/045a0540a00">
�����׵�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0550a07">
���š�
���Ǽһ�Ͳ�һ���ˡ��Ǽһ��Σ�ա���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0560a07">
�������ǹ������£�Ҳ�ѱ�������һ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0570a00">
�����Ҽ�������ͯ�ĵĻ���Σ�ձ����𡣡�

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0580a07">
��������ˡ�
��������ս�ж����׵��������ˡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0590a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0600a07">
���������´���޷����ĶԸ�����
�����<RUBY text="����">���</RUBY>�ᱻһ��ը�ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0610a00">
������������

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0620a00">
��ȥ��ʰ�ɡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0630a07">
����ʰ�ĸ�����

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0640a00">
�����������Ǻ�һͬ�Ը�����ͯ�ģ����Ƶ�
���׵���ս��
��������ֹ���������Ǻ�Ϊ�ϲ߰ɣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0650a07">
���š�
���ܹ��㵽�������Ҷ����ˣ���ֻ������ʵ��
���޷����㡣��

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0660a00">
���Һã���������ʱ��һ�Ծ��ۡ�
���������Ǻû��ᡣ��

//��������
<voice name="����" class="����" src="voice/md04/045a0670a00">
������Ҫ�������ظ󣬴򵹽��׵�����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0680a07">
������������

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0690a00">
�����µĻ��������⡣��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0700a07">
���ٺ١�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0710a00">
����������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0720a07">
���Ǽһ��ʵ����ͬ���죬
����������û��ʤ���ġ�
����������ֱ���ղš���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0730a00">
�����ھͲ�ͬ�ˣ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0740a07">
����Ӯ����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0750a07">
���Һ͸�磬������Ӯ����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0760a00">
��һ�ٴ���ʤ���Σ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0770a07">
����ʤ��ʮ�Ρ���

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0780a00">
���ܺá�
���������㡣��

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0790a00">
���ϰɣ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0800a07">
���٣�� ���򣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ڡ��ƥ饹
	SetVolume("@mbgm*", 3000, 0, null);


	CreateColorSP("��ܞ", 30000, "#000000");
	DrawTransition("��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//�����ز����⤷�Ƥ���������ģ����inc�Ѿ�
	OnBG(100, "bg071_���ӘS���ڏ������_02.jpg");
	FadeBG(0, true);


	StL(1000, @0, @0, "cg/st/st�׵�_ͨ��_�Ʒ�.png");
	FadeStL(300, true);

	DrawTransition("��ܞ", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("��ܞ");

	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0810a08">
���������С�
��ͯ�Ĵ��˹�Ȼ�޷�������

{	FwC("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0820a08">
��ֻ������ȥ�ˣ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0830a07">
���ɲ�������ȥ��
�����Ѿ��ߵ�������������ƻ��ƻ��ء���

{	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStR(300, true);
	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0840a08">
�����������!?��

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0850a08">
���㣬֮ǰ���������Щʲô������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0860a07">
��˵��������
����Ļ��ʱ���ѽ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0870a07">
����ֻ�������¡���

{	SoundPlay("@mbgm09",0,1000,true);
	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0880a08">
����������������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0890a08">
��˵�ɣ�ʲô�¡���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0900a07">
���׵���
��������ɱ��ġ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0910a08">
�����𣿡�

//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0920a08">
������ԭ�����㡣
��ı����һ�е��ˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0930a07">
�������������������������ˡ�
������һֱ���������е����ӣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0940a00">
����Ȼ�Ҽǵ�ò����̬һֱƫ��Ԥ������ˡ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0950a07">
��û�취�
�����ֻ��һ����Сʱ�ĵ�Ӱ��ͬ������һ��
����˳����Ļ����ֵ��뷨��չ�ģ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a0960a00">
��ʧ���˰�����

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a0970a07">
�������һ����Ŭ���ġ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0980a08">
���ߡ�
�����Ƕ���Ҫ������ս����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a0990a08">
�����ֵ�³ç�����Եÿɰ��ء���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1000a07">
�������˼�������������𣿡�

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a1010a08">
����ô���ܡ�
���෴����

{	FwC("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a1020a08">
��������Ҫ�����Ƿ������!!
��ϥ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ��������

	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	DeleteStA(0,true);
	CreateTextureSP("װ��", 1000, @0, @0, "cg/ev/ev952_�׵�װ��_a.jpg");
	Zoom("װ��", 0, 2000, 2000, null, true);
	SetBlur("װ��", true, 3, 300, 100, false);

//	StC(1000, @0, @0,"cg/st/st�׵�_װ��_�Ʒ�.png");
//	FadeStC(0,true);

	Zoom("װ��", 1000, 1000, 1000, Dxl2, false);
	Fade("�}�ե�", 1000, 0, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw�׵�_܊��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a1030a08">
������Ĥ�ݰ�ᦴ�������
�������������ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߡ�ϥ��

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	Delete("װ��");
	CreateTextureSP("װ��b", 1500, @0, @0, "cg/ev/ev952_�׵�װ��_b.jpg");

	StC(1000, @0, @0,"cg/st/3dϥ��_����_�i��.png");
	FadeStC(0,true);

	Wait(1000);
	FadeDelete("�}�ե�", 1000,true);

	Wait(1000);

	FadeDelete("װ��b",1500,true);

	SetFwR("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a1040a08">
���մն��ġ�
�����ƺ����Լ���ʵ���൱���š���

{	FwR("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a1050a08">
������Ҫ������֮ǰ���������Ტ�ۣ�
����ϥ���װ�ס�������ն���;������԰ɣ���

{	FwR("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1060a00">
�������ߡ�
����Ȼ�н������������ǾͲ��ò�����ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����㥭��
	OnSE("se�M��_냇��_�i��01", 1000);

	DeleteStC(150,true);

	StL(1000, @0, @0, "cg/st/3dϥ��_����_�i��.png");
	StR(1000, @50, @0, "cg/st/st�����AȾ_���L_�Ʒ�.png");
	FadeStR(150, false);
	FadeStL(150, true);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1070a07">
����ѽ��
�����Ǹ�磬Ҫ��Ļ���Ҫװ������װ���ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1080a00">
��ʲô����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1090a07">
�����ĳ��ֱ�����������̫������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1100a07">
���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1110a00">
������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1120a07">
��������Ӧ�ö��˰ɡ�
���Ѿ���Ե�ˡ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1130a07">
�������
��������װ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1140a00">
������������

{	FwC("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a1150a08">
��������Ȼ��֪������ʲô��˼��
������ֻ��˵������������һ���ɵ�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1160a07">
��������ң�
����硣��

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1170a07">
���ҵ�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����С�
�����ֳ�һ�仰��

���ҿ��ڣ�ӽ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw�����AȾ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/md04/045a1180a00">
������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`�󡣲衩��ֽ�
//��װ�ץ��������

	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	DeleteStA(0,true);

	CreateTextureSP("װ��", 5000, @0, @0, "cg/ev/ev955_���ؾ���װ��_a.jpg");
	Zoom("װ��", 0, 2000, 2000, null, true);
	SetBlur("װ��", true, 3, 300, 100, false);


	Zoom("װ��", 500, 1000, 1000, Dxl2, false);
	Fade("�}�ե�", 500, 0, null, true);

	Wait(500);

	SetFwR("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a1190a08">
����������ʲô������

{	FwR("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1200a00">
����ʨ�����⡣�蹷�Թǡ�
�������Դ���֮���顣��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�����AȾ_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/md04/045a1210a00">
����ҹ֮��������������Ѫ֮ʱ����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("װ��", 10000, center, middle, "cg/ev/resize/ev955_���ؾ���װ��_al.jpg");
	Request("װ��", Smoothing);

	OnSE("se����_����_���S03",500);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("װ��", 0, 600, 600, null, true);
	FadeF4("װ��", 200, 1000, 400, 0, 0, Dxl2, true);

	OnSE("se����_����_���S03",1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("װ��", 0, 700, 700, null, true);
	FadeF4("װ��", 200, 1000, 400, 0, 0, Dxl2, true);

	OnSE("se����_����_���S03",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	Zoom("װ��", 0, 1000, 1000, null, true);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	FadeF4("װ��", 200, 1000, 400, 0, 0, Dxl2, true);

	Wait(100);

//��װ��
//�����ߡ�����
	#av_����=true;

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 25000, "#FFFFFF");

	SetBlur("װ��", true, 1, 500, 100, false);
	Zoom("װ��", 500, 2000, 2000, Axl2, false);
	Fade("�}�ե�", 500, 1000, null, true);
	DeleteStA(0,true);

//	StR(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");
	StC(1000, @0, @0, "cg/st/3dϥ��_����_�i��.png");
	FadeStC(150, true);
	CreateTextureSP("װ��", 4900, @0, @0, "cg/ev/ev955_���ؾ���װ��_b.jpg");
	Request("�}����", Smoothing);

	Zoom("װ��", 0, 2000, 2000, null, true);
	SetBlur("װ��", true, 3, 300, 100, false);

	Wait(1000);

//	FadeStR(0,true);

	Zoom("װ��", 2000, 1000, 1000, Dxl2, false);
	FadeDelete("�}�ե�", 2000,true);

	Wait(1500);

//��������ݳ����ͥ��Ф���
	SoundPlay("@msong04_inst",0,1000,true);

	SetFwR("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/045a1220a08">
����������衣
���㵽���ǣ���

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1230a07">
��������ս���ɣ���

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1240a07">
��������������
����硪������!!��

{	FwR("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1250a00">
��������������

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1260a07">
��������������������׵�����

{	FwR("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1270a07">
�����಻�٣������ʺϵĶ��֣�
�����Ǳ�ʤ����

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/045a1280a07">
�������������ϡ�������!!��

{	FwR("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045a1290a00">
����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 1500, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 1050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 1100, 100, -144, "cg/bg/bg071_���ӘS���ڏ������_02.jpg");
	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Rotate("�}�ݷ���/�}�ݱ���", 0, @0, @180, @0, null,true);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	CreateTextureEX("�}�ݷ���/�}���}", 1110, -700, -1000, "cg/st/resize/3d���ؾ���_����_�i��ex.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Fade("�}ɫ100", 0, 300, null, true);
	Fade("�}�ݷ���/�}�ݱ���", 0, 1000, null, true);
	Fade("�}�ݷ���/�}���}", 0, 1000, null, true);

	OnSE("se���L_����_���04", 1000);
	OnSE("se���L_����_������03", 1000);
	FadeDelete("װ��", 1000, false);
	Move("�}�ݷ���/�}�ݱ���", 1500, @0, @100, AxlDxl, false);
	Move("�}�ݷ���/�}���}", 1500, -800, -200, AxlDxl, true);
	OnSE("se���L_����_������01", 1000);

	Wait(500);

	CreatePlainSP("�}��д", 4999);
	Wait(50);
	Delete("�}ɫ100");
	Delete("�}�ݷ�*");
	SetBlur("�}��д", true, 3, 500, 100, false);

	OnSE("se���L_����_��ͻ�M01", 1000);
	OnSE("se���L_����_��ͻ�M02", 1000);

	FadeDelete("�}��д", 350, false);
	Zoom("�}��д", 350, 2000, 2000, Axl3, false);

	Wait(250);

	SetBlur("@StC*", true, 1, 500, 50,false);
	SetBlur("@OnBG*", true, 1, 500, 50,false);
	Request("@StC*", Smoothing);
	Zoom("@StC*", 300, 1500, 1500, Dxl3, false);
	Move("@StC*", 300, @0, @100, Dxl3, false);
	Zoom("@OnBG*", 300, 1500, 1500, Dxl3, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���ε�������ǰ����

����ƽ�ĵ��
�����ߣ������ֻ����ĳ�������

���ն������ģ����һս��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ͻ
	CreateTextureEX("�}��", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�}��2", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	Zoom("�}��", 0, 1800, 1800, null, true);
	Zoom("�}��2", 0, 1800, 1800, null, true);
	Rotate("�}��", 0, @0, @0, @-90, null,true);
	Rotate("�}��2", 0, @0, @0, @-90, null,true);

	OnSE("se���L_����_�z_���04",1000);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_�r�g�Ƅ�.jpg", false);

	Fade("�}��", 0, 1000, null, true);
	Fade("�}��2", 0, 1000, null, true);
	Zoom("�}��", 500, 2200, 2200, Dxl2, false);
	Zoom("�}��2", 500, 2100, 2100, Dxl2, false);

	Wait(300);

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	CreateTextureSPadd("�nͻ", 15000, @0, @0, "cg/ef/ef040_�����nͻ.jpg");
	SetBlur("�nͻ", true, 3, 500, 100, false);
	Zoom("�nͻ", 0, 1100, 1100, null, true);

	FadeDelete("�}��*", 800, true);

	OnSE("se���L_�Ɖ�_���k07", 1000);

	Zoom("�nͻ", 5000, 1500, 1500, Dxl2, false);
	Shake("�nͻ", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	Wait(2000);

//������ɥ�`��

	ClearWaitAll(3000, 3000);

}

..//������ָ��
//�Υե����롡"md04_045aa.nss"
