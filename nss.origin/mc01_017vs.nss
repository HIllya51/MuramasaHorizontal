//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_017vs.nss_MAIN
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
	#ev103_����֦����_b=true;
	#ev103_����֦����_c=true;
	#ev103_����֦����_d=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_�����ꥢ�ࡤ�Х���=true;

	$PreGameName = $GameName;

	$GameName = "mc01_018vs.nss";

}

scene mc01_017vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_016vs.nss"

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg076_�����¾���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SoundPlay("@mbgm13",0,1000,true);

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0010e206">
���������ƺ�����졣
�����ǣ��ܷ���������Ϊֹ�ء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T������
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d�˰�ʽ�o�T��_����_ͨ��.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d����ʽָ�]��_����_ͨ��.png");
	CreateTextureEX("�}���z��", 800, Center, InBottom, "cg/st/3d�ũ�ʽָ�]��_����_ͨ��.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d�ũ�ʽ�o�T��_����_ͨ��.png");

	CreateSE("SE01a","se����_����_�z�i��04");
	CreateSE("SE01b","se����_����_�z�i��04");
	CreateSE("SE01c","se����_����_�z�i��04");
	CreateSE("SE01d","se����_����_�z�i��04");

	SetVertex("�}���z*", Center, bottom);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 1000, 1000, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);

	Move("�}���z��", 0, @-360, @0, null, true);
	Move("�}���z��", 0, @-130, @0, null, true);
	Move("�}���z��", 0, @150, @0, null, true);
	Move("�}���z��", 0, @460, @0, null, true);

	Request("�}�}�z*", Smoothing);

	MusicStart("SE01a",0,800,0,1000,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Wait(100);

	MusicStart("SE01b",0,800,0,1000,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Wait(100);

	MusicStart("SE01c",0,900,0,900,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Wait(100);

	MusicStart("SE01d",0,1000,0,750,null,false);
	Fade("�}���z��", 300, 1000, null, true);

	WaitKey(500);

	SetFwC("cg/fw/fw����֦_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//����������οڵѤǡ�
//���o����ä��顸�����_���Ҥ������ˡ�
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0020a03">
��������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣơ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0030e207">
�����Ǻ�����Цһ��Ļ��氡������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0040e206">
��Ӧ�ýж��βŶ԰ɡ�
����������һ��Ů��
��ǹƥ�����������𣿡�


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣǡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0050e208">
����Щ���ڵ����ˡ�
���������µĹ��壬����Ӧ��
���������ػ��ɡ���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣȡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0060e209">
������������׾ͱ������ߴ򵹣�
�����ǵĳ��衭����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0070a03">
��Ҫ����������������ʶ����
��û�����ξ���û�������ġ����˵�����
Ҳ��û�е�Ӵ����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣǡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0080e208">
��˵�úã���λС�㡣��


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣȡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0090e209">
��û��
������������ʣ��Ҳ���Ҫ׷�����ˡ�����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣơ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0100e207">
�������ֱ����п�Ķĳ�������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0110a03">
�����ϸ�λ������
������֮���սʿ�ǡ���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣơ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0120e207">
��ȷʵͦ����Ȥ�ġ���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0130e206">
�����Ȼ�ܡ���ɱ¾���ˡ�
���������е�������ֻ��һ����ǹ����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0140a03">
���ǰ���
���Һܰ����ء���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0150a03">
�����ǣ��Ҳ�̫ϲ��ǹ���жԷ�
�ĸо���
��ɱ�˵�ʱ�򣬻��ǳ��ֿ�ȭ����ˡ���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0160a03">
��������������˫�֡���
�������Է�������ˡ���


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�v��ꠣơ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0170e207">
������������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣǡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0180e208">
���ղţ��������𣿡�


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣơ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0190e207">
�������˰�������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0200e206">
������С���㡣
���Ⱥ�ɱ�ˣ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0210a03">
���ǵġ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0220a03">
��ɱ�ˡ���
������ϲ���ˣ���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0230e206">
��������ɱ�أ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0240a03">
����ѽѽ���Ҷ������ء�
����һ����ɱ�˸����ɡ���


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0250a03">
����������һ�¾����������ء���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0260e206">
��̫���ˡ����Ҿͷ����ˡ�
������ְ�أ��Ҳ��ܱ�ɱ��
�����ɱ����Ļ������������ܹ������ġ���

//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0270e206">
���������Ƕ������˰ɡ�
������ֻ��ȫ���˷��ĸ����
�ݺݵ���һ�١���



{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣȡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0280e209">
���˽⡣��


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣǡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0290e208">
���������Ǹ�ɱ���е��ϧ��
Ů���𣿡�


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣơ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0300e207">
�����滳�����ϲ�á�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T�����i��
	CreateTextureEX("�}���z�i����", 700, Center, InBottom, "cg/st/3d�˰�ʽ�o�T��_����_�i��.png");
	CreateTextureEX("�}���z�i����", 600, Center, InBottom, "cg/st/3d����ʽָ�]��_����_�i��.png");
	CreateTextureEX("�}���z�i����", 800, Center, InBottom, "cg/st/3d�ũ�ʽָ�]��_����_�i��b.png");
	CreateTextureEX("�}���z�i����", 600, Center, InBottom, "cg/st/3d�ũ�ʽ�o�T��_����_�i��.png");

	CreateSE("SE01a","se�M��_냇��_�i��01");
	CreateSE("SE01b","se�M��_냇��_�i��01");
	CreateSE("SE01c","se�M��_냇��_�i��01");
	CreateSE("SE01d","se�M��_냇��_�i��01");

	SetVertex("�}���z�i��*", Center, bottom);
	Zoom("�}���z�i����", 0, 900, 900, null, true);
	Zoom("�}���z�i����", 0, 840, 840, null, true);
	Zoom("�}���z�i����", 0, 1000, 1000, null, true);
	Zoom("�}���z�i����", 0, 840, 840, null, true);

	Move("�}���z�i����", 0, @-360, @0, null, true);
	Move("�}���z�i����", 0, @-130, @0, null, true);
	Move("�}���z�i����", 0, @150, @0, null, true);
	Move("�}���z�i����", 0, @460, @0, null, true);

	Request("�}�}�z*", Smoothing);

	CreatePlainSP("�}��д", 610);
	MusicStart("SE01a",0,800,0,1000,null,false);
	Fade("�}���z�i����", 0, 1000, null, false);
	Wait(50);
	MusicStart("SE01b",0,800,0,1000,null,false);
	Fade("�}���z�i����", 0, 1000, null, false);
	Delete("�}���z��");
	Delete("�}���z��");
	FadeDelete("�}��д", 150, true);

	CreatePlainSP("�}��д", 710);
	MusicStart("SE01c",0,900,0,900,null,false);
	Fade("�}���z�i����", 0, 1000, null, false);
	Delete("�}���z��");
	FadeDelete("�}��д", 150, true);

	CreatePlainSP("�}��д", 810);
	MusicStart("SE01d",0,1000,0,750,null,false);
	Fade("�}���z�i����", 0, 1000, null, true);
	Delete("�}���z��");
	FadeDelete("�}��д", 150, true);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0310a03">
����ѽѽ��
��Ҳ����˵�����Ҫһ��ȡ�����𣿡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0320a03">
��������������ֻ��һ�Ρ�
���������ѡ�������Ҳ���ͷ�۵ġ���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0330e206">
�����Ȼ�����Ǹе���������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0340a03">
����΢��Щ���С�ò����𡣡�


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0350a03">
�������ղ���ʹ����ǫ��ı����ַ�Ӵ��
���������﷨����Ŷ����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0360e206">
���ߡ�
����������Ů����ɱ��ʿ���ǣ�
Ҳ�ܲ����ɡ���


{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0370a03">
����ʧ��
��ץס�������ֳ�����Ů����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0380e206">
���������������˲�����
����������������һ���������ġ������
���ϣ�ֻ��ӵ���������˲��ܽ��Լ���ϲ
��ǿ�����ˡ���

//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0390e206">
������������ҽ�Ҫ�����Դ���������
����û��Թ�԰ɣ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0400a03">
����������
��û���Ⱑ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0410a03">
����ȷ��û�˻������ǿ����˵�������
�ء������൱����˵�������������
��û�����������������޵Ĺ��򡣡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0420a03">
�������������ǵĶ���֮ʱ��Ҳ����
��������ͬ�Ĺ���
��Ϊ�˱��������޵ľ��⡣�ӽ�����һֱ
�����ţ���Ȼ����Ҳ��ô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 0, null);

//���ţ֣�����֦������ȥ�Х�
	CreateWindow("�}��", 10000, 0, 138, 1024, 300, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	CreateTextureSP("�}��/kana", 11000, 0, Middle, "cg/ev/resize/ev103_����֦����_bm.jpg");
	Move("�}��/kana", 0, @-200, @-200, null, true);

	Move("�}��/kana", 2000, @-200, @+100, Dxl1, false);

	Zoom("�}��", 1500, 1000, 1000, null, true);

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯�v��ꠣǡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0430e208">
������������������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0440e206">
������ʲô��˼����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0450a03">
�����һ����
�����С�£������ᷴ�԰ɣ���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0460e206">
������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0470a03">
���Դ�������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ꥢ�ࡤ�ƥ������Υ���ȥ�Х����ॢ���
//���K�˴���
	Zoom("�}��", 1500, 1000, 2000, null, true);
	CreateTextureSP("�}EV100", 9000, Center, Middle, "cg/ev/ev103_����֦����_b.jpg");

	FadeDelete("�}��/kana", 1000, true);
	Delete("�}��");

//��������ݳ�����`���ӥ�ƥ��{���Τ����ݳ�������
/*
	SoundPlay("@mbgm07",0,1000,false);//���ߩ`ע�⣿
	$�Еr�g=RemainTime("@mbgm07");
	WaitKey($�Еr�g);

*/
	SoundPlay("@mbgm07",0,1000,true);

	$���� = RemainTime("@mbgm07");
	$�ץ쥤������ɥ����ꥢ�� = true;

	$SYSTEM_l_button_down = false;
	$SYSTEM_keydown_enter = false;

	while($�ץ쥤������ɥ����ꥢ��){

			if($SYSTEM_l_button_down || $SYSTEM_keydown_enter){
				CreateColorEX("�}�\Ļ��", 15000, "Black");
				SetVolume("@mbgm07", 1500, 0, null);
				Fade("�}�\Ļ��", 1000, 1000, null, true);
				WaitPlay("@mbgm07*", null);
				WaitKey(1000);
				FadeDelete("�}�\Ļ��", 1000, true);
				$�ץ쥤������ɥ����ꥢ�� = false;
			}
				$�F������ = PassageTime("@mbgm07");
			if($�F������ == $����){
				SetVolume("@mbgm07", 1000, 0, null);
				$�ץ쥤������ɥ����ꥢ�� = false;
			}
			if($SYSTEM_skip){
				SetVolume("@mbgm07", 1000, 0, null);
				$�ץ쥤������ɥ����ꥢ�� = false;
			}
	}


	SetVolume("@mbgm*", 1000, 0, null);

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯�v��ꠣơ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0480e207">
�����׸��Լ��İ��������ԣ�������ֵ�ѡ������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0490e206">
�������������𣿡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0500a03">
���š�
���ǳ����⡪����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`�󡣥���ȥ�Х����z�ѩ`�Ĥ˷��x
//������֦���܇��
	CreateSE("SE01","se����_�z_װ��04");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");
	Delete("�}EV*");
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev103_����֦����_c.jpg");
	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0510a03">
���������ԡ�
��Ҳ����������ɡ���

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣȡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0520e209">
����������ʲô!?��


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣǡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0530e208">
������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ����`��
//��ٞ���}�Х���
//�����֤��L��������˥��`��ɥܩ`����
	#av_�����ꥢ�ࡤ�Х���=true;

	CreateSE("SE01","se����_�z_װ��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");
	CreateTextureEXadd("�}�ţָ�", 4010, Center, Middle, "cg/ev/ev103_����֦����_d.jpg");
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev103_����֦����_d.jpg");

	Fade("�}�ţָ�", 0, 750, null, true);
	Zoom("�}�ţָ�", 0, 1250, 1250, null, true);

	Zoom("�}�ţָ�", 3500, 1000, 1000, DxlAuto, false);
	FadeDelete("�}�ţָ�", 3500, false);
	FadeDelete("�}ɫ��", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0540a03">
������˵�ˡ�
�������������ʥ����װ�����������׸��ҵ�
���ˡ���Ҳ�������ǵİ���������

//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0550a03">
�������ƺ�����ϲ����
�����������ұȽ�ǿ������ҽ߾�ȫ��
���Լ���ϲ��ǿ�Ӹ����ǰɡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/017vs0560a03">
�����԰ɣ���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/017vs0570e206">
��ɱ����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 10000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdown2(10010,@0, @0,1500);
	SL_rightdownfade2(10);

	WaitPlay("SE*", null);

	ClearWaitAll(0, 0);

..//������ָ��
//�Υե����롡"mc01_018vs.nss"

}


