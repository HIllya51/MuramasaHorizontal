//<continuation number="70">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_014.nss_MAIN
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
	#bg041_Ƭ������_01=true;
	#bg049_�������_סլ��a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_015.nss";

}

scene mb03_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_013.nss"

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ƽ�ȵĺ���֮�����ǵ������ְ���
�����ռƻ����ϰ�ʿʻ�����š��������غ������ߡ�

����ϰ־Ұ����������
��λ�ڷ��ܰ뵺������С�����þ�����ǰ����

���������������䣬����ĺ��粢�������Եֿ�����
·�ߵû���˳����
����Ȼʱ��ʱ��Ļ�������������Ҳû����ʲô�鷳��
�����¸��ա�

����������˳������Ŀ�ĵ��ˡ�
��
��
������������Ԥ�ڣ��᲻��Ϊʱ���硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ100", 1500, "BLACK");


//���ӣţ��o������
	CreateSE("SE01","se�ճ�_�Cе_�o��ͨ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);
	CreateSE("SE01","se�ճ�_�Cе_�o��ͨ��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("�ϱ���");
	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯ʮ�ܣ¡�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/0140010e112">
��ϰ־Ұ�ֶӡ�����ǰ�����档
������Ŀ�ꡣ��


//������㣯ʮ�ܣ¡�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/0140020e112">
������ȷ�ϡ������ֵܡ���λ��
��û������֮�ˡ���


//������㣯ʮ�ܣ¡�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/0140030e112">
�������������ָʾ��{Wait(2500);}<BR>��
�������ס����ռƻ���ӭ��Ϯ������


//������㣯ʮ�ܣ¡�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/0140040e112">
��������ʼ��ս����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o������
	CreateSE("SE01","se�ճ�_�Cе_�o��ͨ��05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	Wait(2000);

//���ذ������m����ʹ���ؤ���bg049�Ȥ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg049_�������_סլ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Ϊ��˳������С������Ȼ���������̴����ͷ��
��������������������ذ���·���������жΣ���С��
����һ�ֶ�����������������ǰ���ˡ�

������С������������ʮ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb03/0140050a00">
������������ô���¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��һ�������������صĻ��������˻��ɡ��Һ�һ��ά��
ԭ��װ����ͨ·�˲��Ͻӽ���������Ȼ��������֮��
����̤�����෴�ķ���
�����������������ȥ�Ļ��ͻ᷵���ְ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0140060a02">
����΢������һ�㲻���и���������Ҫ��Ҫ
������ȥ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0140070a00">
������ô�졣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������֣������׼����ǰ�����ܺ�ˮԡ�Ŀ��ˣ�
��Ϊ���ڵĹ�ϵ�����ſ���ȸ�������㻹��Ӫҵ��
�����������������¶Բߣ���ط������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 1000);

}

..//������ָ��
//�Υե����롡"mb03_015.nss"