//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045b.nss_MAIN
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
	#ev128_�����ι�_g01=true;
	#bg105_���T�����ڂ�_02=true;
	#ev230_�������㤯�����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_046.nss";

}

scene md04_045b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md04_045.nss"

//��������ݳ��������ǤϤޤ��AȾ״�B�ˤ��ޤ���ɭ�u�˳Мg��

//��ΤƤ��ʤ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("��", 10, "WHITE");

	SoundPlay("@mbgm31", 0, 1000, true);


	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ܹ�������
��
��
����������

��Ҫ������ô˵�Ļ��������û��ô�����ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�����ι�

	EfRecoIn1(18000,600);

	CreateTextureEX("�}����", 1000, @0, @0, "cg/ev/ev128_�����ι�_a01.jpg");
	Fade("�}����", 0, 1000, null, true);

	EfRecoIn2(300);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��Ϊ���ػ��⡣Ϊ�����ȹ⡣
��ֻΪ����Щ�Ҳ��ܻ���ȥ��

�����������İ�����

��ֻҪһ�仰��
��ֻҪ˵��һ�仰�����ܵõ�����

�������������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);


	Delete("�}����*");

	EfRecoOut2(600,true);


//���������w��⏴�����դ��Ȥդʡ��L���Ҿ����Lħ
//��С̫�ɡ���·�١���·׿�����`���å�����


	CreateSE("SE01","se�M��_����_�ե�å���Хå�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, Axl2, true);

//yuuhi

	CreateColorSP("�}ɫ�\��", 18000, "#000000");
	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/st���w_ͨ��_�Ʒ�.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @-256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);

//suzukawa

	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/st⏴�_ͨ��_�Ʒ�.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/st⏴�_ͨ��_�Ʒ�.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);

//�դ�

	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/st�դ�_ͨ��_˽��.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @-256, @0, null, true);


	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);

//�դ�

	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/st�դ�_ͨ��_˽��.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);


//�L��

	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/st�L��_ͨ��_�Ʒ�.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/st�L��_ͨ��_�Ʒ�.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @-256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);

//�Lħ

	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/stС̫��_ͨ��_˽��.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/stС̫��_ͨ��_˽��.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);
	
//��
	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/st��_ͨ��_˽��.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/st��_ͨ��_˽��.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @-256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);

//׿
	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/st��·_ͨ��_˽��.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/st��·_ͨ��_˽��.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);
	
