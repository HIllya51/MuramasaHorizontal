//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011c.nss_MAIN
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
	#bg036_������ͨ·_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma03_011c_routeFlag==true){$ma03_011c_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_012.nss";

}

scene ma03_011c.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_011.nss"

//������֦�Θ��Ӥ�Ҋ���Ф�

	SetVolume("@mbgm*", 2000, 0, null);

	PrintBG("�ϱ���", 25000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("�ϱ���");

	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������
����֪�Ӻδ�����һ��С���Ŀ�����

����Ȼ���ݻ������ȷ����λ����
���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ˡ�
�����������С���͡��������ξ��

��С������ȥֻ�������ꡣ
����ξ��������������С���ĸ߶�ƽ�룬
�����ʵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0010a03">
��ιι�����ӡ�
����������ʲô�ˣ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0020e279">
���������ء�
�����ء�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0030a03">
������ʲô�ˣ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0040e279">
���ء������ء����衭����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0050a03">
��������ô������

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0060e279">
�����ء���
�����������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0070a03">
�����衢�����𣿡�

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0080e279">
���������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Ի�û�г�����
����ʹ����֦С�����ŷ��ʣ���С��ֻ��һζ������
�����С�

����Ȼ�ӽ������Ŵ�ξ����ڲ�����㿴����ȷʵҲ
��ʶ�������Ĵ��ڡ�
��ɴ���̴���վ��������û�г�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0090a03">
���ǲ�֪�����赽����ȥ�˰ɣ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0100e279">
���ء����ع��ء����ء�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0110a03">
����������
�����ʲô���֣���

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0120e279">
�����ء�������
�������衭����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0130a03">
����������
�����ʲô����

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0140e279">
�������أ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0150a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060a]
����������ĳ�Ĭ֮��
����ξ�ɴ�ز�ȡ���ж���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_ʰ��01",1000);


	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060b]
��˦��С�����֣�վ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0160a03">
���߰ɣ�ɴ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/011c0170a04">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,false);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0071]
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0180e279">
��������
�������ء���!!��

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0190a03">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/011c0200a04">
��������

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0210e279">
���ȵȡ���
�����ҡ������衭����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��׷��������ȥ�Ĵ�ξ��С����ץס����ȹ�ڡ�
����ȴ������������ξ������������ӣ������
��ֻСС���֡�

��һ�����ģ�С����㵹�ڵء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0220e279">
���������ء�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0230a03">
����������ǣ�
���������������֡�һ���аɣ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0240e279">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0250a03">
��������

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0260e279">
������ƽ�������������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0270a03">
��֪���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��һ��������ת����ξ�ص�������ߡ�
�����˫�֣���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0280a03">
���Ǻ�������ɢ�˰ɡ���

{	NwC("cg/fw/nw����.png");}
//������㣯���ӡ�
<voice name="����㣯����" class="����������" src="voice/ma03/011c0290e279">
���š�����

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/011c0300a03">
��֪���ˡ��һ���������ġ�
��ɴ�������ȥ���������Ǳߡ�
�ҵ�����ϯ��������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/011c0310a04">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���ü�̵Ļ�������ֹ������������ؿ�ʼ�ж���
�����ǵ���Ӱ�ܿ���ʧ����Ұ�С�

���������Ļ���һ���ܺܿ��ҵ����ӵ�ĸ�װɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma03/011c0320a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������Ҳ��������ʱ����
�����������������á��������ڳ���
Ҳ�϶�û�����������ľٴ롣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������֦�øжȣ���
//$Kanae_Flag = $Kanae_Flag++;
	$ma03_011c_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

	Wait(500);

	ClearWaitAll(1000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_012.nss"