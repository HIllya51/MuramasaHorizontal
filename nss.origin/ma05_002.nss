//<continuation number="1280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_002.nss_MAIN
{
	$TITLE_NOW=" ��������������ƪ ������������� ";

	//��e�ޥ����ٌ���
	Conquest("nss/ma05_002.nss","SetHikaruHug",true);
	Conquest("nss/ma05_002.nss","HikaruHug",true);

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
	#ev008_���Ӥ򱧤���Ů = true;
	#bg047_�������_�a_02 = true;
	#bg050_�������Tǰ_03 = true;
	#bg048_�������_���ե���_02 = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�Զ�����=true;
	#voice_on_�����y=true;

	$PreGameName = $GameName;

	$GameName = "ma05_003.nss";

}

scene ma05_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_001vs.nss"



//�������ȥ롸���徎�������T��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}�\Ļ��", 1500, "Black");
	Delete("�ϱ���");

	CreateTextureEX("�}�ƥ�100", 2000, Center, Middle, "cg/sys/Telop/lg_���徎.png");
	Fade("�}�ƥ�100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("�}�ƥ�100", 2000, true);

	WaitKey(2000);

//����Ρ��Ϊz��
	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 1000, "#FFFFFF");
	FadeDelete("�ϱ���", 1000, true);
	SoundPlay("@mbgm15",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ĵط���������һ����
���谵��ڵ������С�

����������
����������

��û������ס�ֽŵļ�����
��û�н����������������

��������ˣ���������������
�������ҵ�������

����һֱ�����
����������ͬ�����Ρ�

����������Ҳ��ʼ�ˡ�
���ο�ʼ�ˡ�

���Ӵ���Ƥ���г�ȡ�ļ���ѭ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҋ���ʤ�Ů�ȳ��ӣ��y�ȹ⣩
	CreateTextureEX("�}�ţ�", 3100, Center, Middle, "cg/ev/ev008_���Ӥ򱧤���Ů.jpg");
	Fade("�}�ţ�", 2000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������һ��Ů�ӵĻ��С�
�������ҵģ���ĸ�ס�

��ĸ�׶�����һ�����ӡ�
�������Ǹ��ס�

��ĸ�׶��Ÿ��ף�һ��һ�䡢��ͬ����һ���������

���㲢���Ǹ��ס���

��ĸ��˵����


���򲻿��������⺢�ӵĸ��ס���

���⺢������һ���˵�Ů������

���⺢��û�и��ס���

���⺢�Ӳ������Ů������

�����׳�Ĭ�����š�

�������ı����Ͽ��Կ���������û��ѡ������ɡ�
�����ף���ֻ�Ǳ���֪����������ѡ�

��ĸ���ظ��š�


���⺢��û�и��ס���

��������û�и��ס�


���㲻���⺢�ӵĸ��ס���

����������ˣ������ҵĸ��ס�


���⺢�ӡ���<k>�㲻���԰�����

���ҡ���
����������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ϊz
	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	CreateColorSP("�}��ܞ", 100, "#000000");
	FadeDelete("�ϱ���", 2000, true);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ν����ˡ�
���ص��ڰ���

���ֻ����Ͽ�ʼ�İɡ�
���˴�ʱ�����ת�������ξ����ظ���

�����ϸ��׵�ĸ�ס�
�����ȶϾ���Ů��ϵ�ĸ��ס�

������Ǹճ���֮���ҵ�˫�ۡ�������˵���䡢Ƥ��
��������֤�ľ���
����ӡ��������Դ�ļ��䡣

���ն���ĸ��ף�
����ĸ�����ְ����˲�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҋ���ʤ�Ů�ȳ��ӣ��y�ȹ⣩
	CreateTextureEX("�}�ţ�", 2100, Center, Middle, "cg/ev/ev008_���Ӥ򱧤���Ů.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������ǣ���������ԭ�㡣
�����ڴն���ģ���ʼ�ļ��䡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}��ܞ", 15000, "#FFFFFF");
	Fade("�}��ܞ", 2000, 1000, null, true);
	WaitKey(1000);
	ClearWaitAll(2000, 1000);

//�����_���Ⱥ�R�h�������Ƭ���h
//�����ե������ѺͶ�ʮ����L���ɤ�ʤ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg047_�������_�a_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg048_�������_���ե���_02.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm29",0,1000,true);

	SetNwC("cg/fw/nw��T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯ͬ��Ů��
<voice name="����㣯ͬ��Ů" class="������Ů" src="voice/ma05/0020010e226">
����ô����������ļ��Ѿ�����
������ȥ���𣿡�

{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma05/0020020e238">
�����ԡ������ˡ�
��ι���ն�������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020030a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`�ޥ���
	StL(1000, @-30, @0,"cg/st/st����_ͨ��_��Ta.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma05/0020040e238">
������������𣿡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020050a00">
���Ǹ������պ���ɡ���
���������ȷ�ϡ���

{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma05/0020060e238">
����Ӵ��
���ҿ�����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ڤ�ڤ�
	OnSE("se�ճ�_��_����᤯��01",1000);
	WaitKey(1000);
	OnSE("se�ճ�_��_�����ä�",1000);

	SetNwC("cg/fw/nw���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma05/0020070e238">
�����������ţ�û�����⡣
�������Ѿ�������Ϣ�ˡ��Ѿ�����׼ʱ�°��
ʱ���˰ɣ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020080a00">
�����ɹ��ģ���ʤ�̿֡�
����ô���Ҿ��ȸ���ˡ���

{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma05/0020090e238">
���õģ������ˡ���

{	NwC("cg/fw/nw��T.png");}
//������㣯ͬ��Ů��
<voice name="����㣯ͬ��Ů" class="������Ů" src="voice/ma05/0020100e226">
���������ˡ�
�����ˣ��ն�ǰ�����ֿ��Ǳ�����ӿͻ�����
�õ���ˮ���������õ��ȥ�ɡ�
��ͳ���˺�С����һ�㡣��

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020110a00">
��лл��
���������˶���ܸ��˵ġ���

{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma05/0020120e238">
�����С�
���ն����ı��������˵��û��
�ҵķ��𣿡�

{	NwC("cg/fw/nw��T.png");}
//������㣯ͬ��Ů��
<voice name="����㣯ͬ��Ů" class="������Ů" src="voice/ma05/0020130e226">
����û��˵��ǰ����û����ô
�������ء�
���Ͳ����ɲ�һ��Ŷ����

{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma05/0020140e238">
���ۣ��ù��֡���

{	NwC("cg/fw/nw��T.png");}
//������㣯ͬ��Ů��
<voice name="����㣯ͬ��Ů" class="������Ů" src="voice/ma05/0020150e226">
�������������Լ����Ƿ�Ҳ��һ��
���ϰ���ǰ����
�������кܶ��أ�ʣ����������
�ɾ��˷��ˡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020160a00">
������лл��
���һ�ȥ�õġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg047_�������_�a_02.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitKey(500);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ȼ��δ�úܶ࣬��������ˣ�װ������ˮ���Ĵ�
����Ȼʮ�ֳ��ء�
�����������������ָ�⣬�����һ·�ϵ�ʱ��ʱ��
���������֡�

�������ǰ���ʱ�֣����˿�ʼ����������
����ѧ�ؼҵĺ�ͯ��ѧ��������������ʳ�ĵ�ĸ�׺�
Ů���������ǵش����ض�����Ұ��������һ��Ҳ��ʮ
�����֡�

��ӭ���������λ��������һ����ʶ��
�������ͷ��������������

��ż��Ҳ��ͣ�½Ų�����һС�����
����������ϲ����߶���ھ�������

������̸�������������ƺ��������촽���źϷ�������
����ֻ�ǵ�ͷ�����š����Ҷ��ԣ���Ҳ���������˸е�
ʹ�����Ϊ��
�����������඼�ǲ���ô���˸��˵����ݡ�

����¡�����꣬��͡���
��ʷ�齫��μ������ʱ��ռ䣬���Ƕ��޴ӵ�֪��Ȼ
��������ʵ���������ʱ�������Ƕ��ԣ������Ѷ���״
������ͷ��ֻ�ܼ�ϣ����δ����

�����뱯���ս�������ֹ������ꡣ
�����������������Ļ��������Ļ��Ϊ�˹���ͳ�εĻ�
ʯ��ר���������ڸ��ؽ���������ѹ��

����ʹ�������ڹ�������˵���ڣ���һ��Ĵ��¼�����
����Űɱ����Ȼ�����������������У�������Ŀ��
��������������Ļ�������С��Ҳ������������
���챣�ӣ����챣�ӡ�

����ô˵�ţ�����Ŀ��ʸ��̫̫�������߹��ꡣ

����Ҳ�����������

��ʸ��̫̫�뿪ʱ�����µĻ�����ڴ��ȫ���κ�һ
�����κ��˶�������˵�Ļ��ɡ�
��Ȼ��������С������ǿ���˵������仰������Ÿ�
Ҳ������������Щ��Ĳ�ͬ��

��������С���<RUBY text="����">��״</RUBY>��������Ҳ�ǲ��޵���ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q��K��
	CreateColorSP("�}��ܞ", 8500, "#000000");
	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	WaitKey(500);
	DrawDelete("�}��ܞ", 1000, 1000, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����˵������С�����òҲ����Щ�ı䡣
����żȻ�������ܣ���������һ�㡣

����ȻĻ����ֹ���������ƾӣ�Ȼ���������ܲ����Ͽ�
���������ҹ���ܵľ�����ȻΪ�����١�
������ֱ������ǰ������С���ϻ���һ�������ġ�

��ÿ��·�����ң��ܻ��кü�ֻ�����˺�У�ʮ�����֡�

�������Ѿ��������ˡ���ʵ�Ĺ�ȫ����ɱ��������֮��
�ļ�����֪��ʱ������ʧ���١�

������ֱ������ǰ���ǱߵĹ�԰�ﻹ�и������ṩ����
���豸��
�������Ѿ������ˡ���������Ϊ·�ϵĲ���֮��ı���
���ˡ�

��Ȯ�����뺢ͯ�Ļ�Ц�������˵Ľֵ���
����������ʧ���������������˸е����˺ܴ�ı仯��


����������
�����ǵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 0, null);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma05/0020170a00">
������һ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ʧ�Ķ�������һ����
������һ����

���Ǽһﲻ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma05/0020180a00">
����������ǡ�
��ȥ��Ĺ⾰�Ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����һ����
���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg047_�������_�a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

	CreateEffect("���ե����ȣ�", 200, 0, 0, 1025, 576, "Sepia");

	FadeDelete("�}��ܞ", 2000, true);

	FadeDelete("���ե����ȣ�", 500, true);


	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/ma05/0020190a14">
����������

{
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020200a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡤�^ȥ�Щ`�����
	StR(1000, @30, @0,"cg/st/st������ǰ_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,true);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma05/0020210a00">
���⡣
���Ҳ���һֱ˵�����ص�������
���𣿡�

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020220a14">
���š������ˡ�
�������ҿɲ��ǵ��д�ӦŶ����

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020230a14">
��������ӭ�Ӹ�磬��ʲô���Եģ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020240a00">
��Ů�Ӳ������������
����Ҳ�Ѿ�����С�����˰ɣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020250a00">
���Ȳ�˵��Щ���һ����ˡ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020260a14">
�������뷨̫�Ű�������������
��Ҫ������Ⱥ�����֮��Ŷ����

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020270a14">
���Ȳ�������ˣ���ӭ�ؼҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�w�˚i��
	CreateSE("SEL01","se����_����_�}���i��01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	DeleteStA(300,true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma05/0020280a00">
��Ҳ������һ�Ŷ��۵����С�
��Ȼ�����ӹ���������ķ������������ɡ�
���ú�����һ�£���������������һ����
���񶨵�̬������������ͬ�ġ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020290a14">
��ԭ����ˡ����е���
����������ν�����ɣ�����������̣�Ů��
�ػ���԰����������Զ��ʱ�ڵ����ηֹ�
���ѡ���

//���⡿
<voice name="��" class="��" src="voice/ma05/0020300a14">
�����ִ��Ѿ����������ˡ�
��Ҳ�в�ս�������˺Ͳ��ٳּ����Ů�ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020310a00">
������ȷ��ˡ�
������һ������ȷ���û�����ܹ�
���԰ɡ������Ǻ��ߡ�����

{	SetVolume("SE*", 300, 0, null);
	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020320a00">
������̫̫�����Ϻá���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020330a14">
�����Ϻá���

{	NwC("cg/fw/nw��������.png");}
//������㣯��������
<voice name="����㣯��������" class="������Ů" src="voice/ma05/0020340e076">
����ѽ���ⲻ�Ǵն��ҵ�������ô��
�����Ϻá���

//������㣯��������
<voice name="����㣯��������" class="������Ů" src="voice/ma05/0020350e076">
�����������ӣ���ϵ�ܺ��ء���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020360a00">
����ϵ�ܺ�ȴ����ô����˵�Ļ��أ�
�����Ѱ졣��

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020370a14">
���ţ���ϵ�ܺá�
�����ԾͲ�Ҫͣ�����ʶȤ�ؿ���뿪�ɡ�
����̫̫����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020380a00">
��ι���⣡��

{	NwC("cg/fw/nw��������.png");}
//������㣯��������
<voice name="����㣯��������" class="������Ů" src="voice/ma05/0020390e076">
����������
��������ð�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	CreateSE("SE01","se����_����_�i��01_L");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,true);
	SetVolume("SE01", 6000, 0, null);
	WaitKey(1000);

	CreateTextureEX("�M��StL01", 100, Center, InBottom, "cg/st/st����_ͨ��_��Ta.png");
	CreateTextureEX("�M��StR01", 100, Center, InBottom, "cg/st/st������ǰ_ͨ��_�Ʒ�.png");
	Move("�M��StL01", 0, @-256, @0, null, true);
	Move("�M��StR01", 0, @256, @0, null, true);

	Fade("�M��St*", 300, 1000, null, true);


	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma05/0020400a00">
��������Ҳ̫�����ѿ��˰ɡ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020410a14">
��ֻ��һЩ��Ƥ������
��������̫̫�����á���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020420a00">
�����ǵġ�
��Ϊ�˳�Ϊ��Ů�����Ȼ��Ҫ���а�����

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020430a14">
������Ҫ����Ҫ�����ֶ����Ų���Ҫ��
���ⲻ��Ҫ����

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020440a14">
��������ղ�˵�Ļ�������Ը��ʺ��ػ�
��԰�����ʺ�������ս��
���������вŷ����ҵĸ��ԡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020450a00">
����˵���ֻ��ˡ�
���㲢���˽��Լ�����

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020460a14">
���˽�ģ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020470a00">
��ֻ��Ҫ�ų�һ�㡣
���⡣�㲻�˽��Լ��Ƕ�ô�ʺ�����
�������

{	FwC("cg/fw/fw������ǰ_�sȻ.png");}
//����Ȼ
//���⡿
<voice name="��" class="��" src="voice/ma05/0020480a14">
��������

{	FwC("cg/fw/fw������ǰ_�դ�.png");}
//�����դ�
//���⡿
<voice name="��" class="��" src="voice/ma05/0020490a14">
������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020500a00">
���������Ժ�����������������
��һ�뵽�ҽ��������Ǹ����������š�
��Ȼ����ʮ���ź�����

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020510a14">
�������ǡ����𡭡�
����������������

//���⡿
<voice name="��" class="��" src="voice/ma05/0020520a14">
�������������Ը�⽫�Ҳ������֮��
�Ļ���
��Ҳ��Ҳ���ǲ��ܿ��ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020530a00">
��������

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020540a14">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020550a00">
�������˼�ǣ�������취��Խ���ʵ������ȥ
��������˳�ս�ı�Ҫ����
�����Ǹ������Ⱑ������

{	FwC("cg/fw/fw������ǰ_�Τ�����.png");}
//���^�����ƤΤ�����
//���⡿
<voice name="��" class="��" src="voice/ma05/0020560a14">
������������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020570a00">
����ô�˹⡣
���·������������������Ĳҽе�
���顣��

{	FwC("cg/fw/fw������ǰ_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020580a14">
�������������£�
�����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetHikaruHug();

	SetFwC("cg/fw/fw������ǰ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0178]
//���⡿
<voice name="��" class="��" src="voice/ma05/0020590a14">
�����ˣ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020600a00">
����Ŷ?!��

//���w�ӤĤ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020610a00">
��ι��ι��
����Ҫ�����Ҳ����ϣ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020620a14">
���Ҿܾ�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020630a00">
�������Ͳ�����·�ˣ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020640a14">
�����߿�����
��ֻ�����̶ֳ���ô��Ӯ���˹��أ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020650a00">
��������
�������������𡭡���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020660a14">
���ԡ�
��������ȥ�����ɡ�����ʳ�Ĳ���
�ˡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020670a00">
����ȥ����

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020680a14">
����Ҫ��
���߰ɾ�������ȥ�����ꡣȻ��
�������߹��ꡢ���̡����ȥ����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020690a00">
���ǲ�������С��һȦ��
�������һ���С�����Ц���ģ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0020700a14">
�����������ǿɲ����ˣ�
�������Ļ���û����Ը��޸����ˣ���

//���⡿
<voice name="��" class="��" src="voice/ma05/0020710a14">
���õģ�һ��Ҫ��ô�ߣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020720a00">
����˵�������Ұɡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���F�g�͎�
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg047_�������_�a_02.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 2000, true);
	WaitKey(1000);
	FadeDelete("�}��ܞ", 2000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma05/0020730a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���е������ӹ�Ƥ�����ҵ����������һ�¡�

��������ȥ�ɡ�
���������Ҫ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������h��
	ClearWaitAll(2000, 2000);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg050_�������Tǰ_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm19",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���뿪С������Ľ�����԰����Ȼ�󴩹���԰��һ���
��һ��λ��ɭ���еĺ�ΰլۡӳ��������
�����ҵļҡ�����ô˵Ҳ����Щ��֪�ִ磬��֮������
����ס�Ĵն��ҡ�

����޴��լۡ�������������ؿ��������һ������
�����Լ���Ϊ�Թ�����ʵ���ϡ���Ҳ��һ��������ʵ����
��Ϊͳ���߾�����Ƭ���ص����ҵķּ���һ��ݵ�λ��


��Ȼ��������Ե�ɣ����п������壬�����������ء�
����˵����Կ�С�ã�Ȼ����һ��<RUBY text="����">����</RUBY>��ס����˵����
�ݿ���ίʵ̫���˷ѣ�Ҳ�������ٲ���֮����

������ס�ڹ�Ԣ�ﷴ�����ɵö࡭��
��Ȼ���ն����ǲ����������ⷬ�ٶ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
//	CreateColorSP("�}��ܞ", 15000, "#000000");
//	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
//	WaitKey(500);
//	OnBG(100,"bg053_�����Ҥ�ͥ_03.jpg");
//	FadeBG(0,true);
//	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�����ҵ���
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);


	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma05/0020740a00">
���������ǡ�����

{	#voice_on_�Զ�����=true;
	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0020750b52">
�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����������ʱ������������˸��棬���ڲ���ɲ�Ǽ��
��Ӳ�����塣
��������Ŀ�������ض�ס�ҡ�

����������������ˣ���ʹһֱ��Ӳ��Ҳû�취��

���Ҵ������ÿ����˵�һ�ԣ������������һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma05/0020760a00">
�����Ҵ��ˡ�
����֪���ڴˣ�ʧ���ˡ���

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0020770b52">
���ް���
���°�������𣿡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020780a00">
���ǡ���

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0020790b52">
���Ϸ򷽲���΢��ͳ˵��Щ����
��֮���������ɡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020800a00">
���ǡ���

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0020810b52">
��������ô��ͳ��
�������ϵļ���ǰ���úÿ����Ϸ�
��˵�Ļ��ɡ���

{	NwC("cg/fw/nw������.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020820b46">
���������š��õġ�
���ͼ����ˣ����ҡ���

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0020830b52">
���ߡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���Է����Ǳߴ����������ԱǺ�������������뿪
�ˡ��Ų������������������Щ����ΡΡ��
��Ȼ����˵�����Ϳ͵Ŀ��׻�����ʮ�������������
�ǻ������̶ȵĹػ����е����˵��ˡ�

���Ǹ�����Ҫʼ�հ���һλǿ�Ƶ����߰ɣ�����Լ�
�ഺ��������ʵ��
����Ŀ����ҹ·֮�Ͼܲ��˳�����ѡ�����ߵı�ӰƬ��
�󣬱�ת���������������ͬ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_��Ta.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma05/0020840a00">
�������һ����ˡ�
��ͳ���ˡ���

{	#voice_on_�����y=true;
	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(300,false);
	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020850b46">
���ã���ӭ������
������Ҳ�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���ܾ�����Щ�����˫�۷�������������λŮ�ԡ���
�ն��ҵļҳ����ն�ͳ����΢Ц������
���������˶�ʮ���Ц�ݡ�����ʹ�����������±�Ǩ
Ҳ�����ı䡣

�������Դ���ƣ�͡�
����Ȼ�ܸ��������ҵ�ο�ʣ������Ҹ�ϣ������ע��һ
���Լ������塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma05/0020860a00">
������˵��ʲô���������ĵĻ��𣿡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020870b46">
���š����ó�����������
�����������ӵ��۾��ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
������Ů�������������ƿ����ߣ��������
��Ȼ�����������У������ͳ�һ��Сֽ�С�

����Ҳ����������ʶ�ؽ�������ڴ���ȡ��
���У�Ѹ�ٵص��ϻ�
���·���רΪ��ĸ�Ŵ������ϵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020880b46">
��лл����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������SE��Ҫ��������ȼ����褦�ʸФ��Τ���������äƥ��Х�������
	CreateSE("SE01","se����_����_�ޥå����");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���������̿����ҵݳ��Ļ������һ������Ȼ�����
һ���̡�
���������������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_�w��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020890b46">
��������������ˡ�
���ڱ�����ǰ�����������ء���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020900a00">
�����ݵĽ��̣������������ˡ���

{	FwC("cg/fw/fw�y_�w��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020910b46">
����˵�Ļ�һ�㶼���ɰ�����
������Ҳ���Ұɡ�һ�������ˡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020920a00">
���ǡ�
����ô���ͳ�һ������

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020930b46">
�����Ǹ��ú��ӡ�
����������ղ�����˵�������Ǽһ�Ҳ��̵�
������ܰ�����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020940a00">
����Ϊ֪��һ�����˾ͻ���񫣬���Լ��
��������������ô˵�İɡ�
���������Ǹ��˻�˵�Ļ��ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���ҽӹ����̺�����ߡ�
������ô����Ҫ����ʱ�򡪡��벻֪��ʱ�ѽ�����ǰ
����ĸ��Ŀ��ԡ�

������������Ц��
���������е�����ǰ�ˣ����ҵ�������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020950b46">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020960a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
�������ҵ���ĸ����ϲ����ô�����硣
�����������š�

��������ĸ����Զ���ˣ�����������һ���ѵ�ȼ���̲�
�㡣˵ʵ�����Ҳ�̫��Ϥ��<RUBY text="����">ζ��</RUBY>��
��ֻ������Ҳ˵������ʹ����£�һ���ܾ���ĸ�ֻ���
��Ť�����Ա��������Ȱ����ʱ�����ܾ���

�����ң��ҵ�ȷ�ܸе����л���ƣ�͵�Ч����
����������Ȧ������̾�˿�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020970b46">
��������Щ�һ���¡���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0020980a00">
���š���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0020990b46">
�����Ҽ��������ζ�Ҫ�Ͽ촦��
��������Щ�һ�������Ϊ�Ļ�����ʧ����
С������桭��������ô˵�ġ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021000b46">
��С�����������������𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021010a00">
��������ô���ܡ���

{	FwC("cg/fw/fw�y_�w��.png");}
//�����ѩ`��
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021020b46">
���š���

{	FwC("cg/fw/fw����_�@��.png");}
//�����ѩ`��
//��������
<voice name="����" class="����" src="voice/ma05/0021030a00">
�����ڱ��Ҵ�����ǰ˵���⻰����

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021040b46">
��˵©���ˡ�
����ѽ��û��ס����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021050a00">
�������Һ��ҵ�ʱû���ֳ�����

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021060b46">
�����ˣ��Ǳ�Ҳ�Ѿ�ϰ���ˡ�
��������û������Ѫ�ܡ���

//���y��
<voice name="�y" class="�y" src="voice/ma05/0021070b46">
����˵Ҳ���������ˡ�
���������϶���˯һ�����Ͼͻ���ͣ�ˡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021080a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���Ǳ�ƽʱ��Ҫ���ŵ�������������Ϊ�����


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma05/0021090a00">
������������ˡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021100b46">
���ţ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021110a00">
�����Ҵ��ˣ�������İɡ�
����ʵ����ʹ�����ǡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021120b46">
��˭֪���ء�һ��һ��ɣ�
������һ���ǲ�����С������ǿ�����
������̬�Ȱɣ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021130a00">
����ô��ʵ��������δ�¶������𣿡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021140b46">
��������ô��Ϊ�ġ�
������Ҳ�п���������������˵Ҫ����ʱ��
�ͱ���²���̨���ء�����

//���y��
<voice name="�y" class="�y" src="voice/ma05/0021150b46">
��С���ϵ����ǲ��������ҵ����ľ���֪���ġ�
�����Ѿ�ϰ���˺��ޱ����ؽ��ܱ�����˵�Ļ���
����Ȼ���ڴ�Ҷ����������������Ե�̬�ȡ�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021160a00">
������ʱ�����������ڱ��Ҵ������ϵ���̬��
��ʼ�����޳ɵ����������ֿ�����Ҳ����û�С�
���������𣿡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021170b46">
���Զԡ������Ļ������ǻ����ء�
������˭����ϣ���ģ���Ƿ���ǵ�ս������
�Ὺʼ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
���������ǻ��ƣ���ĸ�ظ�����仰�������̾Ϣ��

���������Ȧװ����У�����һ˲��������ʧ�ˡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma05/0021180a00">
����������ܿ�������̬����

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021190b46">
���š������Ŭ���ġ�
��������ֻҪ���ҳ䵱�����̵��ڼ䣬С�����
�Ƕ�����ת��ɡ���˵��������η�壬��ֻҪ��
��Ϊ��ʸ֮�ģ���һ��ǻ�װ���²��ؼ��ġ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021200a00">
�����Ͼ��м����𡣡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021210b46">
�����������ء�
��Ϊ�˲����׹��Ļ��Ƿɽ����������
�ط���һ��Ҫ������ȫ���С���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021220a00">
����ʲô��������������
��Ϊ�˰���ͳ���˵�æ������

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021230b46">
��ֻҪ������̨������ͻ������־�ˣ�û��ϵ��
�������������ȴ�����ɣ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021240b46">
��׼�������ɡ�
��ϴ��ˮ�Ѿ��պ��ˣ�ȥ���������ɡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021250a00">
���ǡ�
������������أ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021260b46">
��������˯���ء���
�����������ɡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0021270b46">
����ǿ��������Ҳ��̫�á���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0021280a00">
���ǡ���
����ȷ����ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_003.nss"



.//�ץ�����======================================================

..//��ϥ�
function SetHikaruHug()
{
	CreateSound("�Уӣ�", SE, "sound/se/se����_����_����01");
	SetAlias("�Уӣ�","�Уӣ�");
	CreateProcess("��ϥ�", 5000, 0, 0, "HikaruHug");
	SetAlias("��ϥ�","��ϥ�");
	Request("��ϥ�", Start);
	Request("��ϥ�", Disused);
}

function HikaruHug()
{
	Move("@�M��StR01", 300, @-482, @0, Dxl2, false);
	Wait(300);

	Request("@�Уӣ�", Play);

	Fade("@�M��St*", 600, 0, null, false);
	Shake("@�M��StL01", 300, 2, 0, 0, 0, 1000, DxlAuto, false);
	Shake("@�M��StR01", 300, 2, 0, 0, 0, 1000, DxlAuto, true);
	WaitAction("@�M��St*", null);
	Delete("@�M��St*");
	WaitPlay("@�Уӣ�", null);
	Delete("@�Уӣ�");
}