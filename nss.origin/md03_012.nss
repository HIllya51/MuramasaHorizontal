//<continuation number="790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_012.nss_MAIN
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
	#bg026_���ӘSɽ��a_01=true;
	#bg045_���ӘS�ǹ������g_01=true;
	#bg065_���ӘS���ڹ�_01=true;
	#bg066_���ӘS���ڤΤɤ�_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_013.nss";

}

scene md03_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_011.nss"


//�����ӘS
//���������g

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg026_���ӘSɽ��a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\",2000,true);

	WaitKey(1500);

	OnBG(101, "bg045_���ӘS�ǹ������g_01.jpg");
	FadeBG(1000, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������ִ�ܥԽ�����칫��ʵûʲô����֮����
����û���Լ����򵽵���ô���ѡ�

�������м�����
�������������Ϊ�в����׼���ĸ��������ڰɡ�

������λ�������Ŀս����������Ǻ��䵭��
������Ȼ��ʵ�ظ��踨����
������˵����Ҳ�����������Υ��������Ȼ��

�����������ܥԽ�������ĸ��԰ɡ�
���ڲ���������������µ�Ļ�Ż���ͱ�����������ϰ
�ߣ����Ǿ�����˾ż�������쳣��ָʾҲҪ<RUBY text="��������">����˼��</RUBY>��
���ӡ�

������˵�ⵥ������Ϊ���������֮ǰ�ص��������ء�
���������������Ƕ��ҵ�<RUBY text="����">����</RUBY>���������̫�ã�
�����Ҳ�������⡣

����ܥԽ�����칫�Բ���˵�����������ĵ�λ��ֻ��ͼ
һʱ���㡣
���Թ������ڵ������˼ʹ�ϵΪĿ���Ŭ��ֻ���ǰ׷�
������

��ֻҪ�ڱ�Ҫ��ʱ��������ദ�þ͹��ˡ�

������ÿ�춼������������ļ��������������������
���Ǿͻ�������Ӧ�Ļش�
�������Ǿ����ϵ��ľ��٣����ж�Ӧ�ò����д�

���ҵĹ�����һ���Ǻ����ǶԻ���
��ʣ�µ���ǩ���͸��¡�

  ��Ȼ�칫��ʽ�ȵ�����û��㴴���ԣ�������֪����
ν��˧��Ӧ��������ʲô��������ʤ�Ρ�
���뷢�Ӹ��ԵĽ�˧���Ҳ�˵���Ϸǳ���̬��ƽʱ��
�������ദ��

�����걻�����ھ��ڵ�ʱ������˾�����ִ�ڱ�����
ʱ���̷�Ķ�����Ǹ�û���ԵĽ�����
���ڽ����뽫����һ���ж����޾�ϸ�������۵ף��о�
�����Լ���취������������ȡ���˵������

��������ȴ����Ϊ����������ˡ���û�б����������
����������ˡ�
��������ת���ˡ����εĽ���������͵ģ�����������
û��þ������˱�������ķ�����

�������������Լ�����ţ�����Ļ�������һ����е�
�����
����Ϊ����˭���ǶԵģ����ٴӽ�������Ǻ������ʵġ�

�������Ҳ�ģ����λ��Ϊ���ڵĽ�����
����ĳ�̶ֳ�������Ƿ�����Ǹ���
�������ڽ���������ǰ���ڵֿ���
�����޵�ı�����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�a����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120010e247">
�������������������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120020a00">
���������ˡ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120030e247">
���ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120040a00">
��������ϸ�����ģ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120050e247">
���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120060a00">
����������
��ľ��û�ﵽ��������Ŀ������

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120070e247">
���ǵġ�
��һ���ֱ������޲������ˣ���Щ�Ϳ�ȱ�ˡ���

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120080e247">
����Ҫ���������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120090a00">
����Ӧ���ȳﱸ�á������ǲ���ǿ�С�
�����ҿ������������������ԭ���͹����
�൱���ˡ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120100e247">
������ȷʵ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120110a00">
���뵽Ԥ���޽��᳡�Ĺ�ģ���ֽ񴢱���
����Ӧ���㹻�ˡ�
�����ھ����ˡ��ȵ�����������ʱ��һ��׷��
����Ĳ��ְɡ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120120e247">
���ǡ�
���Ǿ���������˼�졣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������������׼����ּ����
�������ǺS����������ѹ������Ч�ˣ���������������
��ת���������ϼ��δ������ּ�Ѿ������˵���ʱ��
�׶Ρ�

������᳡��ܥԽ�����������޽���
�����˵��СС�����˰ɡ��ڻ��ǹ�˾ְԱ��ʱ����
�ֹ����Ҷ����������ˡ�

�������ļ���֪ʶ��ȱ�ٿɻ��õĵط���
���������������ش������칫��Ҳ�Ƕ����������

���������޽��᳡�йص��ļ�����ࡣ
����ϸ����ÿһ�����⣬�������ǵ�����ٴ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�a����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120130e247">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120140a00">
����ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���Ҳ����Ͷ�����ϵ����ߣ�̧��ͷ��
����ߵĽ�У�������ڸ��������е����ҵ�����١���
�ƺ���Щ��ԥ��

������ͣ��Ƭ�̺������ǿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�a����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120150e247">
��ˡ������
������˵��������ǰ���컹�Ǹ���ͨ���գ�
�Ծ���ȴ��˵���Ӧ�֣����ǳ����ҵ����ϡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120160a00">
���Һ�����ģ�µĲ��ܡ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120170e247">
������ģ�£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120180a00">
����Ȼ�ǵ�һ�ε�ְҵ���ˣ���������������
�����ھ����������
����ʱ���˽����������������������߿���
�칫����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������ղ��������룬���������ظ���һ�顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�a����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120190e247">
������ԭ����ˡ�
����ν�Ķ��ĿȾ�𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120200a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������˵���Ļ�����غܲ�������
���Ҳ�����ػش�һ�߿�̽�����ı��顣

���䵭�Ļ�����͸��ĳ�ֲ�������ɫ�ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md03/0120210a00">
���������ʲô��Ҫ˵������

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120220e247">
������������

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120230e247">
�����ǲ�֪������ʲô�ˡ�
�����ǡ�����

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120240e247">
�����ڲ������˵���ߡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120250a00">
����������

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120260e247">
�������ǲ�ͬ��
���벻������λ���ˡ���ֻ����ÿֲ�
����ֻ��ä�ӵ����ǲ�ͬ����

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120270e247">
��������������ϣ����������ߡ�����

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120280e247">
��������
����������������������µĻ�����

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120290e247">
��������ʲô��ʽ����
��ֻҪ�����Ȳ������ˡ�����

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120300e247">
�������ǡ���ϲ��һ׮����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120310a00">
������������

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120320e247">
�������ǳ���Ǹ��
��˵���������ĵĻ�����

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120330e247">
���Ҽ��������ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120340a00">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������ٴλص��ļ��ϡ�
��ȷ�����ݡ�������û���⡣

������һҳ������һ���ļ���
���ҵ�ͷ�߿���˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md03/0120350a00">
���������Ǹ���׾�������𣿡�

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120360e247">
��������֪Ϊ�Σ��ܾ��úܲ�������
��������˵����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ȷ���ļ���
��ǩ�����¡�

��ȷ���ļ���ѯ����ߵĽ�У��
��ǩ������һ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��ɤ��ɤ���
	SetVolume("@mbgm*", 2000, 0, null);

	OnSE("se����_����_�ߤ�02", 1000);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);


	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md03/0120370e224">
