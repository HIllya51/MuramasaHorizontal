//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_047.nss_MAIN
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
	#ev001_�y�Ǻ��¼�����`����=true;
	#bg047_�������_�b_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_001.nss";

}

scene md02_047.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md02_046.nss"


//���y�ǺŞĶ�
//����¾�țAȾ�����ҡ�


	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm37", 0, 1000, true);

	CreateColorSP("�\Ļ��", 5000, "BLACK");
//	CreateTexture("����", 3000, @0, @0, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateTextureSP("����", 3000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateTextureSP("����2", 3000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	Zoom("����2", 0, 1200, 1000, null, true);
	Fade("����2", 0, 300, null, true);

	DrawEffect("����2", 50, "LowWave ", 0, 100, null);

	SoundPlay("@mbgm37", 0, 1000, true);
	CreateSE("SE01", "se���L_�y�Ǻ�_����AȾ��_L");
	CreateSE("SE02", "se����_����_�ϑ�01");
	MusicStart("SE01", 3000, 500, 0, 1000, null,true);
//����äƤ���äݤ���������ᡢ50%�ٶȤ�������inc�Ѿ�
	MusicStart("SE02", 3000, 300, 0, 500, null,true);

	CreateColorEX("���\Ļ", 4999, "BLACK");

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);

	Wait(1000);
	Fade("���\Ļ", 1000, 300, null, true);


