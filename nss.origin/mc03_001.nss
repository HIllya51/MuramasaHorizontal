//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_001.nss_MAIN
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
	#bg053_���}�Ҥ�ͥ_01=true;
	#bg063_���}ۡ����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_���}��=true;

	$PreGameName = $GameName;

	$GameName = "mc03_002.nss";

}

scene mc03_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_036.nss"

//�����}ۡ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	OnBG(100, "bg053_���}�Ҥ�ͥ_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 3000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����꣬���Ķ��������١�

�������ѹ���
���������꣬�������ú�ͻῪʼ��ѩ��
Ȼ������ȴֱ������Ҳδ��һ����װ�ع��ľ���
�����ټ��ţ���������

��������Ǽ��ס����ִ��
����Ϊ������ɫ�����Ͼ����ڰ�ѩӳ�ġ�


����ۡ�ڵ�ͥԺ��������ƥ�����Ŵ������ϵ�Ļֺ����ƣ�
���ܾ�������һ�ʻ����㾦�����ϡ�


��ѩ�Ƹ����˻��Ĺ�����
��������֮�����������Ϊ��֮��ϫ������

������Ϊ���뵹�ص�������ɢ����Ѫ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͥ���椷������
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("@OnBG*");
	OnBG(100,"bg063_���}ۡ����_01.jpg");
	FadeBG(0,true);
	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��û�н�ѩ�Ķ��죬�����½��÷ǳ�������
�����������Ϸ��������Ϸ������ʶ��ԣ�
�����һ��ʱ�仹��������������¯
�Ͳ��붯����

�����ڼ䣬
��
��
��������Щʲô�ɡ�

���Ⲣ������һ����Ը���ܾ������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���}��_ͨ��b.png");

	#voice_on_���}��=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010010b17">
�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����}��

//����Մ�������ϱ�ʾ�����ʤ��ۤ��������Ǥ��礦�� inc�Ѿ�
//���������Մ�ش𣺤����Ǥ��͡������Ͼ���ҕ����M�ߤޤ��礦��
//��07/08 �̤�����λ�õȤ����������ޤ����� inc�Ѿ�
	StR(1000, @0, @0, "cg/st/st���}��_ͨ��_˽��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw���}��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010020b17">
�����Ƿ����������ţ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010030a00">
�������ֳ��ϰ���
���緹�Ļ����ղ��Ѿ��Թ��ˡ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010040a00">
���Ǹ�������������һ����
����һ��Ҫ�������ʦ����л����


{	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010050b17">
���Ǻǣ�һ��Ϊ�����
���������֪���ӳ��÷ǳ��á�
��ʦ�ļ���Ҳ��������֮�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������������õ�˵����΢Ц��¶����׵����ݡ�
������λ����������ˡ�

����Ȼ���䱻����׷ɱ�����ǵ��Ƿ����ǣ�
������������Կ����ֺ���
����һ����Ϊ�У��ǿ϶��Ǹ��������״򷢵�
�鷳���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc03/0010060a00">
��������������Ĺ�Ʒ��
���˷���Ʒ�����������ӵ���Ʒ����ʤ���ҡ���


{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010070b17">
������Ȼ������⣬���žͽ�����
�ñ����Ƴ��ϰɡ�
����˵���������ˡ���


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010080b17">
���������δ���
��Ī����ȥ����֦���˵ķ����𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010090a00">
���ǣ������д��⡣
���������Ļ�����������ȥ̽��������


{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010100b17">
��������ô����˵���޲���֮����
���������ܷ������Ժ�Ƭ���أ���



{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010110b17">
��������������֦����Ӧ��
��δ�������š���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010120a00">
�����𡭡���˵���ǡ�
�����Ҿ��������ԣ��Ժ���ȥ����


{	FwC("cg/fw/fw���}��_��ζ.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010130b17">
����Ϊ������ǰ����ȴ��Ҫ�����ú�
���ǹ��ⲻȥ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010140a00">
������Ļ���
��ǰ��̽�����ǻ��������鷳��̫�����ˡ�
�ҵ���Ҫлл����
ʱʱ�����Ҹ档��


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010150b17">
����ѽ���������ˣ�
������ô�����ҿɲ��ҵ���������


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010160a00">
���Ҿ���ͥԺɢɢ���ɡ�
���ղųԵ���Щ������θ���в��ʣ�
����Ҳ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���}��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010170b17">
���ǡ���
������һ�ᣬ�����ͦ���ء���


//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010180b17">
������ϰ������𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010190a00">
����������������ˡ�
��ƽʱ����Ե���ô�������ղ�Ҳ����
������Ҫ����ô��ġ���


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010200b17">
���Ǿ�������ʶ�ġ�
��չ����ս����ϰ�õ��ĵ��𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010210a00">
��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010220a00">
��Ҳ��ɡ���


{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010230b17">
����֪��ʱ�����ܵ��˵�Ϯ����
������н�ʳ����ɱ��Ϊ�����ء�
���¿��ٶ���Ȼ�ͻ�ӿ졣��


{	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010240b17">
�����ǣ��������뵣�ġ�
����פ������С֮����ʱ����
�������Χ���ҡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010250a00">
�����ϣ��γ����ԣ���


{	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010260b17">
��̽�ӸղŻر���
��ͨ��������Ҫ����ʨ�Ӻ�����������Ϸ���
��һֻ���϶�����ͨ������


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010270b17">
������ǧ������ɱ������������ͻ�ơ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010280a00">
��������


{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0010290b17">
����Ȼ���ڲ��õĽ�����
��̬���ᷢչ����һ����
���������£��������������ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0010300a00">
���ǡ���


</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���������˲��ݷֱ�ؽ�����Ϊֹ������
�����ҽ�����һ�顣
��û��������һ�죬��פ���ͻ���ͬѩ��һ��
ӿ����

�����Ʊض���˷�չ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"mc03_002.nss"