//<continuation number="150">    

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mz01_003.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
$badEnd_Flag = true;
		if($badEnd_Flag == true){$���������� = true;$һ������ = true;$����֦���� = true;SetHex();}
		else{}
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg007_��m��·a_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mz01_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡""


//������򚢤�

//������`�ȷ�������򜺤����ʤ��ä����ϤΥХåɥ�
//����ɤȤ������ä����H�����¥��`�����

	if($badEnd_Flag == true){

	$badEnd_Flag = false;

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 10, "#000000");
	FadeDelete("�ϱ���", 0, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//��Ѫ
	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(25);

	CreateSE("SE01b","se���L_����_���̤���04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("�}��Ѫ", 20, Center, Middle, "cg/anime/Left/blood_C_6.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//��Ѫ
	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(20);

	CreateSE("SE01b","se���L_����_���̤���04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("�}��Ѫ��", 20, Center, Middle, "cg/anime/Right/blood_B_6.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����֪ɱ�˶����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//��Ѫ
	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(15);

	CreateSE("SE01b","se���L_����_���̤���04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("�}��Ѫ��", 20, Center, Middle, "cg/anime/Center/bloodA_7.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��׷�������Ǻţ�׷���ű����ѡ���ʴ�ˡ���
���ո�һ�յس������Ե��������ֹ����

����ɱ֮�˲���������
��Ҳɱ�������ǵ�����ͬ�顣

���ع��������ҵ�����ѿ���һ�ˡ�

�����������Ҫ����߱�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//��Ѫ
	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	CreateSE("SE01b","se���L_����_���̤���04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("�}��Ѫ��", 20, Center, Middle, "cg/anime/Center/bloodA_14.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ԣ��Ѿ��޷���ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//�������ޤ�

	}else{

	}

//�����¡��ҥ��󥭥�Έ��Ϥȹ���

//��ҹ�ν�·
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(10,"bg007_��m��·a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060a]
��������֪���εأ�������������ͷ��
���������ˣ����ֲ�����ָ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//װ�פޤȤ�
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	StC(50, @0, @150,"cg/st/3d����֩��_����.png");
	FadeStC(0,true);
	FadeDelete("�}�ե�", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060b]
����̾�˿���������˴�����װ����
�����븲��ȫ���װ�ף���Ϊ���ɫ֩�����̬��

��Ȼ���������
���ž��ĵ����¹�߲�������������˵�������š�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/mz01/0030010a01">
��������ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��û���κ�˵����
�������ҵ�֩��ȴ�Ѳ����

����ͬ��ͻȻ����ʲô��һ�㣬��
֩��Ҳ������˼��
���������վ������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/mz01/0030020a01">
��������ң��Ѿ�һ�������ˡ�
�������ҳ����㣬Ҳһ�����С���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mz01/0030030a00">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ס���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mz01/0030040a00">
�����ǣ�ʧȥ��̫�ࡣ��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mz01/0030050a01">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��������ס�
�������������ʵ��

������˳���ˡ�
���ֵ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/mz01/0030060a01">
����ô����ѡһ��
����ɱ���ҡ�
�����ߣ���ɱ���㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����У�����Ϥ��������
��̫�������ݶ�����

{	CreateSE("SE01b","se���L_����_������02");
	MusicStart("SE01b",0,1000,0,1500,null,false);}
����������������
��̫����������������յľ���

��������������Ȼ��

��������˴������ǽ�ѡ��Ȩ�������ҡ�
�����ǳ��⡪���ȱ������������飿�뽫
���廯������������ӳ����Щ���ơ�

�����������ס�Ƿݴ��档
����Ҫ��ס������

�������Ŀ־塪��
��
��Ȼ���Һ����ס�

��������־��ܻᵼ��ʲô�����
���Լ����һ������������ֻ�ʧȥʲô��

�����ڵ��Һ����ס�
�����������������֮ʱ������֪������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mz01/0030070a00">
�����Ѿ����ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mz01/0030080a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��Ϊ����ֹ���Ǻŵ���ɢ�ƻ���
���Һʹ�����˭��Ϊ��Ҫ��

���𰸣���֮��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="��������" src="voice/mz01/0030090a01">
���ҡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mz01/0030100a00">
���Ҳ�û������Ĵ��㣬���С�
����ֻ����Ϊ�ٿ��������㡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mz01/0030110a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��<RUBY text="����">�˴�</RUBY>���ղ�����
��֪������ʲô�¡�

��֪�����ﲢ�������塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mz01/0030120a00">
��������ְ��
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mz01/0030130a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���п־塣Ҳ�аûڡ�
����˼��������֮�¡�

���������ⶼ������ʳ�����
���ǲ�������������������ĩ�գ�
������·���ӡ�

��Ҳ�������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mz01/0030140a00">
��<RUBY text="��">���Ǻ�</RUBY>�Ͱ������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mz01/0030150a01">
�������ҷ��ģ��ض��Ϲ����ᡣ
���ҵ���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���\����
//�����Ф��塣
	CreateColorSP("�}ɫ�\", 100, "#000000");
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerdamN(@0, @0,1200);
	SL_centerdamfadeN2(10);

//���ǥåɥ����
	ClearWaitAll(3000, 2000);

//������������������������������������������������

}

..//������ָ��
//�Υե����롡""