�����ٴ��ˣ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120380e247">
��������Ҳ���������ϣ���

{	NwC("cg/fw/nw����.png");}
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md03/0120390e224">
���ǣ�ʧ�񡪡���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120400a00">
��û��ϵ��
����ô�ˣ����������𣿡�

{	NwC("cg/fw/nw����.png");}
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md03/0120410e224">
���ǵģ���΢�е㡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��bg065

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureEX("bg65", 15000, @0, @0, "cg/bg/bg065_���ӘS���ڹ�_01.jpg");
	Fade("bg65", 0, 1000, null, true);
	Delete("@OnBG*");

	SoundPlay("@mbgm35", 0, 1000, true);

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);



	WaitKey(1000);
//��bg066

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureEX("bg66", 16000, @0, @0, "cg/bg/bg066_���ӘS���ڤΤɤ�_01.jpg");
	Fade("bg66", 0, 1000, null, true);
	Delete("bg65");

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md03/0120420a00">
����������˵����ʧ�����𣿡�

{	NwC("cg/fw/nw����.png");}
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md03/0120430e224">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���ұ�һȺ��������Ĺ��˺;�����Χ����ȡ���档
��ֻ������Ļ�����̬�ܼ����ˡ�

��һ���ֲ����Բ��϶ѷŵ�ʧ���ˡ�
����Ȼ���Ǳ��ᵽ���õĵط��õ��ˡ�

���Ѿ�ȷ�Ϲ��ˡ����Ϻ���ʹ�õ��μ���
ʧ���ˡ�

��������û����<RUBY text="��������">��������</RUBY>���ߵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md03/0120440a00">
���������ǽ�����Ʒ����
���ͻ�е�����𣿡�

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120450e247">
���ǵġ�
��ľ�ĺ�ʳƷ��û�¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120460a00">
������ֻ�к��ã����Һ���Ǯ�Ķ���
��ʧ�ˣ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120470e247">
��������ô˵��
������Ҳ������ôֵǮ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��˵��͵�����Ļ�������ȴ����֡�����
����˵�öԣ�ʧ�ٵ����������˶�ߵļ�Ǯ��

���������Ǯ�Ļ�Ӧ��͵��ĸ����صĶ�����
������Ҳ�������¶��ۡ���Ҳ�п��ܷ��˺�����͵ȥ��
�ķ��պ�ʵ�����룬��ѡ���˺��ʵĶ������֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md03/0120480a00">
����Ҫ�����¼�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����óﱸ�������ȱ��
���ⷽ�������鷳��

