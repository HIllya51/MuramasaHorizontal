//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_016.nss_MAIN
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
	#bg103_���ӘS������ٛg����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_017.nss";

}

scene md04_016.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_015.nss"


//���ٛg����


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg103_���ӘS������ٛg����_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);

	CreateSE("���L��", "se����_����_������L��02_L");
	MusicStart("���L��", 1500, 1000, 0, 1000, null,true);

	CreateTextureSP("�}����100", 100, Center, -200, "cg/bg/resize/bg103_���ӘS������ٛg����_01l.jpg");
	Delete("�ϱ���");

	Move("�}����100", 3000, @50, @0, null, false);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");
	Wait(1500);
	Fade("�}����100", 1000, 0, null, true);
	Delete("�}����100");

	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStR(500, true);

	SetVolume("���L��", 3000, 400, null);


	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160010a07">
��������
�����������ȫ����Ӱ�ˣ�<RUBY text="�ѣ�����󡡣�����">Ů����ʿ��</RUBY>����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160020a07">
�����Ҳ��ô���ðɣ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0160030a00">
����ȷ��
�����ڵ��ҵĳɹ���ѷɫ��
��פ����ҹ���Ϯ������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160040a07">
�����ң�������;���ƴ����ս�����Ǳ�������
�Է��ǿ�˵��������������������
������������𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160050a07">
��������һ�����Ǻ�����������

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0160060a00">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������һ����һ�ա�
���ڹ����ѵ�һ��������֮ǰ�����뽫�������ֳ��ػ�
���ס�

�����ǵ�����ʵ���Ĳ�࣬������ʵ�������ޱȡ�
�����ǣ���Ŀǰս�������������ʱ���������ؼ򵥡�

���������죬�ù���ͷ�����ʶ������������޵Ļ���
��פ����ֻ�ܼ��������������ˡ�
������������ֶ��򡪡���������ϣ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������
//��������
	MusicStart("���L��", 1000, 500, 0, 1000, null,true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160070a07">
��������
�����˵�ǰ�ߺ��ˣ���

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0160080a00">
����Ϊʿ�����Ժܵ��䡣
���ǲ���Ҫ�����������Ĳ��Ӱ�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160090a07">
�������úÿ찡��
�������Է���������ǡ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0160100a00">
������Ӧ�ó����ڰ��˸����ߣ���ɲ����ɡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160110a07">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԩ`�����������ԩ`���`�Υ����å���줿��
	DeleteStA(300,true);

	CreateSE("SE02", "se�ճ�_�Cе_���ԩ`���`�����å�ON");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	Wait(500);

	SetVolume("���L��*", 3000, 1, null);

	SetNwC("cg/fw/nw����������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160120e072">
���ȿȿȡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE02", 1000, 0, null);

//���ԩ`��

	OnSE("se�ճ�_�Cе_PC�ꥻ�å���", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160130e072">
�����������޵���λ����

//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160140e072">
�������޵���λ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������ƽ��������ǹ���ص���ս���ϵģ��ǽ�פ��
�������Ĺ㲥����
�������������Ǵ���ˣ�ȴ˵��һ�������Ĵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160150a07">
�����������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0160160a00">
���Է�����Ȱ���𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160170a07">
���������װ���
������ʱ�����԰ɣ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160180a07">
�������Ǿ���ͷ�õ�ʱ��������һ�����

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0160190a00">
��ͬ�С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����������������ݲ������ϡ�
��Ȱ���Ļ�����ܥԽ�����Ϸ�����

�����ǣ�û��ʿ���Դ������ԵĶ�ҡ��
����Ц���ǣ���������߾������ռ��롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160200e072">
�������޵���λ��
�����������Ͷ������

//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160210e072">
�����ǻ���ˡ���ǣ�
�����Ὣ���ǵ���ս������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160220a07">
��������л��л�ء���

{	NwC("cg/fw/nw����������.png");}
//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160230e072">
����Ͷ���ɣ�
�������޵���λ����

//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160240e072">
����ʹ����ս��������Ҳֻ���䡣
����Ͷ��ֻ����·һ������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160250a07">
�����𡭡���

{	NwC("cg/fw/nw����������.png");}
//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160260e072">
�����ǻ�Ӯ��
���źӳ����ڽ񳿱������������С���

//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160270e072">
�����ǲ�����Ԯ����
������Ӯ���˵ġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå��������ƥ�������
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureEX("�}����100", 100, Center, -200, "cg/bg/resize/bg103_���ӘS������ٛg����_01l.jpg");
	Rotate("�}����100", 0, @0, @180, @0, null,true);

	WaitKey(1500);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md04/0160280a00">
����������˵ʲô��������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160290a07">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}����100", 60000, @-250, @0, null, false);
	Fade("�}����100", 1000, 1000, null, false);

	Wait(700);

	SoundPlay("@mbgm08", 0, 1000, false);

	SetNwC("cg/fw/nw����������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0105]
//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160300e072">
���źӳ��Ѿ����䡣��

//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160310e072">
���S���ľ����ǵ���������ġ�
�������ڹźӵ��Ѿ���������ǹ����ġ���

//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160320e072">
�����ǲ�����Ԯ���ˡ���

//������㣯������桿
<voice name="����㣯�������" class="������Ů��" src="voice/md04/0160330e072">
��Ͷ���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ�ɤ衣�ӓe�Τ���᤭
	CreateSE("SE03", "se����_����_����᤭01_L");
	MusicStart("SE03", 2000, 1000, 0, 1000, null,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md04/0160340a00">
�����á�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160350a07">
���ɶ�
��ι����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����100", 300, true);

//����У
	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	StL(1000, @0, @0, "cg/st/st�����_��У_ͨ��_�Ʒ�.png");
	FadeStL(300, false);
	FadeStR(300, true);


	SetNwC("cg/fw/nw�a����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0160360e247">
���ǣ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160370a07">
������Ӵ��
����Ҫͨ�ţ�ȥ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160380a07">
���ź�δ�ݣ���Ԯ���̾͵���
���𱻵��˵ļ��鱨��ҡ����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160390a07">
���������֪ͨȫ��!!��

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0160400e247">
���˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Уȥ��
	OnSE("se����_����_�ߤ�01_L", 1000);
	DeleteStL(300,false);

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160410a07">
������������

{	SetVolume("@OnSE*", 1000, 0, null);
	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0160420a00">
��������

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0160430a00">
�����������ʵ���������ô���ģ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����ȷ����Χû�˺��ڲ������ߵ����ʵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md04/0160440a00">
�������������ǽ�פ��������鱨�𣿣�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160450a07">
���������죬�һ����ľ���̫���ˡ�
�������ҵ��ж�Ӧ�ú͸��һ���ɣ�

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160460a07">
�������פ���������ˣ���ҹ�����źӵĻ���
�񳿹���Ҳ����֣�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0160470a00">
���������������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160480a07">
���š�
���źӰ˳ɡ�����������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���ź�ʧ�ݡ�
��
������ζ�����ԺS������Ԯ֮·����ϡ�

������˵�������ֳǱ���ȫ��������<k>
����ζ�������޵İܱ�������ǰ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md04/0160490a00">
������������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160500a07">
���Ҳ����������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0160510a07">
���ҲŲ������������ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��������÷·�Ҫ��ɱ���˰�ĺ�������ŭ��ǰ����
��Ȱ���������Ѿ��������ˡ�

������쳹��յ���˻������
����ܵ����˸������ƵĹ��Ǿ���Ϊŭ�Σ���
��ӿ�������֡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_017.nss"