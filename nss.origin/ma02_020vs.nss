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

scene ma02_020vs.nss_MAIN
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
	#bg025_�ӵ�ɽ�}��ɭa_01=true;
	#bg025_�ӵ�ɽ�}��ɭa_02=true;
	#bg002_��a_02=true;
	#bg001_��a_02=true;
	#bg020_ɽ�}�ӵ�_02=true;
	#bg020_ɽ�}_02=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_021vs.nss";

}

scene ma02_020vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_019vs.nss"

//��ɽ�h������
//����Ϧ��


	PrintBG("�ϱ���", 15000);
	OnBG(100,"bg025_�ӵ�ɽ�}��ɭa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 2000, true);
	WaitKey(1500);
	OnBG(100,"bg025_�ӵ�ɽ�}��ɭa_02.jpg");
	FadeBG(4000,true);
	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
������ʱ�֡�
��ɽ������һƬ����֮�С������Ⲣ��Ŀǰ�������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma02/020vs0010a00">
��������������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0020b55">
������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0030a00">
�������Ƕ�����ѩ���һ�ص�ѹ�ƣ�ʹ�ý�
������ԸΥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ж���Ӫ����������������ҷ�ֻ��һ����
���������֮�£���Ȼ��һ�����˱�Ҫս�������з���
�ж�ȴ��˶�����������ҷ�Ҳ���޷������ս��Ŀ�ġ�

  ����˵����ɽһ������ѩ���ҲӦ���ڷ������Ʋ���
ʱ����һ���������һ������ս���ء�
�������ǹ��ھ���ս���������ԣ��Ӷ���ս����ʧȥ��
���塭��

��׷��Ī����
��ΪĿǰ�޿���ص���̬�����ƣ�Թ�����Լ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0040b55">
��ȷʵ��������ٱ�������ˡ�
�������˿ɻ�û˥�������̶ֳȱ��ŵ�������
Ŷ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0050a00">
���š�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0060b55">
���Ǽһﲻ������ӵ���
����ˣ�����������Բ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0070a00">
�������ǡ�
��������������ʱ���ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������̬��չ��������״����
���ô�������֦�Ĵ�ʩ��Ч���ĺ�����ǲ�٣���ҹҲ��
�ܻ�ӣǣȣ������˵ء�

��������̬�ݱ�����������ַ��ط�������Ҳ��������
�ı䡣���Դ�����˵��̬�ᷢ����䡣
������Ϊ����·�������������������ﵹ�á�
��������һ���ᱻ������Ϊ��

���ҳ���峤��ҲΪ��ʵ����ɽ��Ϻ��һ�ҵ��չ�֮��
Ҳ��һ�������أ������п��ܻᱻ�������ж��ط�����
ȫ��֮����߱ɱ��
����������˵һ�����鷳�˱�����¡�

�������Ƿ��ӣǣȣ�Ѳ������¶��ѡ�������һ�����
��Բ��ȥ���ڼ���뽫�����˽ᡣΪ�˱��������ҵ�˽
�¶����´������뱯�ҽ�֡�
����ʣ��ʱ�䲻�࡭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma02/020vs0080a00">
���ٿ��ŵ�����հɡ�
�����������Ҫ���ը���ӵ��ı�ըǿ�ȡ���


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0090b55">
���š�������
��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0100a00">
������������


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0110b55">
������û���Ǹ���Ҫ��
���Ǽһ���������ڵ������˰�����


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0120a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ա��T���������ߤ�܉�E
//��������ݳ�������졢���m����

	PrintGO("�ϱ���", 15000);

	CreateColorSP("�}��ܞ", 5000, "#000000");

	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(0,true);


//	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/st/3d��ɽ_�T��_���La.png");
//	Move("�}����100", 0, @-800, @100, null, true);

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 6100, 0, 0, "cg/bg/bg001_��a_02.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 6200, -35, -450, "cg/st/3d��ɽ_�T��_���La.png");
	Move("�}�ݷ���", 0, @0, @-288, null, true);
	SetBlur("�}�ݷ���/�}���}", true, 3, 300, 100, false);




	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	Fade("�}����100", 0 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0056]
���ᴩ������յĺ�����

�����̻���Ծ���Ĺ켣��
�������׶�������һ�ʻ���

�����ң�
������Ϸ�ʣ�
����Ц��
���Լ����ա�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M02",1000);

	Move("�}�ݷ���", 500, @0, @432, Dxl2, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, true);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0057]