��ʧ�ٵĲ����ǽ������᳡�ı�����Ʒ���޷��ñ�
�Ķ������档
�����ң���ȻǮ�������⣬�����Ӷ������ջ�Ҫ����
һ����ʱ�䡣

��Ҫ��������ӳ����ڵĻ����൱�ѹ���

����̬��΢����鷳�ˡ���<k>������

����������

���ӳ����ڣ�
������ǡ���Ŀ����

������һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�a����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120490e247">
�����й�����������룿��

{	NwC("cg/fw/nw����.png");}
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md03/0120500e224">
�����⸽���������˺���û����ʲô�쳣��
��Ҫ���ֿ����Ա�����𣿡�

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120510e247">
���ǰ���
�������������ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120520a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå���һ��������С��������
//�����虜��ͤ��ˤ��Ϥ�

	CreateSE("���虜��", "se����_����_����᤯01_L");
	MusicStart("���虜��", 2000, 1000, 0, 1000, null,true);


	WaitKey(1000);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//������㣯���I������
<voice name="����㣯���I����" class="����������" src="voice/md03/0120530e077">
��С͵��Ȼ͵������������

{	NwC("cg/fw/nw������.png");}
//������㣯���I���¡�
<voice name="����㣯���I����" class="����������" src="voice/md03/0120540e078">
����ֵĶ�����͵���ˡ�
�����Ǻ�ͷ�۰���������Ǯ����
���Ŀ���𣿡�

{	NwC("cg/fw/nw������.png");}
//������㣯���I���á�
<voice name="����㣯���I����" class="����������" src="voice/md03/0120550e079">
��������С͵�ء���

{	NwC("cg/fw/nw������.png");}
//������㣯���I���¡�
<voice name="����㣯���I����" class="����������" src="voice/md03/0120560e078">
������ʲô�ˣ���

{	NwC("cg/fw/nw������.png");}
//������㣯���I���á�
<voice name="����㣯���I����" class="����������" src="voice/md03/0120570e079">
�����������ǲ����ð��ϴ��˼���
����ļһ���������񡭡���

{	NwC("cg/fw/nw������.png");}
//������㣯���I������
<voice name="����㣯���I����" class="����������" src="voice/md03/0120580e077">
�������п��ܰ�����

{	NwC("cg/fw/nw������.png");}
//������㣯���I���¡�
<voice name="����㣯���I����" class="����������" src="voice/md03/0120590e078">
��ιι��
���ѵ���Ļ�ɵļһ�Ǳ�뵽�����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå���һ��������С��������


	SetVolume("@mbgm*", 500, 0, null);
	SetVolume("���虜��", 1000, 0, null);
	WaitKey(800);


	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/md03/0120600a00">
�������ֿ�Ĺ���Ա����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��������Χ���˶�������������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16",0,1000,true);

	SetNwC("cg/fw/nw�a����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120610e247">
����������
���������ˣ���˵ʲô����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120620a00">
�����Ǿ����ڲ���Ա������
��ʧ�ٵ��������ں�������ͨ�š���

//��������
<voice name="����" class="����" src="voice/md03/0120630a00">
���ղ��յ��˱��档
����һ����������<RUBY text="��������������">���Ҳ�����˰�</RUBY>����

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120640e247">
������������

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120650e247">
���ǣ�
��������ˡ���

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120660e247">
����Ӧ���������ֵĲ����ں�������ͨ����
��ȷʵ������ǹ���Ա˽�̵Ļ�һ�ж�˵��
ͨ�ˡ���

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120670a00">
����Ļ����Щ��û���ܻ�Ǳ�뵽�������ֳ�
�У������������߸��ǰ������Ρ�
����ô��ֻ��һ������

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120680e247">
�����Ͼв�����Ա��
�������Ʊ�Ҫ�ϳͰ����������ˡ���

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0120690a00">
����Ȼ�ˡ�
���ڴ˵���Ҫʱ�����Ҿ��ĵļһ�
һ��Ҫ�����ܵ���Ӧ�Ĵ�������

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120700e247">
���ǡ����������

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120710e247">
�����ϴ��á�
������ι�������˰ɣ���

{	NwC("cg/fw/nw����.png");}
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md03/0120720e224">
���ǡ����ǣ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120730e247">
������˽�̷���
��������ֿ�Ĺ���Ա����

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120740e247">
�������ˣ�û��Ҫ������⡣
��ʲô������˵ֱ�ӽ����װ���ؽ������

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120750e247">
���º����������ʡ�
�����ˣ�ȥ�ɣ���

{	NwC("cg/fw/nw����.png");}
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md03/0120760e224">
�����������ף���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md03/0120770e247">
������Ҳ�ǡ�
����ȥ�ɻ��

{	NwC("cg/fw/nw������.png");}
//������㣯���I������
<voice name="����㣯���I����" class="����������" src="voice/md03/0120780e077">
��������

{	NwC("cg/fw/nw������.png");}
//������㣯���I���¡�
<voice name="����㣯���I����" class="����������" src="voice/md03/0120790e078">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md03_013.nss"