//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_022.nss_MAIN
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
	#bg056_���L�����Tǰ_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_023.nss";

}

scene md03_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_021.nss"


//�������¡�bg056_ҹ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg056_���L�����Tǰ_03.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\",2000,true);

	Wait(500);

	StR(1000, @0, @0, "cg/st/st���L_ͨ��_�Ʒ�.png");
	StCL(1000, @80, @0, "cg/st/stһ��_ͨ��_�Ʒ�.png");
	StL(900, @-100, @0, "cg/st/st�\��_ͨ��_˽��.png");
	FadeStR(300, false);
	FadeStL(300, false);
	FadeStCL(300, true);



	SetFwC("cg/fw/fw���L_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����L��
<voice name="���L" class="���L" src="voice/md03/0220010a11">
����ʲô��Ҫ�Ķ�����
���һᾡ���ܵ�׼���ġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0220020a01">
���Ҳ���Ҫ����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0220030a02">
����Ҳ�ǡ���

{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/md03/0220040b40">
������������������
������֮��������ȫװ�����ٲ���Ҫ
�����κζ�����!?��

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0220050b26">
���Ա������е���װ���㹻�ˡ�
��ûʱ���ټ�ͬ�鵹�Ǻ��ź�������

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0220060a11">
������ҪȥǱ�룬Ҳ�������б׵İɡ���

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0220070b26">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������Ҫǰ�������ֳǡ�

��������Ϊ��ʵ�����ǵ�Ŀ�ġ�
�����ǡ���Ϊ��ȥ�����������������־��

�����ڵ������»Ό�ܰɡ�
����ʹ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����L��
<voice name="���L" class="���L" src="voice/md03/0220080a11">
����������Ŀ����Ȼ��ͬ��
�������������µ�ϣ������

//�����L��
<voice name="���L" class="���L" src="voice/md03/0220090a11">
�����������Ҵ�Ϊת��˵���������ˡ���

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0220100b26">
�����ҵ�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0220110a02">
�����㲻��������Ҳ�����ġ���

{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/md03/0220120b40">
�����岢��ִ�����
��������ͬ��������Ȼ�ģ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0220130a01">
������������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0220140a11">
����ҲҪ�����㡣
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0220150a01">
��������

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0220160a11">
���Ҷ��Ӿͽ������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0220170a01">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0220180a01">
���õġ�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0220190a02">
������������

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0220200b26">
��ʱ����ȡ�
�����ˣ����ó����ˡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0220210a02">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

}

..//������ָ��
//�Υե����롡"md03_023.nss"