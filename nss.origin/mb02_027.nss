//<continuation number="120">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_027.nss_MAIN
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
	#bg068_���ӘS���ڲ���_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_028vs.nss";

}

scene mb02_027.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_026vs.nss"

//�����ϡ��@�Ӥβ���
//���ӣţ����䣫�ɤ��Ф�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg068_���ӘS���ڲ���_03.jpg");
	CreateSE("SEL01","se����_����_������L��01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	CreateVOICE("����㣯Ļ����ʿ��","mb02/0270040gousei");
	MusicStart("����㣯Ļ����ʿ��",2000,500,0,1000,null,false);

	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1500, true);

	Wait(3000);

	SetFwC("cg/fw/fw�@��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0270010b28">
���������ǡ�����


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0270020b28">
������������


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0270030b28">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����¤Υܥ����ϡ��ˤ��֤��ƣӣŒQ���ǄI��
//���ƥ����ȳ����ʤ���

//����������������¤�������һ�ĤˤޤȤ������������ӛ��CreateVOICE��ʹ�á�

/*
	SetNwC("cg/fw/nw��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯Ļ����ʿ����
<voice name="����㣯Ļ����ʿ��" class="����������" src="voice/mb02/0270040e266">
�������˺���!?
��ι����ô�ˣ���


{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯Ļ����ʿ�¡�
<voice name="����㣯Ļ����ʿ��" class="����������" src="voice/mb02/0270050e267">
�����ϣ�����ҹϮ��
�����˼��ϣ���


{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯Ļ����ʿ�á�
<voice name="����㣯Ļ����ʿ��" class="����������" src="voice/mb02/0270060e268">
���ź��н����˰���!?��


{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯Ļ����ʿ�ġ�
<voice name="����㣯Ļ����ʿ��" class="����������" src="voice/mb02/0270070e269">
������ı����
���������ɴ��ˣ���


{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯Ļ����ʿ����
<voice name="����㣯Ļ����ʿ��" class="����������" src="voice/mb02/0270080e266">
��ʲô!?��


{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯Ļ����ʿ�¡�
<voice name="����㣯Ļ����ʿ��" class="����������" src="voice/mb02/0270090e267">
�����ԣ������Ƿ���
����Ļ�ɾ�Ȼ��ҹ͵Ϯ����


{	NwC("cg/fw/nw��ʿ��.png");}
//������㣯Ļ����ʿ�á�
<voice name="����㣯Ļ����ʿ��" class="����������" src="voice/mb02/0270100e268">
��ͯ�Ĵ��ˣ�
��ͯ�Ĵ��˺��ڣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//���������ޤǡ�
//�����á��ǈ��ӣ�

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���\����
<voice name="�\��" class="�\��" src="voice/mb02/0270110b26">
��������㣬
�������ݡ���


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0270120b28">
��ʲô����


</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 1000, 0, null);
	SetVolume("����㣯Ļ����ʿ��", 1000, 0, null);
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_028vs.nss"