//<continuation number="1970">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_020.nss_MAIN
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
	#bg015_·���Y_01=true;
	#ev106_���w��Ҋ�¤�����_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_021.nss";

}

scene md04_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_019.nss"


//���Ƅ�

//�ұ�äĿ�ηN�����������Ԥ򿼑]����fw�������Ƥ��ޤ���
//�ޤ������Υե�����ϴ���ҕ����M�����붨���������������}��ʹ�ä��Ƥ��ޤ��� inc�Ѿ�


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	CreateTextureEX("ue", 103, @0, @0, "cg/bg/bg015_·���Y_01.jpg");
	Fade("ue", 0, 1000, null, true);


	SoundPlay("@mbgm26", 0, 1000, true);

	Delete("�ϱ���");

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����Ҫ�ܹ���ֵ���խʮ��·�ڡ���
��ͻȻͣ���˽Ų���

����߿��Կ���һ��·�˵ı�Ӱ��

��������Щ�Ļ����Լ��ǲ�������ġ�
�����Ĵ��ܳ���������ͨ��������ͨ�����ԡ���
��ֹȴ��Щ���졣

���ƺ��Ǻ����ˣ��Ų����ȡ���e�Ұڣ���ʱ��ʱ
������ץ��
������ƽʱ�Ļ��һᵱ���Ǹ���ͨ����׵��Ժ�
�Ͳ����ˡ�

�����ǳ����������������֧�䡣
�����ڵ����ڿ�û������΢���ľ�������Ƶ�ɢ����

����ô���������ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤�`�����`�ף�

	OnSE("se�\��_���`��_������", 1000);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md04/0200010a01">
�������ȵȣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������ԥҪ��Ҫ����ѯ�ʣ���Ұ��ͻȻ����������
�Ķ�����
��
���ǳ���

�������¸������еģ����ڳ��л����֮���ƶ��Ľ�
ͨ�������в�ͬ��
����ԭ���ǲ�������ڳ��еĳ���

���Ǿ��ó���
��û�г������������������ʿ����

������С·��խ��
��Ҫ���Ǵ�������Ļ������˾ͱ��������ǽ�߲���
�ܿ���

����Ҳ����ʲô���¡�
��
�����Ǹ��������ǵ������ƺ������ּ򵥵��¶���������

����Ȼע�⵽�����г��ӽ�������ȴ���ɳٶۡ�
����Ȼ�Ǻ����������岻��ʹ����

�������ᱻ��ײ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md04/0200020a01">
�����������ǵģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������������ȥ����һ������ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ�
	CreateSE("�ߤ�", "se����_����_�ߤ�03");
	MusicStart("�ߤ�", 0, 1000, 0, 1000, null,false);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ue");
	CreateTextureEX("�}����50", 103, @0, @0, "cg/bg/bg015_·���Y_01.jpg");
	Fade("�}����50", 0, 1000, null, true);

	WaitKey(1000);
//��������������܇��ܤ�����
	SetVolume("�ߤ�", 1000, 0, null);

	OnSE("se����_����_����02", 1000);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	Wait(500);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����o��
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200030b43">
��������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200040a01">
����ʲô����
����Ȼ·�����ܺú��ߣ�
����״���¾ͱ���Ű�����

//��������
<voice name="����" class="��������" src="voice/md04/0200050a01">
���ú��ڼҴ��Űɡ�
�����������ϲ������������˵�ˡ���

{	NwC("cg/fw/nw������.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200060b43">
����������
�������ҹ�Ȼ��㱻���𣿡�

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200070b43">
��лл�㡣
����㡭��������ô����ɣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200080a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������е㲻�Ծ����Ҵս�ȥ���������˵�����<k>
��
��Ȼ������һƬ�հס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md04/0200090a01">
��������������������

{	NwC("cg/fw/nw������.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200100b43">
��������ʧ�����𣿡�����ְ���
�����Ӧ���Ƕ�Ů�Ե����ܳƺ���������ǳ�
����΢�곤��Ů��Ҳû���⣬����Ч�����õ�
ħ�������

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200110b43">
���Ѳ����ǳ��������ϵķ�չ����˸���Ů
��ζ��ɤ����ʵȴ�Ǹ����ˣ�
���ţ����ԵĻ���˲п�����໹�Ǽ�������
����������������

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200120a01">
���������ǡ��ұ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ұ���äĿ��
//���������������
	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 100, -344, "cg/bg/bg015_·���Y_01.jpg");
	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	CreateTextureEX("�}�ݷ���/�}���}", 16200, 50, -1450, "cg/st/resize/st�ұ�äĿ_ͨ��_˽��l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);
	Request("�}�ݷ���/�}���}", Smoothing);
	Zoom("�}�ݷ���/�}���}", 0, 600, 600, null, true);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(500);

	Move("�}�ݷ���/�}�ݱ���", 3000, @0, 37, AxlDxl, false);
	Move("�}�ݷ���/�}���}", 3000, @0, -660, AxlDxl, true);

	Wait(1000);

	FadeDelete("�}ɫ100", 500, false);
	FadeDelete("�}�ݷ���*", 500, true);
	Delete("�}�ݷ���*");


	StL(1000, @0, @0, "cg/st/st�ұ�äĿ_ͨ��_˽��.png");
	FadeStL(700, true);

	Wait(500);
	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw�ұ�äĿ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200130b43">
������������ʶ������
���Բ���������<RUBY text="������">������</RUBY>������

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200140b43">
�����������ֱ治������
������������λ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ҡ���Ŵ��һ�������������ͷת���ҡ�
��������ˣ�����̫�ԡ�

��û�취��
����Ϊ���������������������ġ�

�������۾����ź��ı�����
������û�б�������Ҳ֪������������

�������ұ���<k>
��
�����ǹ�ȥ����������һ�𱻾��롰�ѡ������������
���У����������˵�ѧ����

����֮��������ʱ�仹�����ھõ���ʹ����绯��
���Լ����Բ��ῴ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200150b43">
����㣿��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200160a01">
����������������
�����ǣ��Բ��𡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200170a01">
��ֻ������΢֪��һ������¡�
����Ӧ�ò���ʶ�ҡ���Ҳ���ҵ�һ�κ���˵������

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200180b43">
������
����Ǹ����ʱ��������鷳�ˡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200190a01">
��������ʱ��
�����鷳����

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200200b43">
������һֱ���������İɣ�
���Ȳ�˵�ң��۷���С����������������������
��֪�����͸�������ö��鷳����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200210a01">
����������һֱ���������𣿡�

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200220b43">
��������Ҳ��ͷ�۰���
������ͻȻ��İ������Ҫ���⳥��������Ҫ
����Է����Ͽ���֢��С����Ǹ��֮�����
�ܳ��е����飬�����Ǿ���ʮ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200230a01">
��Ŷ��Ŷ����

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200240b43">
�������ǰ��ǰ���
�����������ġ�����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200250b43">
���ڲ���֮ǰ�����ڹ������������ء���
���ǡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200260a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200270b43">
����������ִ��������⳥���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200280a01">
��������û�С�
������û�������κ��鷳����

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200290b43">
���ۣ�������ǰ��δ�е��ټ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200300a01">
���ò���˵������ز��ɡ���

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200310b43">
���Ǿ����Һúõ�л�ɡ�
�������Ҿ��úܿ��ġ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200320b43">
����ķǳ���л�㣬��㡣
�������û�о��ң��������Ѿ����ˡ�����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200330b43">
��Ӧ�û�����Űɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200340a01">
���ǡ��ǰ���
�����˹�Ȼ�����Űɡ���

//��������
<voice name="����" class="��������" src="voice/md04/0200350a01">
�������Ҳ�û����ʲô���¡�
�������ò��ŵ�л������

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200360b43">
����������ص�л�͵�Ǹ��
����Ϊ�ҵ��������������ˡ���

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200370b43">
�����ڡ�������������£��Ѿ������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200380a01">
��������

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200390b43">
����Ȼ�����ˡ������Բ���ô���ɡ�
�����̸��ҵĶ�������Ҫ�ú���ϧ����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200400b43">
���š����˹�Ȼ�����š�
�����˵Ļ���������ѧ���Ķ�����û���ˡ���

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200410b43">
���Ҳ�����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200420a01">
������������

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200430b43">
���Բ���
��˵��Ī������Ļ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200440a01">
�����ʣ�������ѡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200450a01">
���Ѿ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ե�å��塣���w�ؚ�

	EfRecoIn1(18000,600);

	CreateTextureEX("�}����900", 2001, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_d.jpg");
	Fade("�}����900", 300, 1000, null, true);

	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md04/0200460a01">
��������

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200470b43">
�������š��ǰ���
����Ȼ��ǰ�;��������������Ƿǣ�֮ǰ
��֪��ô�ĺ����Ϳ�������ˡ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200480b43">
�����ڹ�Ȼ�����Űɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200490a01">
������������

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200500b43">
�����ǣ���֪Ϊ���Ҿ��á�
���Ǽһ��<RUBY text="��������������">��������������</RUBY>����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200510b43">
������������һ�С�ľͺ��ˡ�
�����Ǳ�����ѡ�е����Ǽһ��һ��
������Ϊ��������ʲô����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200520b43">
���෴����
���Ǽһ��������м�����ֱ��ǿ��һ����
���Դ����������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���⾿����ʲôֱ���ء�
��ƽ����ѧ��˵�����޴ӵ�֪�����ࡣ

��ȷʵ��ˡ�
����Ҳ�ã���С�ĵĹ���Ҳ����ν��

��������ѡ��ɱ���ģ�
���������۷ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200530b43">
�����ԡ���û�����ﱻ����������̫���ˡ�
���������ֵط������϶���������ġ���

{	FwC("cg/fw/fw�ұ�äĿ_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200540b43">
���ұ�������Ǽһ�ȥ����
��ȥ���Ǽһﱾ�������¡���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200550b43">
���ұ��뱣��С�ġ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200560b43">
����Ϊ�ҡ���
��һ�����������Ǽһ���������۷�
�ŵ��Ի������ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ԡ�

�����������Ĳ����㡣
�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200570b43">
�����۶Խ����ô��л����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200580a01">
�����������ˡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200590a01">
�������ˡ�
����Ĳ��õ�л����

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200600b43">
�����ͷ��㵽�Ҽ�ȥһ����
������ʱ����Ȼ����ʢ��ؿ���㣬����
�ʵ����д�һ�»��ǿ��Եġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200610a01">
�����ÿ����ˡ�
���һὫ��ú��ͻؼҵġ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200620a01">
�����������ȵȡ�
����Ϊʲô�������ߣ����۾��ֿ�������
��ƫƫ�����ʱ�򡣡�

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200630b43">
����ѽ������
�����������Ϊ�˸����ڸ���ɢ����ͻȻͷ����
�����������ˡ��ƺ��ǿ�ʼս���ˡ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200640b43">
���������ϻؼң���æ��ò����������ȫ�෴
�ķ��򡭡�
���ڴ��ڼ䷢���˽�ֹ����������

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200650b43">
������֮�������ø������ӵ��������ң�
����ȴû�ˡ�
�������������𡭡���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200660b43">
�������һ����ɣ�������������ţ����Ƕ���
�����ܲ����ˡ�
���㲥˵���Իؼ��ˣ��Ҿ�Ŭ�����Ҹϡ���

{	FwC("cg/fw/fw�ұ�äĿ_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200670b43">
������������·�Ĵ��ǻ���ʱ��
��㱻�����ˡ�
�����������ܿ�Ц�ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200680a01">
�������Ҿ��ò���Ц����

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200690b43">
����������
��Ҫ�д��㣬Ҳ�����������һؼҰ�����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200700b43">
��������������㣬����㲻�ż��Ļ��Ͱ���
���ˡ�
���š���Ϊ�˱��л�ⷴ��Ҫ�ͷ��㣬���Ǳ�
ĩ���ð�������

{	FwC("cg/fw/fw�ұ�äĿ_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200710b43">
�������������Ц����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200720a01">
�����������ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����ǰܸ����ˡ�
���������ø���ͷ��ס����͵����θо�����
Ϊʲô�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/md04/0200730a01">
����֮���ȸ�����������ġ�
������������·���ƺ�ʲô�ģ�����˵˵����
��ʲô��־����

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200740b43">
����־����
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤�`��

	OnSE("se�\��_���`��_������", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�������ִ�������������
��������ô��������խ����ʻ����

���Ҵ�������������ĸ첲�㵽·�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���֤��`�����ԩ`�ɥ��åס�

	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureEX("�}����100", 2000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);

	DeleteStA(0,true);

	CreateSE("SE01","se�\��_���`��_����");
	MusicStart("SE01",500,1000,0,1200,null,false);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/md04/0200750a01">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ�
//���Ф��`��

//��ե飿 inc�Ѿ�
	CreateColorSPadd("�}�ե�", 6000, "#FFFFFF");
	CreateTextureEX("�}����50", 103, @0, @0, "cg/bg/bg015_·���Y_01.jpg");
	Fade("�}����50", 0, 1000, null, true);
	Delete("�}����100");
	DeleteStL(0,true);
	DrawDelete("�}�ե�", 600, 1000, "slide_01_03_0", true);

	SetFwC("cg/fw/fw�ұ�äĿ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200760b43">
���ۣ�ѽ��ѽ����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200770a01">
��������

{	StL(1000, @0, @0, "cg/st/st�ұ�äĿ_ͨ��_˽��.png");
	FadeStL(300, false);
	FwC("cg/fw/fw�ұ�äĿ_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200780b43">
������һ�����ղ��ǳ��ǲ���ͻȻ�����ˣ�
���м����𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200790a01">
������˭֪������ô�����ء�����

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200800b43">
��Ȼ���ҼҰ���
�����ں�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����û������

����ֱ����ǰ����
���ղų��ȥ�ĳ�����Զ�ĵط�ͣס�ˡ�

�����ó���
�����ղſ���������һģһ����

��Ҳ����������ʿ����
�����ǵ�ģ������Ҳ����

������ͬʱת����ߡ�

�������̲ݵ��카��а���Ц�ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/md04/0200810a01">
�������ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤�`��

	OnSE("se�\��_���`��_����",1000);

	SoundPlay("@mbgm13", 0, 1000, true);


	SetFwC("cg/fw/fw�ұ�äĿ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200820b43">
��ͨ��������·������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200830a01">
������һ�£���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������Ʊܤ��`��

//��ե飿
	CreateTextureEX("�}����100", 2000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);

	DeleteStA(0,true);
	Wait(500);

	CreateColorSPadd("�}�ե�", 6000, "#FFFFFF");
	Delete("�}����100");
	DeleteStL(0,true);
	DrawDelete("�}�ե�", 600, 1000, "slide_01_02_1", true);


	SetFwC("cg/fw/fw�ұ�äĿ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200840b43">
��������������������

{	StL(1000, @0, @0, "cg/st/st�ұ�äĿ_ͨ��_˽��.png");
	FadeStL(300, false);}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200850b43">
������Ϊ������С��ͬ����ʵ�Ǵ�·�����𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200860a01">
�����ҿ��������ֻ����ͷ�ܲ��硣��

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200870b43">
����˵����������ࡣ��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200880a01">
���ǰ���Ϊʲô�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�������Ų���������ߵĳ���ͣ���˺ܽ��ĵط���
����������Բ������ǵ�Ŀ�ĵء�

������������⡣
���������洦�ɼ���

���������߲�ʩŰ�ͻ���������˵������ǡ�
����ǰ�У������У�<RUBY text="����">����</RUBY>Ҳ�У����˶��ѡ�

�����֧�����ֵľ��Ƹ����Ծ������õ�ӡ�󡪡�����
��Ȼ����ʲô�������������ɡ�
����ʤ��������ʱ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/md04/0200890a01">
�������˸����ò��Źܣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��Ҫ���ߺ����ס�
�����㲻ʹ�ý��е�������ֻҪ�ҵ��ȳ����խ��
С·���ȥ�����ˡ�

����������עĿ������ƽ���ش������ĵ��¼���
����

��ǰ�����Լ�һ�ˡ�

������ܽ������ұ����������û�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤�`��

	OnSE("se�\��_���`��_����",1000);

	CreateTextureEX("�}����100", 2000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);


	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/md04/0200900a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ�

//��ե飿

	CreateColorSPadd("�}�ե�", 6000, "#FFFFFF");
	Delete("�}����100");
	DeleteStL(0,true);
	DrawDelete("�}�ե�", 600, 1000, "slide_01_03_0", true);


	SetFwC("cg/fw/fw�ұ�äĿ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200910b43">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
������ǲ���ǽ���ȥ�ġ�
�������ǿ��ü������������棬��ǿ�ܿ��ˡ���
���´β�����Ч�˰ɡ�

��������ʿ���������³��ı��顣
�����������ĺ���һ����

�������ӣ���ײ��һ�ξͲ���ͣ�¡�

���Ҷ�����û��ɱ�⡣
��
������<RUBY text="����������">û����ô��</RUBY>��

���������ֳ��صĳ�ײ���Ļ��˻����׵���������
����<RUBY text="������">���ӵ�</RUBY>���������޷�Ԥ�ơ�
������һ������ײ����֮������ס�

�����룬ԭ����ô�������˰���
��Ȼ������Ʋ���Ժ�

�����Ի�������ͬ���¡�

�������˾��������ˡ�
������û�����Եĺ蹵����Ҳ�����ǹ�ͨ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200920b43">
����㡭����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200930a01">
�������е�æ����
���������˵������ġ���

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200940b43">
�����������ˡ�
�������������ˡ��ҼҾ����⸽������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��˫Ŀʧ����ѧ������ں��ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200950b43">
������Բ������ҵġ�
�����У��д����Ǽ��¡�����ϸ����
���Ǽ������е��¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200960a01">
�����𣿡�

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200970b43">
���ǳ���Ǹ��
���´��л����������д���ɡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0200980a01">
��������ģ���

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0200990b43">
����ľ��ڸ�����
�����ԣ���㡭���Ѿ����ˣ����뿪�ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201000a01">
������
�����������ô���Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤�`
	OnSE("se�\��_���`��_����",1000);
	CreateTextureEX("�}����100", 2000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);

	Wait(500);

	CreateColorSPadd("�}�ե�", 6000, "#FFFFFF");
	Delete("�}����100");
	DeleteStL(0,true);
	DrawDelete("�}�ե�", 600, 1000, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="��������" src="voice/md04/0201010a01">
���Ҳ�Ҫʲô¡�صĴ��񣬲���ȥ�ȱ������
Ҳ����
�����̶ֳȵĻ�������Ҳ������ŵ����ǰɣ���

{	FwC("cg/fw/fw�ұ�äĿ_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201020b43">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��������������
����֪����������������ó���ǽ�������ǡ�

���޴����ӡ�
����û���κβ���֮����

��ֻ���ҵĻ��ͺð��ˡ�
���ŵ�Ĩ�͸Ͻ���������ˡ�

�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="��������" src="voice/md04/0201030a01">
�������Ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���������ȷ�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SoundPlay("@mbgm10", 0, 1000, true);


	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="��������" src="voice/md04/0201040a01">
��һ�������õ����ұ���������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 5000, @0, @0, "cg/bg/bg015_·���Y_01.jpg");

	StCL(6000, @0, @0, "cg/st/st�ұ�äĿ_ͨ��_˽��.png");
	FadeStCL(300, false);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw�ұ�äĿ_����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201050b43">
���ұ�������Ǽһ�ȥ����
��ȥ���Ǽһﱾ�������¡���

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201060b43">
���ұ��뱣��С�ġ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201070b43">
����Ϊ�ҡ���
��һ�����������Ǽһ���������۷�
�ŵ��Ի������ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);

	Delete("�}����100");
	DeleteStCL(0,true);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="��������" src="voice/md04/0201080a01">
�����ԡ�����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����ô������ǜ���������ս����
����ʹ�����˲������

������������������ս��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="��������" src="voice/md04/0201090a01">
�������ұ�����

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201100b43">
����㡭����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201110a01">
���������Ϸɹ��𣿡�

{	FwC("cg/fw/fw�ұ�äĿ_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201120b43">
��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201130a01">
���������ָо�Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 200, 0, null);

//���w��
	OnSE("se����_����_���S01", 1000);
	OnSE("se����_����_���S02", 1000);

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("�}����100", 200, Center, -576, "cg/bg/resize/bg001_��b_01l.jpg");

	DeleteStL(0,true);
	Move("�}����100", 2000, @0, -288, Dxl2, false);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
�����ͳ������������ǰ�������ϡ���
���Һ���һ������<RUBY text="����">��ʧ</RUBY>�ˡ�

�����ϵ�ʿ����һ˲��ı���̫��Ȥ�ˡ�
��˫�۵�Բ����ʹ��š���ɵɵ�ؿ��������ڳ��˵�
��Ծ��Խ������ͷ�ϵ��Һ�ä��ѧ����

�����Ǿ�����ײ����ǽ�ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	
//�������`��

	CreateColorSP("�\Ļ��", 3000, "#000000");

	Delete("�}����100");
	CreateTextureSP("�}����50", 103, @0, @0, "cg/bg/bg015_·���Y_01.jpg");
	OnSE("se���L_�n��_�nͻ01", 1000);
	EffectZoomDXadd(10000, 1500, 1500, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", true);

	WaitKey(200);
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");

//���������ŵ�

	OnSE("se����_����_һ�i", 1000);

	WaitKey(1000);

	SetFwC("cg/fw/fw�ұ�äĿ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201140b43">
�������ǡ��Ǹ�������

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201150b43">
�����ղ��ǲ�������ʲô�����ľٶ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201160a01">
��������

{	FwC("cg/fw/fw�ұ�äĿ_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201170b43">
����ķ��������𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201180a01">
����ķ�������̫����˼���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��������˵Ϲ����
��һ����Ϊ�����������ÿ�ϧ��

����ץס���ĸ첲���ߴ���ǰ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="��������" src="voice/md04/0201190a01">
����֮���뿪���
��������ں��߰ɣ���

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201200b43">
���������ǵġ����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ѩ`���|����
	OnSE("se���L_����_�饤�ե�Ĥ�01", 1000);
	WaitKey(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
�������������ô���׵����ˡ�
�����ǶԷ�������ս����ʿ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ����
	SoundPlay("@mbgm21",0,1000,true);


	StR(1000, @-50, @0, "cg/st/st�ǣȣѱ�ʿ_ͨ��_�Ʒ�.png");
	StCR(1000, @150, @0, "cg/st/st�ǣȣѱ�ʿ_ͨ��_�Ʒ�.png");
	FadeStR(300, false);
	FadeStCR(300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
�����˴�ײ���ĳ�����������ŭ�����ҡ�
������������ǹ����ŭ������ͷ�����ˡ�

�����Ǻ��ӵķ�ŭ��
���۸�Сè�棬�������èץ�˵ģ����ӵķ�ŭ��

�������ű��Լ��͵ȵĶ��ַ������ˣ����Ի�ð����
�˰ɡ�
��������ԥ�������߳ܡ�ֱ�׵ķ�ŭ��

������ȫ��������߶Է����ǵķ�ŭ��û����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="��������" src="voice/md04/0201210a01">
��������ȷ�����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
����Ҫ�������ǵ��ǣ�<RUBY text="����������������">������ȷȴӮ����</RUBY>�����衣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);
	SetFwC("cg/fw/fw�ұ�äĿ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201220b43">
����㡪����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201230a01">
��ſ�£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
���������ˣ�����Ѹ�ٵ������벻����ʧ���ˡ�
���������ˣ��Ҽǵõ����ұ����ж����ܳ��ڡ�

���һ����Ź�ȥ���ݵĹ۲���䡣
��
��֮������Ϯ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ѥ�Ѥ��B��

	OnSE("se���L_����_�饤�ե�Ĥ�4��", 1000);
	CreateColorSPadd("�}ɫ100", 1500, "WHITE");
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 350, 0, null, true);
	Delete("�}ɫ100");
	WaitKey(200);

//����e�餹��

	CreateColorSP("�Ĥ���Ƴ�Ѫ�Ĥ�", 1500, "#990000");
	FadeDelete("�Ĥ���Ƴ�Ѫ�Ĥ�", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="��������" src="voice/md04/0201240a01">
���ء�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
���������硢���ء�
�������ط����ӵ������ˡ�

����������ִ�������������С�
�����²��ȣ��ȿ��ˡ�

�����ǣ����˶��ѡ�

����ǹ������ʿ����ס�ˡ�
�������Ȼ�ͺ���һ������������ʯͷ���Ҳ�����Сè��
���ӡ�

���⸱�������岢û�м�̵��ܷ����ӵ���
�����ǣ�Ҳ���������������������������̶ֳȵ�С����
ֻҪ����ֱ�Ӵ��������϶��ٷ��Ҷ��ܳ��ܡ�

��������˵��ˣ���Ҳ���������Ǽ�����ǹ�ˡ�

���ҳ������ֻŶ��ٴ���׼���������
һֻ�֡�
��������ֱ仯�����塪���ָ���װ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	OnSE("se����_����_֩������¤�01", 1000);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	Zoom("�}����20", 0, 2000, 2000, null, true);
	SetBlur("�}����20", true, 3, 500, 70, false);

	DeleteStA(0,true);

	Zoom("�}����20", 700, 1000, 1000, Dxl2, false);
	DrawDelete("�}�ե�", 200, 100, "beam_03_00_1", true);
	Wait(300);
	FadeDelete("�}����20",300,true);
	SetVolume("@OnSE*", 1000, 0, null);

//���ɤ���Ͷ���w�Ф�����

	CreatePlainSP("�}��д", 100);
	Fade("�}��д", 0, 1000, null, true);

	OnSE("se����_�n��_ܞ��_�}��", 1000);


	Shake("�}��д", 500, 0, 30, 0, 0, 300, null, true);
	Delete("�}��д");
	OnSE("se����_�n��_ܞ��03", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
��������ĸ�˿��ס���˵Ľ��󣬷���������ק����
��ͬʱ����ˤ�����ǣ��������ǲ�������������

{	OnSE("se���L_�Ɖ�_����",1000);}
��˳���۶���ǹ֧��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��������
<voice name="����" class="��������" src="voice/md04/0201250a01">
�������ߣ���

{	FwC("cg/fw/fw�ұ�äĿ_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201260b43">
���Ǹ�������㡭����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201270a01">
��ʲô����

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201280b43">
�����ܱȽϺá�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201290a01">
���Ѿ�û���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
����ָ�ŵ��ڵ�������������˵��
����Ȼ��֪����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201300b43">
�������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201310a01">
������

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201320b43">
�����ˡ�������������ǡ�����

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201330a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
����������ش����޴��ķ��ʵġ���
������ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ夤�`�󡣤����󤺤����T������ꑡ�
	OnSE("se���L_����_�z_�ŵ�01", 1000);

	WaitKey(1500);
	CreatePlainSP("�}��д", 200);
	Fade("�}��д", 0, 1000, null, true);
	Shake("�}��д", 500, 0, 10, 0, 0, 1000, null, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="��������" src="voice/md04/0201340a01">
���������汿����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
��Ϊʲôû���ע�⵽�ء�
�����ֶ���һ�ӽ��͸�ע�⵽�ġ�

���������Ⱦ�Ӧ�ÿ��ǵ����Σ���Եġ�
��������ʿ����ǹ�ġ�ǹ�����������ǵ�ͬ�顪��
<RUBY text="����������">�Ѳ���ͬ��</RUBY>����������΢����������ס�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T�����T

	StR(1100, @50, @50, "cg/st/3d��`�����`���`_����_�i��.png");
	StL(1000, @-50, @50, "cg/st/3d��`�����`���`_����_�i��.png");

	OnSE("se����_����_�z�i��03",1000);

	FadeStL(300, false);
	Move("@StL*", 500, @0, @-50, Dxl2, true);
	OnSE("se���L_����_�z_̤���z��01",1000);

	FadeStR(300, false);
	Move("@StR*", 500, @0, @-50, Dxl2, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
��һ�����ұ���
�������������档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
//��������
<voice name="����" class="��������" src="voice/md04/0201350a01">
��<RUBY text="��ðƷ">��������</RUBY>�ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
����ʹ��û�ж���ʦ������޵ķ�ð��������Χ��
��ҲȫȻ�����ÿ־塣
������в�Ͼ�������в��

��һ��һ�Ļ�������ƽ����ɫ������һʵ��׽����⡣

�������һ�����ں͵��µ�ʿ��̸����
��ʿ��ָ����ߣ���������ٵ�˵��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201360b43">
����㡭���Ӱɡ�
���ᱻɱ�ġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201370a01">
�������������ǵĻ��𣿡�

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201380b43">
����΢���㡣
�����ɵ��˽�פ����ʿ���ɣ����Ǽһ�����
��״��˵ʲô����������װ����Σ��֮��ġ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201390a01">
������������

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201400b43">
����״�Ķ�������ʿ�������������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201410a01">
���š���

{	FwC("cg/fw/fw�ұ�äĿ_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201420b43">
�������߰ɣ�
���ҡ�����ţ����㱻ץҲ�������µģ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201430a01">
������ô�죿
����˵�Լ�һ����֪��ֻ��·�������Ǿͻ�Ц
�ŷ����ߣ���

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201440b43">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201450a01">
�������Ӧ����û�����ˡ�
���ǾͲ��ܶ����㡣��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201460a01">
����Ϊ�㻹û�д��ҡ���

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201470b43">
�������������ǡ�
��Ҫ��ô������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201480a01">
������ʲô������
��������ʲô����Ҫ���㣡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
�������������ǵġ�
�����������������������ӳ������ⲻ���ܡ�

�����ǣ��������������أ�
���ò���һ���ӵ����üƲ�����һ�����롭���û���
���������������������ˡ�

��˳���Ļ��������ܾ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
//��������
<voice name="����" class="��������" src="voice/md04/0201490a01">
������ô�죩

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
��Ȼ���ǼƲߡ�
�������Ǽ��̵�ʱ��Ҳ�ã���ʲô�������ǵ�
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�äĿ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201500b43">
����㡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201510a01">
�������Լ��ӵĻ����ҿɲ�������

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201520b43">
����������
���������ʸ����⡣��

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201530b43">
����һ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201540a01">
������ʲô����

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201550b43">
������ɱ���۷ɵ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(1000,true);
//���ܥå��������ƥ�������

	WaitKey(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
��ɲ�ǡ�
������ȴ����Χ��״����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 0, -344, "cg/bg/bg015_·���Y_01.jpg");
	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	CreateTextureEX("�}�ݷ���/�}���}", 16200, 200, -745, "cg/st/resize/st�ұ�äĿ_ͨ��_˽��l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);
	Request("�}�ݷ���/�}���}", Smoothing);
	Zoom("�}�ݷ���/�}���}", 0, 600, 600, null, true);



	Move("�}�ݷ���/�}�ݱ���", 60000, -100, @0, null, false);
	Move("�}�ݷ���/�}���}", 60000, -160, @0, null, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 2000, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 2000, 1000, null, false);

	Wait(500);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//��������
<voice name="����" class="��������" src="voice/md04/0201560a01">
����������������

{	FwC("cg/fw/fw�ұ�äĿ_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201570b43">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201580a01">
��������������

{	FwC("cg/fw/fw�ұ�äĿ_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201590b43">
���������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201600a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå��������ƥ�������

	WaitKey(2000);

	SoundPlay("@mbgm31", 0, 1000, true);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//��������
<voice name="����" class="��������" src="voice/md04/0201610a01">
�������ǵġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
���ҳ����ˡ�
�������ͬһ������ͬ�������⣬��������һ��Ҳ��
��������

�����ܷ񶨡�
�����ܲ����ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201620b43">
��ŶŶ������Ȼ������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201630a01">
��Ϊʲô��ô�룿��

{	FwC("cg/fw/fw�ұ�äĿ_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201640b43">
�����һ�������ɡ�
���ڿ��ǽ����Ϊʲô��ôƴ�����ҵ�ʱ�򡣡�

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201650b43">
��ͻȻ�뵽�ˡ�
���о���ϸ����δ֪����֮��Ķ��������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201660a01">
������������

{	FwC("cg/fw/fw�ұ�äĿ_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201670b43">
�����������ܾ��г�����ء�
��û�뵽�������ַ�ʽ����ɱ���۷ɵ��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201680a01">
���㡭��
���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
���������޴������⡣
����������ԥ�ػش�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201690b43">
���ޡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201700a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ��ꡣ�ҤӸ����


	CreateTextureEX("sita", 100, @0, @0, "cg/bg/bg015_·���Y_01.jpg");
	Fade("sita", 0, 1000, null, true);
	CreateEffect("�}����", 101, @0, @0, 1024, 576, "Monochrome");

	Fade("ue", 1000, 700, null, false);


	OnSE("se����_�z_���٥�_�ҤӸ��", 400);

	WaitKey(2000);


	SetFwC("cg/fw/fw�ұ�äĿ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201710b43">
���۷����Һ���Ҫ������Ҫ�����ѡ�
�������������������һ���κ��˶������㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ��ꡣ�ҤӸ����


	Fade("ue", 1000, 600, null, false);

	OnSE("se����_�z_�ҤӸ��01", 600);

	WaitKey(2000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
����֪���Լ�����������Ե��
���ò��Ÿ���Χ����������ս����

�������ǲ����ġ�
�����ǣ���������Ļ��Ҿͻ�������

�������ұ�ӵ��ɱ���ҵ�������

�������ȱ���ˣ�����Ȼ�������ʡ�
�����Ž��������������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
//��������
<voice name="����" class="��������" src="voice/md04/0201720a01">
����ԭ�����𣿡�

{	FwC("cg/fw/fw�ұ�äĿ_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201730b43">
����ԭ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ���


	Fade("ue", 1000, 500, null, false);


	OnSE("se����_�z_���٥�_�ҤӸ��", 800);

	WaitKey(2000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
�����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201740b43">
����������ô��Ǹ��
����������ô����������ԭ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ���

	Fade("ue", 1000, 400, null, false);

	OnSE("se����_�z_���٥�_�ҤӸ��", 1000);

	WaitKey(2000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
�����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201750b43">
�������۷ɵ��㣬�һ��һ���ӡ�
��һ���Ӷ���ԭ���㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ���


	Fade("ue", 1000, 300, null, false);

	OnSE("se����_�z_�ҤӸ��01", 1000);

	WaitKey(2000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
������

���ⲻ����ɱ��
���һ��и������¡�����������

������������������ˣ�����Ȼ��������������
����Ϊ����Ψһ�ĵ�·��

���ǲ����ӱܵĵ�·��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
//��������
<voice name="����" class="��������" src="voice/md04/0201760a01">
���㡭����

//��������
<voice name="����" class="��������" src="voice/md04/0201770a01">
��Ҫ���ң����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
���ʳ��������⡣

��������ͽ����ˡ�
���ҵ�<RUBY text="����">����</RUBY>�ḯ�ࡣ

���ڵõ�����Ĵ�ʱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("�}ɫ100", 500, false);
	FadeDelete("�}�ݷ���*", 500, true);
	Delete("�}�ݷ���*");

	SetFwC("cg/fw/fw�ұ�äĿ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201780b43">
��������

{	Fade("ue", 1000, 1000, DxlAuto, false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201790a01">
��������������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201800a01">
��Ϊ����Ϊʲô����

{	FwC("cg/fw/fw�ұ�äĿ_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201810b43">
����Ϊ����ʧȥ���塣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201820a01">
�����塭������

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201830b43">
���۷���ȥ�����塣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm05", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
�������۷ɡ���
����ȥ�ġ������壿

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201840b43">
������Ӧ��������ɣ�
������ǽ����������ɱ���۷ɵĻ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201850a01">
���⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
���У������С�
Ϊ�˷�ֹ���ѡ����������Ǻ���ֳ������״����
������

���������ԡ�
��Ϊ�˶�����ֻ����ģ��崨���

��ɱ�������۷ɵģ��Ǵ�����<RUBY text="����">��Լ</RUBY>��
��
�������ƶ����֮��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201860b43">
���Ҳ�������ʲô���塣
�����ڡ����Ҳ���������

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201870b43">
�����۷ɵ���������ȡ����ʲô���Ҳ���
֪������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201880a01">
��������

{	FwC("cg/fw/fw�ұ�äĿ_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201890b43">
�����ǣ����㡭�����������壬�������á�
��<RUBY text="����">����</RUBY>����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201900b43">
����Ϊ����Ϊ�������۷ɵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
���ڰ�Χ�Լ���������������˿��û�ио�����η�壬
���ȴ�о����ˡ�
��ʧ����ѧ�����ȵ����ĸ������Ͽ�ö�ĸ���Ͷ����
�ҡ�

���������׵���ˡ��

����Ҫ�ң��ػ����塣
�������۷ɣ���ȥ�����塣

������Ҫ����Զ���������۷ɵ�����

��������Ȼ�ˡ�
������˳Ӧ�����������������ط���

��ɱ���ߣ�
����������������ɱ֮�˵�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
//��������
<voice name="����" class="��������" src="voice/md04/0201910a01">
�������ұ�����

{	FwC("cg/fw/fw�ұ�äĿ_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201920b43">
����ֻ�С�����һ��Ը������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201930a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//���o�T�����x�
	OnSE("se����_�z_�l����02", 1000);
	WaitKey(500);
	CreateSE("�w��", "se���L_����_��ͻ�M01");
	MusicStart("�w��", 0, 1000, 0, 1000, null,false);
	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
��ͻ�������ľ������һع�������
�����������������ǵ����������������ˡ�

������ߡ������ǡ�
�����ﶼ�����ˡ�

��������һ���򡪡������ǵľٶ��������ƺ��ܽ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//��������
<voice name="����" class="��������" src="voice/md04/0201940a01">
������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
�������������������ߡ�
��������ʿ��������������һ�۾������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�äĿ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201950b43">
���ƺ���ʲô�������硣
����Ȼû��̫���������

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md04/0201960b43">
���Һ���������Ԯ��ʲô�ġ���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0201970a01">
��Ԯ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_021.nss"