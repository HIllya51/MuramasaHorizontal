//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_009.nss_MAIN
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
	#ev220_�衩�������=true;
	#bg097_ܥԽ�����ھ����β���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_010.nss";

}

scene md02_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md02_008.nss"


//���衩�������
//���ӣţ�����ħ����������ͤ�ˡ�
//�����ߣ��ݳ�һ��
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	CreateTextureSP("�衩�������", 15000, @0, @0, "cg/ev/ev220_�衩�������.jpg");
	Zoom("�衩�������", 0, 1500, 1500, null, true);
	CreateTextureEX("�衩������磲", 15000, @0, @0, "cg/ev/ev220_�衩�������.jpg");
	Zoom("�衩������磲", 0, 1500, 1500, null, true);
	DrawEffect("�衩�������", 50, "LowWave ", 0, 100, null);
	DrawEffect("�衩������磲", 50, "SuperWave", 0, 500, null);
	SetFont("����", 22, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("�}�Ҥ�", 16000, 50, 20, 700, 500, "���Ҿ���������");
	SetAlias("�}�Ҥ�","�}�Ҥ�");
	Move("�}�Ҥ�", 0, 450, 230, null, true);
	Fade("�}�Ҥ�", 0, 0, null, true);
        

	Delete("�ϱ���");

	OnBG(100, "bg097_ܥԽ�����ھ����β���_01.jpg");
	FadeBG(0, true);

	CreateSE("�ܤ��`", "se����_������_�����01");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���02");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	MusicStart("�ܤ��`",2000,1000,0,500,null,false);

	FadeDelete("�\Ļ��",2000,true);

	Wait(2000);

	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(100);
	Fade("�衩������磲", 0, 0, null, true);
	Fade("�}�Ҥ�", 0, 0, null, false);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(2000);

	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(100);
	Fade("�衩������磲", 0, 0, null, true);
	Fade("�}�Ҥ�", 0, 0, null, false);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(50);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(150);
	Fade("�衩������磲", 0, 0, null, true);
	Fade("�}�Ҥ�", 0, 0, null, false);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(2000);

	MusicStart("�Υ�����",0,1000,0,1000,null,true);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	Wait(100);
	Fade("�衩������磲", 0, 500, null, true);
//	Fade("�衩������磲", 0, 0, null, true);
	Fade("�}�Ҥ�", 2000, 0, null, false);
	Wait(3000);

//�����˺Ϥ碌�ơ����Ҿ������������ãǱ�ʾ��С������
//�����ݳ������С�inc�Ѿ�

	SetVolume("�Υ�����", 3000, 0, null);
	SetVolume("�ܤ��`", 3000, 0, null);

//����
	FadeDelete("�衩�������*",3000,true);
	Delete("�衩�������*");
	Delete("�}�Ҥ�");
	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������������ʵ�������
���Դ������ʹ�����š�

���������˷ǳ������Ρ�
����ȫû�������κμ��䡣Ҫ��ج�εĻ���
������û�м�������

������������Ѿ������ˡ�
��֩����̬�Ĵ���������ߡ�

������Ҫ����ʱ���Ŵ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`��
	OnSE("se�ճ�_����_���饤���_��01", 1000);

	SetNwC("cg/fw/nwŮ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯ܥԽŮ�С�
<voice name="����㣯ܥԽŮ��" class="������Ů��" src="voice/md02/0090010e259">
�����硣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0090020a00">
�������硣��

{	NwC("cg/fw/nwŮ��.png");}
//������㣯ܥԽŮ�С�
<voice name="����㣯ܥԽŮ��" class="������Ů��" src="voice/md02/0090030e259">
���緹�Ѿ�׼���ã�������Ҫ�𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0090040a00">
�������õġ���

{	NwC("cg/fw/nwŮ��.png");}
//������㣯ܥԽŮ�С�
<voice name="����㣯ܥԽŮ��" class="������Ů��" src="voice/md02/0090050e259">
�����ס�
�����Ժ򡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0090060a00">
�������н��������Ķ�����

{	NwC("cg/fw/nwŮ��.png");}
//������㣯ܥԽŮ�С�
<voice name="����㣯ܥԽŮ��" class="������Ů��" src="voice/md02/0090070e259">
���ոճԹ��緹��ִ����ȥ�ˡ�
����ʲô�µĻ��ҿ��Դ�Ϊ���硣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0090080a00">
�������������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md02_010.nss"