//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mz01_002.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$����֦���� = true;
	$Kanae_Dead = true;
	$Kanae_Flag = 0;
	$��ȫ����֦���� = true;

	$GameName = $Next_deadGame;
//	$GameName = "mz00_001.nss";

}

scene mz01_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡""

//������֦�򚢤�

//�􄇓ġ����Ф���
//���|�ġ��Ф���`��
//��Ѫ�����֤���`��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 100, "#000000");
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	CreateSE("SE01b","se����_Ѫ_�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ݱ���", 1000, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("�}�ݱ���", 0, 1250, 1250, null, true);
	SetBlur("�}�ݱ���", true, 3, 500, 200, false);
	FadeFR2("�}�ݱ���",0,750,200,0,0,50,AxlDxl, false);

	CreateSE("SE01c","se���L_�|��_ȭ�|�k�h01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ��", 2000, "#FFFFFF");
	Fade("�}ɫ��", 100, 1000, null, true);

	FadeDelete("�}�ݱ���", 300, false);
	FadeDelete("�}ɫ��", 300, true);

	CreateSE("SE01d","se���L_����_���̤���03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫѪ", 2000, "#CC0000");
	Fade("�}ɫѪ", 100, 1000, null, true);
	FadeDelete("�}ɫѪ", 300, true);

	WaitKey(300);

	CreateSE("SE01e","se����_�ҥ���_�Қ�03");
	MusicStart("SE01e",0,1000,0,1000,null,false);
	SL_leftdam(@0, @0,1000);
	SL_leftdamfade2(10);

	WaitPlay("SE*", null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ɱ�˴�������֦��
������ɱ������

��������������š�
���б���ɱ���������Ŀ�С���ɱ��ʱ�ĸд�
������Ϊ����ע�����������ֻ�ܰ����ඳ�ᣬ
���������������

�����ٵ�������������ܵ�ɱ�⡣
�����ܵ���������в���Ӷ��������вת��Ϊ������

���Ҵ��Ͽա���󷢶�Ϯ����˲�䡣
���¾���ս����������һ�˲����ɱ����
��ǹ�ų�һ����

����ֱ������Ԥ�е��ᷢ��һ�㡣
����ǹ��Ԥ��װ�����ӵ���
��������ʶ��Ϯ���ߵĴ���Ҳû�а�־��š�

�����˹����ȥ��
����������������ϣ���Ȼ����һ˿���

��ֻ�����
����֪ս�ܺ�ı��顣
��
��ʿ���ı��顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030a]
//��������
<voice name="����" class="����" src="voice/mz01/0020010a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030b]
�������ˡ�

����������û�������ҡ�

������ʵ�������ҵĻ��ԡ�
��ʶ�������ࡣ

��������Ϊʲô����
���ᱻ����ɱ��

��Ϊʲô��<RUBY text="����������������">��ԭ�����ҵ�����</RUBY>��

����������ɱ���ҡ�
����������ˡ����֮ǰ���Ѷ����������ɣ�

��Ϊʲô����
��
�������ѵ���

�������룬<RUBY text="��������">��������</RUBY>����

�������Ƿ��Ѷϡ�
����������֦���޷��ش��ҵ����ʡ�

����Ψ�и�������ʬ����
������ʧȥ�˱�����ʧȥ��Ů����һ��ʵ����п־塣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(3000, 2000);


//���ҥ����棺����֦�ڤ˥���ީ`��

}

..//������ָ��
//�Υե����롡""