//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_019.nss_MAIN
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
	#bg009_�`�}סլ��a_01=true;
	#bg007_��m��·a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_020.nss";

}

scene md04_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_018.nss"


//���`�}


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg009_�`�}סլ��a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm26", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(500);

//������
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����Ȼ����û�ܽӽ������ֳǡ�

��Ҫ�ڹ��ǵľ����м������������¡�
���ڲ����سǾ����ֵ�����·�Խ��ǽ�������ڵ��졣

������ҹɫǱ��Ҳ�ǲ����ܵġ�
���Ҳ�˵ƽʱ�������������ս��֮ʱ����ΪҪ�������
ҹϮ�������ر��Ȱ��컹Ҫɭ�ϡ�

��˵ʵ����ʵ�������޲ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md04/0190010a01">
��������������˵ɥ������ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ǰ�游��ĸ���������Լ�ȥ������ս����
�����Զ�������ս����

�������Ǽ��������ݡ�

����������֮ʱ�Ļ���Ӧ�����������ɡ�
������ֻ������Ļ�����Ȼ�ܼ򵥡�

�����ǣ���ս����Ѱ���ض���ĳ���˿϶��첻����
�����������ڿ��η��ڵĴ������롣

�������ڳǳ�����֮ǰ��öԲߡ�
�������ҵ������ĶԲߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�
//���M�v܊��

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStL(0,true);

	OnBG(100, "bg007_��m��·a_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	Wait(500);

	StR(1000, @-50, @0, "cg/st/st�ǣȣѱ�ʿ_ͨ��_�Ʒ�.png");
	StCR(1000, @150, @0, "cg/st/st�ǣȣѱ�ʿ_ͨ��_�Ʒ�.png");
	FadeStR(300, false);
	FadeStCR(300, true);

	SetNwC("cg/fw/nw�ǣȣѱ�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//����hey,dwarf! Let's play together��
//������㣯Ѳ�ر�����
<voice name="����㣯Ѳ�ر���" class="����������" src="voice/md04/0190020e117">
��Ӵ��Ϻ�Ĵ�㡣
����������ɣ���

{	NwC("cg/fw/nw�ǣȣѱ�ʿ��.png");}
//������㣯Ѳ�ر��¡�
<voice name="����㣯Ѳ�ر���" class="����������" src="voice/md04/0190030e118">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ����

	DeleteStCR(300,false);
	DeleteStR(300,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����������Ѿ�û��ô���ˡ�
������ص���լ��������ر�����Ҫ������˱�����Ѳ
�ߵ�ʿ��˵����������֤���顭���ղŵĹ㲥������
˵�ġ�

�������������ʤ�����޹�ϵ��
����֮�������㣬�����ж�Ҳ������׶��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md04/0190040a01">
���о��������������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����뷽�Ų��������ʿ����
����Ȼ��ȫ��������˵�Ļ������ӱ����������
�������״��µ���˼��

������Ǿ���ʤ��������ǰ�����Է��ɾ����˰ɡ�
��û�չ������ˡ�

�������跨�ӽ��Ǳ�����

���������ֵĽֵ��ϲ�ͣ�ر����š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0,true);

}

..//������ָ��
//�Υե����롡"md04_020.nss"