//���`���å�

	CreateTextureSP("�}�����}", 18100, Center, InBottom, "cg/st/st���`���å�_ͨ��_�Ʒ�a.png");
	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/st���`���å�_ͨ��_�Ʒ�a.png",false);
	SetAlias("�}�����}��","�}�����}��");
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}�����}*", 0, @-256, @0, null, true);

	Fade("�}ɫ��", 30, 0, null, true);
	Wait(150);
	Fade("�}ɫ��", 30, 1000, null, true);

	Delete("�}�����}*");
	Delete("�}ɫ�\��*");

	FadeDelete("�}ɫ��", 1600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���Ҽǵá�

���ǵ���˫���ϵ�������

���ǵ�Ѫ��ζ����

���ǵ���ǰ������Ϣ��

���ǵ�ͫ�ױ�ÿ��飬ʧȥ��â�����ӡ�

���ǵ�������������

��������Ϊ�Σ�ɱ�������أ�
��
���������ǡ���

������û���κν�ڣ��ܹ���ɱ�������ǣ�������
�������ϵ������Ǳ�⡣
������ƾ�Լ�һ�˾���ɱ�����ǣ��������ɺ������壬
�����޷��ӱ�����Ͳþ���

��ɱ�����ǵ����ɣ�ֻ�ж����Լ��������塣

�������ҡ�
��
������Ϊ�˲��ø�������ȥ����ɱ�����ǡ�

��Ϊ�˲������Ǻŵ��ֶ���ֳ��
���õ����ѡ������ߣ��뽫���������ʵ�����Ȼ����
�������һ�ˡ�����ѡ�����������������ǵ�ͷ­��

�������ǣ�����������ز����������ǺŵĴ��ڡ���
�����ǵ������к������ء�

��������Ϊ�ҵ����ۣ����ǵ��������ú��޼�ֵ��
��������������ǵ��ң�Ҳ��������ȥ������Ļ���

�����ǣ�
�����ǵ�������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md04/045b0010a00">
���첻����

//��������
<voice name="����" class="����" src="voice/md04/045b0020a00">
���Ұ첻����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������Ƿ�ᱻ��ˡ��
�������Ƿ��������ء�

����Խ��Щ����

���Ƕ��ǰ첻���ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md04/045b0030a00">
����Ϊ��<RUBY text="����">����</RUBY>�����ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ü�ֵ���������ǵ�������
���϶�������ʲô�����Ƚ���Ҫ��

��������֮��ն�������ǡ�
��
��
�����ԣ��ҷ�˵���ɡ�

��˵����<RUBY text="������������������������">������Ϊ�����ȸ����˶���</RUBY>��仰��
��
����Ϊ�����ö��ߵ��ң���������ؽ���������������
�ߺ���ȥ����!! 


���������ǡ���
����������!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������ѳ�
//�����AȾ�r���åƥ����ȥܥå�����ʹ�ä��Ƥ�������
//���ϡ���������Ԫ�ˑ���

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se����_��x_�k��04", 1000);
	CreateColorSP("��Ļ", 25000, "WHITE");
	DrawTransition("��Ļ", 300, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	DeleteStL(0,true);

	OnBG(100, "bg105_���T�����ڂ�_02.jpg");
	FadeBG(0, true);

	DrawTransition("��Ļ", 300, 1000, 0, 100, null, "cg/data/circle_01_00_0.png", true);
	FadeDelete("��Ļ",1500,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����ʶ�ع����ʱ������е������ص�ʧ���С�
�������ʱ��Ϳռ������ϵ�ɡ��޷�����ʵ�ռ��϶�
Ϊ��ʵ�ռ䡣

������Ϊ�����Ǻŵľ�����Ⱦ�н���˰ɡ�
�����Ա�Ѹ�ٵ������������ص�ԭ������̬������̾�
�����񾭱�ǿ�ȴ���һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md04/045b0040a00">
��������������!!��

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0050a01">
��������û�°�?!��

{	FwC("cg/fw/fw�����AȾ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0060a00">
�������ء�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0070a01">
���侲�㡣
����Ҫ�ż�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������֧�����ҵ����壬���������ҵĶ�ͷ��
���Ǳ�����ˣ����Ǿ�����ʲô�����ء���ʮ���䡣

���������˸м���
����������Ҫ��ݱ��䡣

���������ů�Ļ���һ��������ɡ�
��Ҳ���ʧȥ������������룬�����������硣

�����Ǳ�����ָ�����������
����˫��վ������������

���������ˡ�

�����Ǹ�������ˬ��
��������������¶ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm05", 0, 1000, true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md04/045b0080a01">
��û���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0090a00">
���š�
���Ѿ���վס�ˡ�����

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0100a00">
����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0110a01">
��ʲô�£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0120a00">
�����ǡ����������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0130a01">
�������š���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0140a01">
��������ˡ�
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������̤�ϵ��档
����Ϊ������<RUBY text="�Լ�">�ն�����</RUBY>��վ�š�

����������ǿ��Ҳ������ˬ�졣
��ֻ�ǣ���ʵ�е��Լ�����Ť���ش�����һ��ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md04/045b0150a00">
��������лл�㡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0160a01">
��������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0170a00">
���ֱ�����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0180a01">
�������ҡ�����

//��������
<voice name="����" class="��������" src="voice/md04/045b0190a01">
���������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0200a00">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0210a01">
�������룬���ǲ���ֻ������ʹ�ࡣ��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0220a00">
���������ǵġ���
��ֱ���ղţ��ҵ��ľ���ʮ�����ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0230a00">
�����ڣ��ֱ�ó����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0240a01">
��������֪����������
�����ǣ����ǽ��С���

//��������
<voice name="����" class="��������" src="voice/md04/045b0250a01">
���ҵ����������ġ�������һ�������İɡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0260a00">
�������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0270a01">
��������������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0280a00">
��������㣬���ֻظ����������Լ���
����������Ǳ���Ľ��С���

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0290a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0300a01">
��ʲ��ʲô���������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0310a00">
������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0320a01">
��˵���ֻ������ҡ�����

//��������
<voice name="����" class="��������" src="voice/md04/045b0330a01">
�������ҡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0340a01">
���һ᲻֪������ô��źá�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߣ�EV���Ƥ����ݳ�Ҋֱ��
//���ţ֣���������
	CreateTextureEX("��", 5010, -270, InBottom, "cg/ev/resize/ev230_�������㤯�����m.jpg");
	Fade("��", 1000, 1000, null, true);

	Wait(1000);

	CreateTextureSP("����", 5000, Center, Middle, "cg/ev/ev230_�������㤯�����.jpg");


	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140a]
//��������
<voice name="����" class="����" src="voice/md04/045b0350a00">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("��", 6000, @0, -50, DxlAuto, false);

	Wait(2000);

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140b]
//��������
<voice name="����" class="��������" src="voice/md04/045b0360a01">
���Բ��𡣡�

//��������
<voice name="����" class="��������" src="voice/md04/045b0370a01">
���ң���ʵ����
���������ѡ�ġ���

//��������
<voice name="����" class="��������" src="voice/md04/045b0380a01">
����Ϊ����Ҫ�������������

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0390a00">
������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0400a01">
���Ҳ��������롣
�����ֻ���������ѡ�����

//��������
<voice name="����" class="��������" src="voice/md04/045b0410a01">
��Ҫ�������Ҿͺ��ˡ���

//��������
<voice name="����" class="��������" src="voice/md04/045b0420a01">
����֪�����ʹ�࡭��
����Ϊ�����Ҵ���ص�����ߡ�����

//��������
<voice name="����" class="��������" src="voice/md04/045b0430a01">
�������ء�����

//��������
<voice name="����" class="��������" src="voice/md04/045b0440a01">
���Բ��𡭡�����

{	FadeDelete("��", 1000, false);
	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0450a00">
������Ϊʲô��Ǹ������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0460a00">
�������öԡ�
����û�д���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0470a00">
���Һܸм�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/045b0480a01">
��������Ҫ˵������

//��������
<voice name="����" class="��������" src="voice/md04/045b0490a01">
����Ҫ˵�ˡ�������

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/045b0500a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("��*",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ҡ���
��
������ֻ�ܵȴ���

����ֻ��ĬĬ֧���������޷��������кͻ����
�����Ĵ�����
��Ȼ�������޲ߵصȴ��ţ���������Ӧ�����Ÿ�����
������ҡ����־�����ȴһƬ���ҵĴ���ƽ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����

	ClearWaitAll(3000, 1000);

}

..//������ָ��
//�Υե����롡"md04_046.nss"
