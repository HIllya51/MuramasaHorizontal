//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004end.nss_MAIN
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
	#bg086_����_01a=true;
	#ev128_�����ι�_g01=true;
	#ev947_�����ؓĚ���=true;

	$md05_�����ݳ�=false;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#��̽���K�� = true;

	$PreGameName = $GameName;
	$GameName = "md05_005.nss";

}

scene md05_004end.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu03cba.nss"

	PrintBG("�ϱ���", 30000);
//������礬���뤿�� inc�Ѿ�
	CreateColorSP("�\", 90, "BLACK");

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	Delete("�ϱ���");

	SoundPlay("@mbgm11", 0, 1000, true);


	SetFwC("cg/fw/fw�����AȾ_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md05/004en0010a00">
���ϰɡ���������
����ı������Ѿ������ˣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/004en0020a01">
���������ǡ���
��Ҫ���ҡ���û����Ļ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0030a00">
���㻹ȱ��ʲô��
���ֽš����ࡢ�����𣿡�

{	FwC("cg/fw/fw�����AȾ_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0040a00">
����ô�������С�
��ɱ���谭֮�ĺ󣬲�����ҵ��ź���
ȫ�������С�����

{	FwC("cg/fw/fw�����AȾ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0050a00">
��ʹ�ðɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��װ��
//�����ߡ�����

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	OnSE("se����_�z_װ��03",1000);
	Fade("�ե�å����",0,1000,null,true);

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateWindow("�}��", 1500, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 1510, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 1520, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 1610, Center, -120, "cg/st/3d�����|��_����_ͨ��.png");

	Fade("�ե�å����",1000,0,null,true);

	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md05/004en0060a01">
���������ǣ�
������ġ�����

{	FwR("cg/fw/fw�����AȾ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0070a00">
����<RUBY text="����">����</RUBY>����

//��������
<voice name="����" class="����" src="voice/md05/004en0080a00">
���ҵ����Ψһ�м�ֵ�Ķ���������������
��ս������־��
�������־�����������

{	FwR("cg/fw/fw�����AȾ_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0090a00">
���������������ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������ȱ��

����������
���м�����
���ж�־��
��û�õĸ����Ѿ�������

���޵е��������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md05/004en0100a01">
���������ǡ�����

//��������
<voice name="����" class="��������" src="voice/md05/004en0110a01">
������ǣ�����һ��ս����!?
����������

{	FwR("cg/fw/fw�����AȾ_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0120a00">
��û����

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0130a00">
����������ǰ˵����������
���㲻���ҵı����ߡ���

{	FwR("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0140a00">
�����ǹ�ͬս����ͬ�顣û��ɣ�
�����뱣���ҡ�����ҡ�
����<RUBY text="����������">ʹ��������</RUBY>��ȡ��ʤ����!!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/004en0150a01">
�������ҵ�ְ�𣬲����Ǳ����㡣��

//��������
<voice name="����" class="��������" src="voice/md05/004en0160a01">
���ҵģ�ְ���ǡ�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0170a00">
���ϰɣ�������
��ʵ�����ǵ�Ŀ�ģ���

{	FwR("cg/fw/fw�����AȾ_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/004en0180a00">
��<RUBY text="������">�Ǿ���</RUBY>���ѡ�!!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/004en0190a01">
��������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ι�
//�����ġ����Ф��㡣
//������������ۥ磻�ȥ�����

	CreateTextureEX("�}����10", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");
	Fade("�}����10", 1000, 1000, null, true);
	WaitKey(300);
	OnSE("se���L_����_�����02",1000);
	CreateTextureEX("�}����20", 2100, -300, -50, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	Fade("�}����20", 300, 1000, null, true);
	Fade("�ե�å����",1000,1000,null,true);
	Delete("�}����10");
	Delete("�}��");
	OnSE("se���L_����_���̤���05",1000);
	CreateTextureEX("�}�ţ�15", 2500, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade("�}�ţ�15", 50, 1000, null, true);
	Delete("�}����20");
	Fade("�ե�å����",1000,0,null,true);

	FadeDelete("�}�ţ�*",1500,true);


	OnSE("se����_��_���}���Z����01", 1000);


	WaitKey(1500);

	OnSE("se����_�z_�ҤӸ��02", 1000);


	Fade("�ե�å����",1000,1000,null,true);
	SetVolume("@mbgm*", 1000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������û��
  ����Ǵ򵹴ն��⡪�����Ǻŵķ���ʽ��

��ɱ�����ң���Ϊ���ޣ��Ӷ��ַ����ˡ�

�����ҵ����

��Ӣ���������ң�����ɱ��ħ���������硣

�������ˡ�
���ú�˼�����е�<RUBY text="����">����</RUBY>��
��
��������

������ֻ��һ��Ҳ�ã�������
������ģ������������㡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����񥯥ꥢ
..//������ָ��
//�Υե����롡"md05_005.nss"

}