//�����������x�k�򼺤��n�����}�Ȥ����Ԥ醖����
//������г�Ц�ΚZϲ����u��ϲ����Ļ�褤���Ϥ��졷

	CreateTextureEX("�h1", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh01.png");
	CreateTextureEX("�h2", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh02.png");


	Move("�h1", 0, @0, @-80, null, true);
	Move("�h2", 0, @0, @-40, null, true);


	Move("�h1", 600, @0, @-10, Dxl1, false);
	Fade("�h1", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h2", 600, @0, @-10, Dxl1, false);
	Fade("�h2", 600, 1000, null, false);

	WaitKey();

	Fade("�h1", 500, 0, null, false);
	Fade("�h2", 500, 0, null, true);
	Delete("�h*");

//������ҹ�˺����Ƥ�Ȯ���ޤ��ʵ��\�ȹ��Ҥˑ餦��
//���¤����z���H�B������r���ߤθ����޴��˰��餰��
//��ľ©���դ��¤����ޤ줿�{�Ӥώ�ǧ��¹���ʳ����
//�������餮�����ܤ��Ѥ��ӹ���ʰ�ä�̤�ߤĤ֤���

	CreateTextureEX("�h3", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh03.png");
	CreateTextureEX("�h4", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh04.png");
	CreateTextureEX("�h5", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh05.png");
	CreateTextureEX("�h6", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh06.png");


	Move("�h3", 0, @0, @-80, null, true);
	Move("�h4", 0, @0, @-40, null, true);
	Move("�h5", 0, @0, @0, null, true);
	Move("�h6", 0, @0, @+40, null, true);

	Move("�h3", 600, @0, @-10, Dxl1, false);
	Fade("�h3", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h4", 600, @0, @-10, Dxl1, false);
	Fade("�h4", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h5", 600, @0, @-10, Dxl1, false);
	Fade("�h5", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h6", 600, @0, @-10, Dxl1, false);
	Fade("�h6", 600, 1000, null, false);

	WaitKey();

	Fade("�h3", 500, 0, null, false);
	Fade("�h4", 500, 0, null, false);
	Fade("�h5", 500, 0, null, false);
	Fade("�h6", 500, 0, null, true);
	Delete("�h*");


//��������ζ���Ť����ߤ�������擴��Ԏ�ͤ�����
//�����οֲ����𤨤��ߤ萙ħ�΁�����\�T����R��
//�������ˆ������򤱤�ʤ�����Ȑ�ħ�ϳפ�֤���
//���������Ť����礹��ʤ�����Ȑ�ħ�Ϲڤ��Ѥ���
//������ӻ��Ұ���Y����h���X�����ͤ��l���ᤰ�졷
//�����ޤ���Τʤ��i�♑�����ǰ�ˤ���������K��

	CreateTextureEX("�h7", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh07.png");
	CreateTextureEX("�h8", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh08.png");
	CreateTextureEX("�h9", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh09.png");
	CreateTextureEX("�h10", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh10.png");
	CreateTextureEX("�h11", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh11.png");
	CreateTextureEX("�h12", 16000, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh12.png");

//��Ȥ�-80���������飫40���Ĥ���λ�ä��{����inc�Ѿ�
	Move("�h7", 0, @0, @-100, null, true);
	Move("�h8", 0, @0, @-60, null, true);
	Move("�h9", 0, @0, @-20, null, true);
	Move("�h10", 0, @0, @+20, null, true);
	Move("�h11", 0, @0, @+60, null, true);
	Move("�h12", 0, @0, @+100, null, true);


	Move("�h7", 600, @0, @-10, Dxl1, false);
	Fade("�h7", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h8", 600, @0, @-10, Dxl1, false);
	Fade("�h8", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h9", 600, @0, @-10, Dxl1, false);
	Fade("�h9", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h10", 600, @0, @-10, Dxl1, false);
	Fade("�h10", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h11", 600, @0, @-10, Dxl1, false);
	Fade("�h11", 600, 1000, null, false);

	WaitKey(2000);

	Move("�h12", 600, @0, @-10, Dxl1, false);
	Fade("�h12", 600, 1000, null, false);

	WaitKey();

	Fade("�h1", 500, 0, null, false);
	Fade("�h2", 500, 0, null, false);
	Fade("�h3", 500, 0, null, false);
	Fade("�h4", 500, 0, null, true);
	Delete("�h*");

//��ʾ���ʤ��褦�ˤ��Ƥ��� inc�Ѿ�
/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������Ӧ���������ҵĿ��⣬�������ʡ���
�����ڳ�Ц�Ļ�ϲ����������ϲ��֮Ļ�ɡ�

����������֮ҹ��ҰȮŭ�ͣ��¶�������
����ů��Ѩ��ĸ����֮�������߸���ϯ���ޱȰ�����
�����⴩͸����������£�����֮ʨ����ǧͷ¹��
����������ˮ��֮���ѣ�����ͯʰ������`̤��

�������������֮�˰�������С���擴�Ĺ��ɡ�
������������ֲ�֮�˰�����ħ�ļ������Ǻ���֮����
�������������������ʣ�С�����ħ����ճ�Կ�ס�
������������������������С�����ħ���ժ��ñ�ӡ�
��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ�
����񣬶�����ǰ���ּ������������Ǹ���֮���顷

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 2500, 1000, null, true);
	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);
	Delete("����");
	Delete("����2");
	Delete("���\Ļ");

	Wait(2000);

	CreateSE("�i��", "se����_����_�i��02_L");
	MusicStart("�i��", 0, 1000, 0, 1000, null, false);
	WaitKey(2000);


//���Ɖ��E��bg047a_ҹ


	OnBG(100, "bg047_�������_�b_03.jpg");
	FadeBG(0, true);
	FadeDelete("�\Ļ��",1500,true);

	SetVolume("�i��", 1000, 0, null);


	Wait(1000);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/0470010a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm15", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������ء�
���ڶ������ֻ���޶˱�˺�ѣ�ʧȥ���壬
����ɢȥ��

��������˭�ǵĻ���

��������˭�������ⳡ���ѣ�

�����Ǻţ�

���������ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md02/0470020a01">
������������

//��������
<voice name="����" class="��������" src="voice/md02/0470030a01">
���Ҹ�����׷������
������������Ǻŵ���Ϣ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470040a01">
���ұ�����һ������������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470050a01">
��������

//��������
<voice name="����" class="��������" src="voice/md02/0470060a01">
���Բ��𡭡�
�����á���̫���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����֪��ʱ������վ�������Բ���Ǹ��

������������Ϊ�ζ���Ǹ�ء�
���������ⳡ���ѵ�ԭ����

�����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0470070a00">
���ҡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470080a01">
��������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0470090a00">
�������ҵ���ϡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������Է�ֹ�����ѣ�ȴû�ܷ�ֹ��

����������ֹ��
��Ҫ����ɱ�˹�Ļ���

�����ǿ��԰쵽�ġ�
������ȴû��ô����

�����Բű��������!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md02/0470100a00">
����������ɱ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470110a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0470120a00">
��ɱ�ˡ���
���⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå��������ι⡤�F��
//���Ĥ��ȤۤɤΤ��Ȥʤ��ᡢ����Ϥ�����������e���� inc�Ѿ�

	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	OnSE("se�M��_����_�ե�å���Хå�01", 1000);
	
//ev128_�����ι�_g

	CreateTexture("�}����100", 2000, Center, Middle, "cg/ev/ev128_�����ι�_g02.jpg");
	Fade("�ե�å����",300,500,null,true);
	WaitKey(1500);

	Fade("�ե�å����",0,1000,null,true);
	Delete("�}����*");
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md02/0470130a00">
������������

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/md02/0470140a00">
��������������������

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470150a07">
���첻����
���������첻���ġ���

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470160a01">
��!?��

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470170a07">
�����ݡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩����F
//��������M�߷�����

	StCR(900, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	FadeStCR(300,false);


	OnSE("se����_�n��_ܞ��03", 1000);


	DrawDelete("@StR*", 150, 100, "slide_02_01_1", true);


	Wait(1000);

	DeleteStA(300,true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md02/0470180a01">
�������㣡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm04", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��ܥԽ����������������衣
�����������ͻϮ�������������ڵء�

�����۾�ȴû��ϥ�µĴ�����
������ֱֱ���������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470190a07">
����簮�ն��Ⱞ���������ء�
���ͺ��񡭡�����һ������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0470200a00">
������������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470210a07">
�����ɱ���˹������¡�
����Ȼ������������׼�������ˣ�
��ʣ��һ���ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470220a01">
����Ҫ��ʲô!?��

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470230a07">
���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���������С���
���Űװ���˸�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���

	CreateColorEXadd("���ޤ�", 15000, "WHITE");
	CreateColorEXadd("���ޤ���", 1500, "WHITE");
	DrawTransition("���ޤ���", 0, 200, 200, 500, null, "cg/data/circle_01_00_0.png", true);

	OnSE("se����_������_������01", 1000);

	Fade("���ޤ�", 500, 1000, null, true);
	Fade("���ޤ���", 0, 700, null, true);

	Fade("���ޤ�", 1000, 0, null, true);


	Wait(500);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md02/0470240a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

// �ܥå����֤�
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0141]
���ѡ�!?
��Ϊ�λ���ܥԽ���������С�

���ѵ��������ǹ�������õĶ�����
��˵����Ⱦ���ᾧ�ģ��Ǹ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470250a07">
�����������ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470260a01">
����������������ó�!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф����k���


//��ef035


	CreateSE("SE01", "se���L_����_늓Ď��01");
	MusicStart("SE01", 0, 1000, 0, 1000, null, false);

	CreateColorEXadd("���ޤ�", 3000, "WHITE");

	Fade("���ޤ�", 300, 1000, null, true);
	Fade("���ޤ���", 0, 0, null, true);
	Delete("���ޤ���");

	CreateTextureSP("֩��Ύz", 2000, @0, @0, "cg/ef/ef035_֩��W���@.jpg");
	CreatePlainSP("�}��д", 2000);
	Fade("�}��д", 0, 500, null, true);
	DrawDelete("���ޤ�", 100, 100, "beam_03_00_1", true);
	SetBlur("�}��д", 8, true, 400, 200);

	Fade("�}��д", 0, 500, Dxl1, true);
	Zoom("�}��д", 100, 1100, 1100, Dxl2, false);
	Fade("�}��д", 500, 800, null, true);

	Zoom("�}��д", 1000, 1000, 1000, Dxl1, false);
	Fade("�}��д", 1000, 0, null, true);

	SetFwC("cg/fw/fw�衩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470270a07">
�������ˡ�
���������ֺ�ʱ������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//�����Щ`�󡣤�ꏊ�����Ǵ���ɢ�餹��

	CreateSE("SE01", "se����_������_�衩���n�Ĳ�");
	Delete("�}��д");

	MusicStart("SE01", 0, 1000, 0, 1000, null,false);
	EffectZoomDXadd(10000, 1000, 200, "#FFFFFF", "cg/ef/ef034_����AȾ.jpg", false);
	DrawDelete("֩��Ύz", 300, 100, "circle_01_00_1", true);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE02", "se����_��x_�k��03");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="��������" src="voice/md02/0470280a01">
��ʲ����!?��

{	SetVolume("SE*", 1000, 0, null);
	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470290a07">
��û�вٿ��ߵĻ�����������
�����ԡ�������ռ�Ϸ硣��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470300a01">
���㣬�ѵ�˵����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470310a01">
��<RUBY text="������">��ô��</RUBY>����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470320a07">
����ô����
����磿��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470330a07">
������׼�����ϣ����𣿡�

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0470340a00">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470350a01">
��������������
��<RUBY text="������">������</RUBY>����

//��������
<voice name="����" class="��������" src="voice/md02/0470360a01">
�����ҡ�������
��װ���ϰ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������ס�ж��Ľ��к������ҡ�

��û��
��������ȥ��Σ�ա�

��װ�׽��У������׵ı����·����ѵ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��װ�ץ����������������܇�ν���Ƭ�o��

	StL(1000, @0, @0, "cg/st/st����_װ��_˽��a1.png");
	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300, false);


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md02/0470370a00">
��������

{	FadeStR(300, false);
	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470380a07">
����һ���ܾȴն��������ķ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ��������¡������܇�ν���Ƭ�o��

	CreatePlainSP("�}��д", 5000);
	StL(1000, @0, @0, "cg/st/st����_װ��_˽��b1.png");

	Shake("@StL*", 300, 5, 0, 0, 0, 1000, Dxl2, false);
	FadeStL(0, false);
	Wait(12);
	FadeDelete("�}��д", 300, false);

//����������

	WaitKey(500);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md02/0470390a00">
��ʲ����

//��������
<voice name="����" class="����" src="voice/md02/0470400a00">
��ʲô��������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470410a07">
���������������
��������ħ������ɱ�˷�����ϣ���ն���
�ܻ��Ų����𣿡�

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470420a07">
�����Ų���һ���¾ͻ�˥��������
�����ǣ�����֮ǰ�о����ķ���������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0470430a00">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470440a01">
�����а���
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470450a01">
��������ʲô���ɡ���
�������Զ�������Ļꡪ����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470460a07">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ʤ���ʹ�ä���

	CreateSE("SE01", "se����_��x_��Ӱ02");
	MusicStart("SE01", 0, 1000, 0, 1000, null,false);

	CreatePlainSP("�}��д", 100);
	Fade("�}��д", 0, 1000, null, true);

	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	DeleteStA(0,false);
	Fade("�ե�å����",300,0,null,true);
	Shake("�}��д", 500, 0, 30, 0, 0, 300, null, true);
	Delete("�}��д");
	Delete("�ե�å����");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/md02/0470470a01">
������!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0470480a00">
����������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470490a07">
��<RUBY text="����">���</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���衩������˥���ɩ`

	CreateColorSP("�}ɫ��", 2000, "WHITE");
	CreateStencil("�ޥ�����",1000,0,0,128,"cg/bg/bg047_�������_�a_03.jpg",false);
	SetAlias("�ޥ�����","�ޥ�����");
	CreateColor("�ޥ�����/logoM001", 400, 0, 0, 1024, 576, "WHITE");
	SetAlias("�ޥ�����/logoM001","�ޥ�����/logoM001");
	Fade("�ޥ�����/logoM001", 1000, 800, Dxl1, false);
	SetShade("�ޥ�����", HEAVY);
	Fade("�}ɫ��", 100, 0, null, true);
	SetVolume("@mbgm*", 1000, 0, null);

	StC(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	FadeStC(1000,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����һ˲�䣬һ�������Ա���ȥ��
�����š�����������֮�ס�

��Ψ�����������������������Ͱ���졣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470500a07">
����ȴն��⡣
���������Ǹ�������ٵ����ġ���

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470510a07">
���԰ɣ���

{	FwR("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0470520a00">
����������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�����ǣ�

�����ǡ���

������������ȷ�޷��񶨣������ҵġ�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��͎�

	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ef/ef034_����AȾ.jpg", false);
	FadeDelete("�ޥ�����/logoM001", 1000,true);

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/md02/0470530a01">
������!!��

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470540a07">
�������������ˡ�
������Ļ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//�����夤�`�󡣹⤬
//���AȾ���ե�����

	CreateColorEXadd("���ޤ�", 15000, "WHITE");

	OnSE("se����_냇��_���Q01", 1000);
	Fade("���ޤ�", 500, 700, null, true);
	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ef/ef034_����AȾ.jpg", false);
	CreateTextureEX("�AȾ", 14000, @0, @0, "cg/ef/ef034_����AȾ.jpg");
	Fade("�AȾ", 1000, 1000, null, false);


	DeleteStA(500,true);
	Fade("���ޤ�", 1000, 0, null, true);

	CreateSE("SE01", "se���L_�y�Ǻ�_����AȾ��_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/md02/0470550a00">
������Ŷ������

//��������
<voice name="����" class="����" src="voice/md02/0470560a00">
��Ŷ������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0470570a01">
������!!��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470580a07">
���ѻ����˵������̹�ʡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470590a07">
�����ɡ������!!��

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0470600a07">
�����Ը����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ѩ`�����ˏ�����

	CreateColorEXadd("���ޤ�", 15000, "WHITE");

	OnSE("se����_������_���������k", 1000);
	Fade("���ޤ�", 500, 1000, null, true);

	DeleteStA(0,true);
	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ef/ef034_����AȾ.jpg", false);
	Fade("���ޤ�", 1000, 0, null, true);


	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/md02/0470610a00">
��ŶŶŶŶŶŶŶŶŶŶŶŶŶ������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��Ը����

���ҵġ���Ը����

�����ֶ���������������������Ȼ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="��������" src="voice/md02/0470620a01">
��������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`�󡣥ۥ磻�ȥ����ȡ�
//��ϴ×���ˣ��äݤ���
	SetBlur("�AȾ", true, 3, 500, 100, false);
	CreateColorEXadd("�AȾ����", 15000, "WHITE");

	OnSE("se����_냇��_������", 1000);
	OnSE("se����_������_������01", 1000);
	Zoom("�AȾ", 3000, 2000, 2000, Axl1, false);

	Wait(1500);
	Fade("�AȾ����", 0, 1000, null, true);
	DrawTransition("�AȾ����", 1500, 0, 1000, 500, null, "cg/data/zoom_01_00_0.png", true);
	Delete("@OnBG*");
	Delete("�AȾ");

//��Τ���� inc�Ѿ�
	CreateColorSP("�·�", 50, "WHITE");
	FadeDelete("�AȾ����",3000,true);
	SetVolume("SE*", 3000, 0, null);

	Wait(4000);

//���¥ѩ`����
//�����åȥ���ݤ���
	ClearWaitAll(3000, 1000);

	PrintBG("�ϱ���", 10000);
	cut_in_logo(10010,3);

	ClearWaitAll(3000, 2000);

/*
//��������ݳ�����ע�����˱ܡ�
	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("�ϱ���");

	CreateColorSP("�}ɫ�\", 1, "#000000");

	FadeDelete("�ϱ���",3000,true);

	Wait(1000);

	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("����80", 30, Center, Middle, "cg/sys/title/�����ȥ뱳��.png");
	Move("����80", 0, 20, 0, null, false);
	Move("����80", 200, -20, 0, null, false);

	OnSE("se���L_����_��ꪏ���01", 1000);
	CreateTextureEX("����81", 32, Center, Middle, "cg/sys/title/���񥿥��ȥ�logo.png");
	Fade("����81", 300, 1000, null, false);
	
	CreateTextureSPadd("�}����500", 31, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	Rotate("�}����500", 0, 180, 0, 180, null, true);
	Move("����81", 0, 600, 40, null, false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//������������������������������������������������

}

..//������ָ��
//�Υե����롡"md03_001.nss"