�����е����ߡ���
����һλ��

������ǰָʾ�㣬���ϸ�����ҵ�Ĵ����Ƿɿ����ɢ����
�����������Ǳ�һ�ۺ����ٴ�������ա��������ۣ�
��������Ϸ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M01",1000);
	Move("�}�ݷ���/�}���}", 300, @1500, @0, Axl3, false);
	FadeDelete("�}�ݷ���*", 300, true);


	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma02/020vs0130a00">
�����ǡ�����ɽ��
����ħС̫�ɣ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0140b55">
���ǡ��Ǿ��ǡ���
���ֲ��á�����װ�׾�֪�����ܵ������ġ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0150a00">
�����ǡ�
����������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0160b55">
���ţ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0170a00">
���ط��١�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ڡ�
������ֻ����ɽ��һ��������ѡ�

����˵�п����ǵط��ٵĽ��е�����װ�׻�û�ָ���
���������������ֻ���𶯡�

������ɽ�������ճ�ȥ��Ȼ��ط��ٳû�����ӵ���
�������Ļ��ɲ���çײ�ж�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStA(0,true);

	FadeDelete("�ϱ���", 500, true);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0180b55">
�������¡�
��ȥ�ɣ����á���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0190a00">
��������Դ̫�����������ǡ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0200b55">
����֪������һ�뿪�ǵط��پͻ�Ϯ��������
�������������𡣡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0210a00">
��̫³ç�ˡ�
����ͨ����ô������ս���ߡ�����


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0220b55">
��Ҫ˵³çҲȷʵ³ç���ܻ��а취�ġ�
���Է�����װ�������Ҷ���Ҳ�мƲߡ�
��Ҳ����һ����ս����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0230a00">
���������ˡ�
�����Ǵ���ҪѰ���𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0240b55">
����ô�ᣬ��ô�ᡣ��Ů�ǻ�С���һ���������
�����뵣�ģ����á�������Ϊ�˸��ػ�������
��ս�����������ǲ������ġ���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0250b55">
�����˵Ļ���ʲô���޷��ػ��ˡ�
�������Ǻǡ�Ϸ�Զ��ѣ�ЦЦ���С���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0260a00">
���š�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0270b55">
��ȥ�ɡ�
����սǰ����һ����Ϊ�������á���
���Ľ��к���������������ǿ�ġ���


//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0280b55">
��<RUBY text="������������">��Ҳ�ջ�Ҳ��</RUBY>��������������
���������κ��ˡ�
����Ȼ��ˣ����ã�����������ǿ�İɡ�
�����͹��ˡ���������սʤ����


//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0290b55">
��սʤ�赲��������ǰ�ġ���
��һ�С���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0300a00">
�������ǡ�
����Ϥ����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0310b55">
�����á�
���������аɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0320a00">
��������
�������������ͨ�˲��̶ȵĻ�������


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0330b55">
���ǽ�������ٱ����ðɡ�
������������������������һֱ��æ��������
����Ͼ��δ���й�������


//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0340b55">
����������͵�����˵���������˾ٱ����ÿ�
����ҩ��������ô˵�����Ҽ�����������Ů��
���һ��Ǻ��ӣ�û�����Һȡ�����ѵ�
�Ļ��ᡣ��֪���ã��Ƿ��ܷ��㣿��


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0350a00">
��Ϥ�����ԣ�
���Ǳ㡭����ҹ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á�
//������

	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 1500, "#000000");

	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 250, 100, "slide_01_03_1", true);

	WaitKey(500);

	DrawDelete("�}��ܞ", 250, 100, "slide_01_03_1", true);

	StL(1000, @60, @0,"cg/st/st����_ͨ��_˽��.png");

	OnSE("se����_����_�᤺����01",1000);

	Move("@StL*", 150, @-60, @0, Dxl2, false);
	FadeStL(150,true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma02/020vs0360a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_02.jpg");

	OnSE("se����_������_�������g�仯02",1000);

//������
	StR(900, @60, @0,"cg/st/3d����֩��_���.png");
	Move("@StR*", 150, @-60, @200, Dxl2, false);
	FadeStR(150,true);
	Shake("�}����100", 300, 0, 5, 0, 0, 1000, Dxl2, false);

	Wait(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/ma02/020vs0370a01">
��������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0380a00">
������������״������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/020vs0390a01">
�����ף���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������ԥá�
	OnSE("se����_���å��ԥå�_������01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0103]
������װ�����ȣ�<RUBY text="���ģ����">��۵�֮��</RUBY>
{	OnSE("se����_���å��ԥå�_������02",800);}
����������������<RUBY text="��һ�����">�빸��֮��</RUBY>
{	OnSE("se����_���å��ԥå�_������02",800);}
����������������<RUBY text="���ˣ����">���������֮��</RUBY>
{	OnSE("se����_���å��ԥå�_������02",800);}
�������������ʣ�<RUBY text="���ģ����">��һ�д�����֮��</RUBY>

{	OnSE("se����_���å��ԥå�_������02",800);}
�������������ң������ӡ���޶�����
{	OnSE("se����_���å��ԥå�_������02",800);}
������������Ⱦ�������ӡ�����Խ���
{	OnSE("se����_���å��ԥå�_������02",800);}
������������װ������ʹ��
{	OnSE("se����_���å��ԥå�_������02",800);}
���������ɴ�װ������ʹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/ma02/020vs0400a01">
��Ӧ��ս�������ϰ�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/020vs0410a00">
���˽⣡
����ս����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�ե�", 10000, "#FFFFFF");
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");

	MusicStart("SE02",0,1000,0,1250,null,false);
	Fade("�ե�", 50, 1000, null, true);

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/st����_װ��_˽��a.png");
	FadeStC(0,true);


	Fade("�ե�", 500, 0, null, true);

	Wait(500);

	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("�ե�", 50, 1000, null, true);
	StC(1000, @0,@0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);

	Fade("�ե�", 500, 0, null, true);

//���ѩ`�ķ��x
//�������`�����߉���


	Fade("�ե�", 600, 1000, Axl3, true);

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStC(0,true);

	FadeDelete("�ե�", 2000, true);

	WaitKey(1000);

//���w�Ӥޤ���������`��
//����

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg001_��a_02.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 300, 100, "slide_02_01_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0112]
������������Դ̫���ߡ�
���ҡ���ҹ���

����ҹ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

//���ӵ�ǰ
//��������ݳ�������졢���m����

	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStL(0,true);

	FadeDelete("�}��ܞ", 2000, true);


	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0420b55">
������������


//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0430b55">
�����ˡ�
��������ɡ���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0440b55">
������˵����
��������Ҳ�����𣿡�


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0450b45">
�����˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	OnSE("se����_����_һ�i",600);

	StR(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw�L��_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0460b45">
����ȷʵ�ǻر��ǿɺ޵�С�ӣ��ڸ����
��֮ǰ������ô˵Ҳû��ϵ����
������η��������ɺ��ڣ�  ���Ʋ���
�ˣ���Դ̫����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0470b55">
���ܺá�
�����ڵ������˶ϵ�ʱ���ˡ���


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0480b45">
���Ǹ�����Ҫ˵�Ļ���
���µ������¶�����Ļ��˶�����װģ
����������Ҳ���и��ȡ�Ū����Ҳ�����
���Ƶġ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0490b55">
����ǰ����Ҿ������Ҷ��ǰ�����˵��������
��ǻ�����ʲô��
�����Ѿ������٣����������ν�����ɶ���
��ս�������ǡ�����


//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0500b55">
�������е㳣ʶ���˶�������ô�ɰɡ�
����ô��Ļ����磬Ҳ��ֻ�����˷�Ц���ѡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0510b45">
�������Ҳ�����ϡ�һֱ�������ǵ��������
�������ĵ��־綼����Ϊ���ų����
�������������ǰɱ����ͺá�
�������������ǰ����ɱ��Ҳ�ã���


{	FwC("cg/fw/fw�L��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0520b45">
�������ꡪ����������
��������ҵ���Щ���£����������ֱ������
Ż�������۵õ�ʲô������ʲô�����Ķ��޷���
�㡣��Ϊ��Щ��ֻ��<RUBY text="������">���Ʒ</RUBY>���ѣ���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0530b45">
�������ڷ���˵�ѭ�����ǻ���
�����Ц����Щ�������ǿ�Ц��������


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0540b55">
������������
���Ҿ������Ȼ������������


//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0550b55">
�������ٶ������Ҳ����䡣
������������˵��ֻҪһ�ղ����˶ϣ�����ʲ
ô�¶�����õ���ᡣ��


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0560b45">
������������


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0570b55">
��������Ҹ�һ�¶��������ˡ���
�����Ƕ���Ϊʱ����˵İ�������ƽ�ȵġ���
��Ϊʱ�����������㡣
�������������������˽�����Ը񡣡�


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0580b55">
�������������Ǹ�ɡ�
���汧Ǹ���Ҿ�����


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0590b45">
����������
���µ���񡭡�����Ϊ���������⻰�𣿡�


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0600b55">
�����롣��ֻ����Ϊ���ǳ�Ū��������Ҳ����
һ���˽�ɡ�
�����İɡ���û�д����ͷ�ϵ���Ǹ�����¡�
�һ����һ���������˶ϡ���


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0610b55">
���һ�����˶ϵģ��Ҿ���
�����������ĸ�ծ�������ڴ����㡣��


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0620b45">
��������������˵�������ϼһ
����һ���˾����˽��ң�����˵��������
�µ������Ҫɱ���㣬ɱ����ɽ����
һ�ղ�����һ��һ�ղ���������


//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0630b45">
������һ�ֻ�����ǿ���ʯ���ѡ�
����岢����������������ر��ǡ�����


{	FwC("cg/fw/fw�L��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0640b45">
������һ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҿ�װ��
//���˰�ʽ�o�T��
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d�˰�ʽָ�]��_����_ͨ��.png");
	FadeStR(0,true);
	OnBG(100,"bg020_ɽ�}_02.jpg");
	FadeBG(0,true);
	DeleteStL(0,true);

	Wait(500);
	FadeDelete("�}�ե�", 1000, true);

	Wait(500);
	SetFwC("cg/fw/fw��Դ̫_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0650b55">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	DeleteStR(300,false);
	FadeBG(300,true);
//�����㥭��
	CreateSE("SE01","se���L_����_������01");

	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	MusicStart("SE01",0,1000,0,750,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0145]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0660b45">
�������ţ���������ľ����
����Ȼ��֪������ʲô�����������ֶ���
����ô���ҶԿ�����


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0670b55">
����������������


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0680b55">
�������������𾡶��
�������������Ͼ�а�񡣡�


{	FwC("cg/fw/fw��Դ̫_�Ф�.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0690b55">
������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�����㥭�`��
//����Դ̫������С̫�������Ⱥ\�֣�
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,750,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StL(1000, @0, @0,"cg/st/st��Դ̫_���L_˽��.png");
	FadeStL(0,true);
	Wait(500);
	FadeDelete("�}�ե�", 1000, true);
	Wait(500);




	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 6100, 0, -144, "cg/bg/bg020_ɽ�}�ӵ�_02.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 6200, -35, -350, "cg/st/resize/st��Դ̫_���L_˽��_l.png");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	Move("�}�ݷ���", 0, @0, @-288, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	SetBlur("�}�ݷ���/�}���}", true, 3, 300, 100, false);


	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	Fade("�}����100", 0 1000, null, true);

	OnSE("se���L_����_������02",1000);

	Move("�}�ݷ���", 1000, @0, @438, Dxl2, false);
	Move("�}�ݷ���/�}���}", 1500, @50, @-100, Dxl2, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, true);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0700b45">
��������!?��

{	FwR("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0710b55">
���Ҿ���
����֪������ʲô�𣿡�


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0720b45">
���������С����𣿡�


{	FwR("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0730b55">
����Ҳ��
�������ھ�ӵ���ʱ�򡭡����ػ�ʯ���飬��
ȡ�����е��񱦰ɣ���


{	FwR("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0740b55">
����������Ƭ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ݷ���*", 500, true);


	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0165]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0750b45">
�������ǡ�
����ô˵������Ҳ����������µ�һ�����ﰡ����


//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0760b45">
���ǽ��У���������ζ��޷���Ԧ�����Ը���
ѩ��������ǿ�ϧ����
��Ҫ��֪�������õĻ��͸����ˡ���������
������Ȥ�ɡ���


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0770b55">
������԰��ɣ��Ҿ���
���絥�����߰���㣬����һ��С̫���Ը���
�´����࡭����


{	FwC("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/020vs0780b45">
�������ұ�����С���˰���
���Ը���´���������ҲŶԣ���Դ̫����


{	FwC("cg/fw/fw��Դ̫_�Ф�.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/020vs0790b55">
���ܿ�ͻ�֪���ˡ�
�����ɣ��Ҿ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 1000);

}

..//������ָ��
//�Υե����롡"ma02_021vs.nss"